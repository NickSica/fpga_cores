typedef class nps_ivca;

//arbiter to get Least recently used requestor
class lru_arb;
int VERBOSITY_EN;
int outport_num;
int num_requestors; //will work only for upto 32 requestors
int requestors;
int prev_winners[$];

int PORT_MAP [`NOC_NPS_NUM_PORT];
int PORT_UNMAP [`NOC_NPS_NUM_PORT-1];

//logic [num_requestors*(num_requestors-1)/2 : 1]	 aom;
`define NUMREQ 24
bit [`NUMREQ*(`NUMREQ-1)/2 : 1]	 aom;

function new(int port_num, int num, int port_map [`NOC_NPS_NUM_PORT], int port_unmap [`NOC_NPS_NUM_PORT-1], int verbosity_en);
  outport_num = port_num;
  num_requestors = num;
  PORT_MAP = port_map;
  PORT_UNMAP = port_unmap;
  VERBOSITY_EN = verbosity_en;
  reset();
endfunction

function reset();
  requestors = 0; aom = 0;
  prev_winners = {};
  for(int i=0;i < num_requestors;i++) prev_winners.push_back(i); //at reset all winners have equal pri
endfunction

function int arb();
  for(int i=0;i < prev_winners.size(); i++) begin
    int lru_req = prev_winners[i];
    if(requestors[lru_req]) begin
      prev_winners.delete(i);
      prev_winners.push_back(lru_req);
      `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : lru_arb winner =%0h",outport_num,lru_req),DBG)
     return lru_req;
    end  
  end  
endfunction

function int arbitration_aom();
  bit match_aom;
  int match_aom_vec;
  int insert_index, insert_index_mapped;
  int requestors_mapped; 
  match_aom = 1'b0;
  match_aom_vec = 32'b0;
  for(int i=0; i< `NOC_NPS_NUM_PORT;i++) begin
    if(outport_num != i) begin
      requestors_mapped[PORT_MAP[i]*`NOC_NPS_NUM_VC+:`NOC_NPS_NUM_VC] = requestors[i*`NOC_NPS_NUM_VC+:`NOC_NPS_NUM_VC];
    end
  end
  for (int unsigned b=0; (b<`NUMREQ) && !match_aom; b++) begin
    match_aom_vec[b] = requestors_mapped[b];
    for (int unsigned a=0; a<`NUMREQ; a++) begin
      if (b>a) begin
        match_aom_vec[b] &= (~requestors_mapped[a] | ~aom[((`NUMREQ-1)+(`NUMREQ-a))*a/2+(b-a)]);
      end
      else if (b<a) begin
        match_aom_vec[b] &= (~requestors_mapped[a] | aom[((`NUMREQ-1)+(`NUMREQ-b))*b/2+(a-b)]);
      end
    end
    match_aom = match_aom_vec[b];
    insert_index_mapped = b;
//    $display("match_aom_vec=%0h match_aom_vec[b]=%0h match_aom=%0h b=%0h",match_aom_vec,match_aom_vec[b],match_aom,b);
  end
  if(!match_aom) $fatal(1,"Did not get any winner from ipa aom requestors=%0h requestors_mapped=%0h",requestors,requestors_mapped);
  insert_index = PORT_UNMAP[insert_index_mapped/`NOC_NPS_NUM_VC]*`NOC_NPS_NUM_VC + insert_index_mapped%`NOC_NPS_NUM_VC;
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : lru_arb winner = %0h : AOM_index = %0h insert_index_mapped=%0h",outport_num,match_aom_vec,insert_index,insert_index_mapped),DBG)
  if(!requestors[insert_index]) $fatal(1,"doesnt have a valid requestor at insert_index=%0h  requestors=%0h",insert_index,requestors);
  return insert_index;
endfunction

function void index_aom(int insert_index);
  int unsigned x, y;
  int insert_index_mapped = PORT_MAP[insert_index/`NOC_NPS_NUM_VC]*`NOC_NPS_NUM_VC+ insert_index%`NOC_NPS_NUM_VC;
  if(insert_index_mapped != -1) begin
      for (y=0; y<(`NUMREQ-1); y++) begin
	 for (x=1; x<`NUMREQ; x++) begin
	    if ((y<insert_index_mapped) && (x==insert_index_mapped))
	      aom[((`NUMREQ-1)+(`NUMREQ-y))*y/2+(x-y)] = 1'b1;
	    else if ((y==insert_index_mapped) && (x>insert_index_mapped))
	      aom[((`NUMREQ-1)+(`NUMREQ-y))*y/2+(x-y)] = 1'b0;
	 end
      end
      `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : insert_index=%0h insert_index_mapped=%0h AOM is =%0h",outport_num,insert_index,insert_index_mapped,aom),DBG)
  end
endfunction


function set_requestors(int req);
  requestors = req;
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : lru_arb setting requestors =%0h",outport_num,req),DBG)
endfunction

function clear_requestors();
  requestors = 0;
endfunction
endclass

/////////////////////////////////////////////////////////////////////////////
//This block will get num_port*num_vc number of requestors and needs to choose
//one flit to send on o/p port
/////////////////////////////////////////////////////////////////////////////
class nps_ipa;
`define MAX_REQUESTORS  `NOC_NPS_NUM_PORT * `NOC_NPS_NUM_VC
int VERBOSITY_EN;
nps_reg_class p_nps_reg;

lru_arb u_lru_arb;
nps_ivca p_nps_ivca[`NOC_NPS_NUM_PORT];

int outport_num;
int reg_token[`MAX_REQUESTORS];

int req; //will work only upto 32 requestors
int req_pri;
int block;
int sop;
int credit[`NOC_NPS_NUM_VC];
int tokens[`MAX_REQUESTORS];

int arb_winner, arb_winner_2r;
bit arb_winner_valid, arb_winner_valid_2r;

bit [`NOC_NPS_NUM_VC -1 : 0] winner_npp_valid;
bit [`NOC_NPP_WIDTH -1 : 0] winner_npp_flit;

function new (nps_reg_class nps_reg, int verbosity_en, int port_num, int port_map [`NOC_NPS_NUM_PORT], int port_unmap [`NOC_NPS_NUM_PORT-1]);
  p_nps_reg = nps_reg;
  VERBOSITY_EN = verbosity_en;
  outport_num = port_num;
  u_lru_arb = new(port_num,`MAX_REQUESTORS, port_map, port_unmap, verbosity_en);
  reset();
endfunction

function update_registers();
  for(int p=0;p<`NOC_NPS_NUM_PORT;p++) begin
    for(int vc=0;vc<`NOC_NPS_NUM_VC;vc++) begin
      reg_token[p*`NOC_NPS_NUM_VC + vc] = p_nps_reg.reg_vca_token[p][outport_num][vc];
    end  
  end  
endfunction

function set_req(int inport_num, int vc, int pri);
  req[inport_num*`NOC_NPS_NUM_VC + vc] = 1;
  req_pri[inport_num*`NOC_NPS_NUM_VC + vc] = pri;
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : setting req for inport_num=%0h vc=%0h pri=%0h",outport_num,inport_num,vc,pri),DBG)
endfunction

function arb();
  int has_req_no_block_has_credits, valid_req, valid_req0, valid_req_pri, has_req_no_token, has_req_has_token, winner, winner_port, winner_vc, token_reload;
//req is valid if its has (>=0 tokens OR its not the start of packet) && ~blocked && credits>0
  if(req) begin
    for(int i=0;i<`MAX_REQUESTORS;i++) begin
       if(req[i])`PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : inport=%0h vc=%0h req_pri=%0h block=%0h credit=%0h tokens=%0h sop=%0h",outport_num,(i/`NOC_NPS_NUM_VC),(i%`NOC_NPS_NUM_VC),req_pri[i],block[i],credit[i%`NOC_NPS_NUM_VC],tokens[i],sop[i]),DBG)
        has_req_no_block_has_credits[i] = req[i] && ~block[i] && (credit[i%`NOC_NPS_NUM_VC] > 0);
        has_req_no_token[i] = has_req_no_block_has_credits[i] && (tokens[i] <= 0);
        has_req_has_token[i] = has_req_no_block_has_credits[i] && (tokens[i] > 0);
        valid_req[i]     =  has_req_no_block_has_credits[i] && ((tokens[i] >=0) || (~sop[i])) ;
//        valid_req_pri[i] =  valid_req[i] && req_pri[i]; //pavanas: in rtl there is small diff in token==0 handling btw pri and normal req
        valid_req_pri[i] =   has_req_no_block_has_credits[i] && ((tokens[i] >0) || (~sop[i])) && req_pri[i];
        //has_req_no_token[i] = has_req_no_block_has_credits[i] && (tokens[i] == 0);
       if(req[i])`PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : inport=%0h vc=%0h has_req_no_block_has_credits=%0h  valid_req=%0h valid_req_pri=%0h has_req_no_token=%0h has_req_has_token=%0h",outport_num,(i/`NOC_NPS_NUM_VC),(i%`NOC_NPS_NUM_VC),has_req_no_block_has_credits[i],valid_req[i],valid_req_pri[i],has_req_no_token[i],has_req_has_token[i]),DBG)
    end
//    `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : has_req_no_block_has_credits=%0h",outport_num,has_req_no_block_has_credits),DBG)
//    `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : valid_req=%0h valid_req_pri=%0h",outport_num,valid_req,valid_req_pri),DBG)
  end
  token_reload = (has_req_has_token == 0) && (has_req_no_token != 0);
  if(valid_req != 0) begin
    if(valid_req_pri == 0) u_lru_arb.set_requestors(valid_req); else u_lru_arb.set_requestors(valid_req_pri);
//    winner = u_lru_arb.arb();
//    aom = u_lru_arb.index_aom();
    winner = u_lru_arb.arbitration_aom(); 
    if (VERBOSITY_EN) $display("aom winner=%0h",winner);
    arb_winner_valid = 1; arb_winner = winner;
//    u_lru_arb.index_aom(winner);

    winner_port = winner/`NOC_NPS_NUM_VC; winner_vc = winner%`NOC_NPS_NUM_VC;
    `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : winner_port =%0h winner_vc=%0h",outport_num,winner_port,winner_vc),DBG)
    winner_npp_flit = p_nps_ivca[winner_port].get_flit(winner_vc);
    winner_npp_valid =  convert_vc_num_to_valid(winner_vc);
  
    //if(tokens[winner] > 0) tokens[winner]--;
    tokens[winner]--;
    if(credit[winner_vc] > 0) credit[winner_vc]--; else $fatal(1, "%m :: Sending a flit with no credits on vc %0h",winner_vc);
    //decrement tokens and check for token_reload
//    block = 0; sop = 0;
    if(~winner_npp_flit[`NOC_NPP_LAST]) begin
      sop[winner] = 0;
      for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
        if(i != winner_port) block[i*`NOC_NPS_NUM_VC + winner_vc] = 1;
      end
    end  
    else begin
      sop[winner] = 1;
      for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
        block[i*`NOC_NPS_NUM_VC + winner_vc] = 0; //unblock all ports for the winner vc
      end
    end
    p_nps_ivca[winner_port].grant(winner_vc);
    u_lru_arb.clear_requestors(); req=0;
  end
  else begin //no valid req to win
    winner_npp_flit = 0;
    winner_npp_valid =  0;
  end  
    if(token_reload) begin
      `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : reloading tokens",outport_num),DBG)
      //for(int i=0;i<`MAX_REQUESTORS;i++) begin
      //if((i/`NOC_NPS_NUM_VC) != outport_num) begin //(i/`NOC_NPS_NUM_VC) = port
        //if(tokens[i] < 0) tokens[i] = reg_token[i] -1; else tokens[i] = reg_token[i];
     //`PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : reloading tokens. port=%0h vc=%0h tokens=%0h",outport_num,i/`NOC_NPS_NUM_VC, i%`NOC_NPS_NUM_VC,tokens[i]),DBG)
      for(int p=0;p<`NOC_NPS_NUM_PORT;p++) begin
       if(p != outport_num) begin //(i/`NOC_NPS_NUM_VC) = port
        for(int vc=0;vc<`NOC_NPS_NUM_VC;vc++) begin
          if(tokens[p*`NOC_NPS_NUM_VC + vc] < 0) tokens[p*`NOC_NPS_NUM_VC + vc] = p_nps_reg.reg_vca_token[p][outport_num][vc] -1;
	  else tokens[p*`NOC_NPS_NUM_VC + vc] = p_nps_reg.reg_vca_token[p][outport_num][vc];
          `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : reloading tokens. port=%0h vc=%0h tokens=%0h",outport_num,p, vc,tokens[p*`NOC_NPS_NUM_VC + vc]),DBG)
        end
       end
      end
    end  
  if(winner_npp_valid)`PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : winner_npp_valid = %0h winner_npp_flit=%44h",outport_num,winner_npp_valid,winner_npp_flit),DBG)
endfunction

function void reset();
  req = 0; req_pri = 0; block = 0; for(int i=0;i<`MAX_REQUESTORS;i++) sop = 1;
  arb_winner_valid = 0; arb_winner = -1;
  arb_winner_valid_2r = 0; arb_winner_2r = -1;
  for(int i=0; i< `NOC_NPS_NUM_VC; i++) begin credit[i] = 0; end
  for(int i=0; i< `MAX_REQUESTORS; i++) begin tokens[i] = 1; reg_token[i] = 0; end
  u_lru_arb.reset();
  update_registers();
endfunction
  
function update();
  if(arb_winner_valid_2r) begin u_lru_arb.index_aom(arb_winner_2r); arb_winner_valid_2r = 0; end 
  if(arb_winner_valid) begin arb_winner_2r = arb_winner; arb_winner_valid_2r = 1; arb_winner_valid = 0; end 
  arb();
endfunction

function void receive_credit(bit [`NOC_NPS_NUM_VC -1:0] valid);
  for(int i=0;i<`NOC_NPS_NUM_VC;i++) begin
    if(valid[i]) begin
      credit[i]++;
      `PRINT_MODEL(VERBOSITY_EN,$sformatf("ipa outport_num = %0h : received credit on vc=%0h available credits=%0h",outport_num,i,credit[i]),DBG)
    end 
  end  
endfunction

function bit [`NOC_NPS_NUM_VC-1:0] convert_vc_num_to_valid(input int vc_num);
  case(vc_num)
    0 : return 8'b0000_0001;
    1 : return 8'b0000_0010;
    2 : return 8'b0000_0100;
    3 : return 8'b0000_1000;
    4 : return 8'b0001_0000;
    5 : return 8'b0010_0000;
    6 : return 8'b0100_0000;
    7 : return 8'b1000_0000;
    default : begin  $error("%m ::: at time %0t ::: convert_vc_num_to_valid: ERROR",$time); $finish; end
  endcase  
endfunction

function void end_of_test();
endfunction

endclass
