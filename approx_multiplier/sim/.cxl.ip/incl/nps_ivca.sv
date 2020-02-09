typedef class nps_ipa;

class nps_ivca;

int VERBOSITY_EN;
nps_reg_class p_nps_reg;
nps_ipa p_nps_ipa[`NOC_NPS_NUM_PORT];

bit wr_header_flit = 1; //for displaying flit info

int inport_num;
typedef bit [`NOC_NPP_WIDTH +32 -1:0] single_VC_fifo[$]; //single fifo; width is npp_flit_width = 32(to store dest)
single_VC_fifo VC_fifo[`NOC_NPS_NUM_VC];
int VC_FIFO_DEPTH[`NOC_NPS_NUM_VC];
int credit[`NOC_NPS_NUM_VC];
int ipa_grant;

int input_valid;
bit [`NOC_NPP_WIDTH-1:0] input_flit;
int input_flit_vc_num, input_flit_dest, input_flit_valid_for_arb;
int VC_fifo_empty_1f, VC_fifo_empty_2f;

function new (nps_reg_class nps_reg, int verbosity_en, int port_num, int vc_fifo_depth[`NOC_NPS_NUM_VC]);
  p_nps_reg = nps_reg;
  VERBOSITY_EN = verbosity_en;
  inport_num = port_num;
  VC_FIFO_DEPTH = vc_fifo_depth;
  reset();
endfunction

function update_registers();
endfunction

function void reset();
  for(int i=0;i<`NOC_NPS_NUM_VC;i++) begin
    VC_fifo[i] = {};
    credit[i] = VC_FIFO_DEPTH[i];
  end  
endfunction

function void copy_input_flit(input bit [`NOC_NPS_NUM_VC-1:0] flit_valid_in, bit [`NOC_NPP_WIDTH-1:0] flit_in);
  input_valid = flit_valid_in;
  input_flit = flit_in;
  input_flit_vc_num = get_vc_num(flit_valid_in);
  input_flit_dest = determine_dest_port_from_routing_table(inport_num,flit_in,input_flit_vc_num);
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("received for inport=%0h input_flit_valid=%h input_flit=%44h input_flit_dest=%0h vc_fifo_size=%0h",inport_num,flit_valid_in,flit_in,input_flit_dest,VC_fifo[input_flit_vc_num].size),DBG)
  if(VC_fifo[input_flit_vc_num].size() == VC_FIFO_DEPTH[input_flit_vc_num])begin $error("%m:::ERROR::: VC fifos are full(%0h) for inport=%0d vc=%0d but received flit on inport. Please recheck the credit mechanism in switch",VC_FIFO_DEPTH[input_flit_vc_num],inport_num,input_flit_vc_num); $finish; end
//pavanas: cannot use hack as empty is flopped for a cycle in RTL.
//  //Hack for bfm:
//  //input flit is valid for arb only if no flit of same vc is present in vc fifo
//  // storing the input_flit in the vc_fifo. If grant is received for the input flit, it will be removed from the fifo, else it will remain in the fifo
//  VC_fifo[input_flit_vc_num].push_back({input_flit_dest,input_flit});
  if((VC_fifo[input_flit_vc_num].size() == 0) && VC_fifo_empty_2f[input_flit_vc_num]) input_flit_valid_for_arb = 1;
endfunction

function send_req_to_ipa();
  //check if any of the VC fifo are non-empty and send req to ipa
  for(int vc=0; vc< `NOC_NPS_NUM_VC;vc++) begin
    if(VC_fifo[vc].size() > 0) begin
      int dest_port = VC_fifo[vc][0][`NOC_NPP_WIDTH+:32];
      int pri = VC_fifo[vc][0][`NOC_NPP_PRI];
      p_nps_ipa[dest_port].set_req(inport_num,vc,pri);
    end  
  end 
  if(input_flit_valid_for_arb) begin
    p_nps_ipa[input_flit_dest].set_req(inport_num,input_flit_vc_num,input_flit[`NOC_NPP_PRI]);
    input_flit_valid_for_arb = 0;
  end  
  //Hack for bfm:
  if(input_valid != 0) begin
    VC_fifo[input_flit_vc_num].push_back({input_flit_dest,input_flit});
    input_valid = 0;
  end  
endfunction

function bit [`NOC_NPP_WIDTH-1:0] get_flit(int vc);
  return VC_fifo[vc][0][`NOC_NPP_WIDTH-1:0];
endfunction

function grant(input int vc);
  //received grant from ipa. 
  //if grant is received for flit, remove flit from vc_fifo
  if(VC_fifo[vc].size == 0) $fatal(1, "%m : trying to pop empty vc_fifo");
  ipa_grant = vc;
  void'(VC_fifo[vc].pop_front());
  //send credit to connected port
  credit[vc]++;
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("received grant for ivca port=%0h on vc = %0h . popping vc fifo entry. vc_fifo.size = %0h credit_to_send=%0h",inport_num,vc,VC_fifo[vc].size,credit[vc]),DBG)
  for(int vc=0; vc< `NOC_NPS_NUM_VC;vc++) VC_fifo_empty_1f[vc] = (VC_fifo[vc].size == 0);
endfunction

function int determine_dest_port_from_routing_table(input int inport_num,bit [`NOC_NPP_WIDTH-1:0] noc_flit, int vc_num);
`ifdef RT_2_43
  int noc_dst_port;
  int nps_high_id   = p_nps_reg.nps_high_id;
  int nps_mid_id = p_nps_reg.nps_mid_id;
  int noc_dst_id    = noc_flit[`NOC_NPP_DST];
  int noc_high_id   = noc_dst_id[`NOC_NPS_HIGH_ID];
  int noc_mid_id = noc_dst_id[`NOC_NPS_MID_ID];   
  int noc_low_id  = noc_dst_id[`NOC_NPS_LOW_ID];
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("noc_dst_id=%0d,noc_high_id=%0d,noc_mid_id=%0d,noc_low_id=%0d,nps_high_id=%0d,nps_mid_id=%0d",noc_dst_id,noc_high_id,noc_mid_id,noc_low_id,nps_high_id,nps_mid_id),DBG)
  if (nps_high_id == noc_high_id) 
	  if (nps_mid_id == noc_mid_id) 
	    noc_dst_port = p_nps_reg.reg_rt_low[inport_num][vc_num][noc_low_id];  
	  else 
	    noc_dst_port = p_nps_reg.reg_rt_mid[inport_num][vc_num][noc_mid_id];
  else 
	  noc_dst_port = p_nps_reg.reg_rt_high[inport_num][vc_num][noc_high_id];
    if(inport_num == noc_dst_port) begin
      display_flit_and_vc(input_valid, noc_flit);
      $error("%m ::: at time %0t ::: ERROR ::: Flit cannot be routed to the same inport it came from. Inport='d%0d Routed to='d%0d\n nps_high_id='h%0h,nps_mid_id='h%0h,flit_dst_id='h%0h,flit_high_id='h%0h,flit_mid_id='h%0h,flit_low_id='h%0h",$time,inport_num,noc_dst_port,nps_high_id,nps_mid_id,noc_dst_id,noc_high_id,noc_mid_id,noc_low_id); 
      $finish; 
    end
  return noc_dst_port;
`else
  int noc_dst_port;
  int nps_chip_id   = p_nps_reg.nps_chip_id;
  int nps_region_id = p_nps_reg.nps_region_id;
  int noc_dst_id    = noc_flit[`NOC_NPP_DST];
  int noc_chip_id   = noc_dst_id[`NOC_NPS_CHIP_ID];
  int noc_region_id = noc_dst_id[`NOC_NPS_REGION_ID];   
  int noc_local_id  = noc_dst_id[`NOC_NPS_LOCAL_ID];
  `PRINT_MODEL(VERBOSITY_EN,$sformatf("noc_dst_id=%0d,noc_chip_id=%0d,noc_region_id=%0d,noc_local_id=%0d,nps_chip_id=%0d,nps_region_id=%0d",noc_dst_id,noc_chip_id,noc_region_id,noc_local_id,nps_chip_id,nps_region_id),DBG)
  if (nps_chip_id == noc_chip_id) 
	  if (nps_region_id == noc_region_id) 
	    noc_dst_port = p_nps_reg.reg_rt_local[inport_num][vc_num][noc_local_id];  
	  else 
	    noc_dst_port = p_nps_reg.reg_rt_region[inport_num][vc_num][noc_region_id];
  else 
	  noc_dst_port = p_nps_reg.reg_rt_chip[inport_num][vc_num][noc_chip_id];
    if(inport_num == noc_dst_port) begin 
      display_flit_and_vc(input_valid, noc_flit);
      $error("%m ::: at time %0t ::: ERROR ::: Flit cannot be routed to the same inport it came from. Inport='d%0d Routed to='d%0d\n nps_chip_id='h%0h,nps_region_id='h%0h,flit_dst_id='h%0h,flit_chip_id='h%0h,flit_region_id='h%0h,flit_local_id='h%0h",$time,inport_num,noc_dst_port,nps_chip_id,nps_region_id,noc_dst_id,noc_chip_id,noc_region_id,noc_local_id); 
      $finish; 
    end
  return noc_dst_port;
`endif
endfunction

function update();
  send_req_to_ipa();
  VC_fifo_empty_2f = VC_fifo_empty_1f;
  for(int vc=0; vc< `NOC_NPS_NUM_VC;vc++) VC_fifo_empty_1f[vc] = (VC_fifo[vc].size == 0);
endfunction

function int send_credit();
  int npp_credit_return;
  for(int vc=0; vc < `NOC_NPS_NUM_VC; vc++) if(credit[vc] > 0) begin
    npp_credit_return[vc] = 1;
    credit[vc]--;
  end  
  if(npp_credit_return)`PRINT_MODEL(VERBOSITY_EN,$sformatf("ivca inport_num=%0h : returning credit (%0h) to sender from nps inport",inport_num,npp_credit_return),DBG)
  return npp_credit_return;
endfunction

function int get_vc_num(input bit [`NOC_NPS_NUM_VC-1:0] noc_valid);
  case(noc_valid)
    8'b0000_0001:   return 0;
    8'b0000_0010:   return 1;
    8'b0000_0100:   return 2;
    8'b0000_1000:   return 3;
    8'b0001_0000:   return 4;
    8'b0010_0000:   return 5;
    8'b0100_0000:   return 6;
    8'b1000_0000:   return 7;
    default : begin  $error("%m ::: at time %0t ::: get_vc_num: ERROR noc_valid=%8b",$time,noc_valid); $finish; end
  endcase
endfunction

function void end_of_test();
  for(int vc=0;vc < `NOC_NPS_NUM_VC;vc++) begin
    if(VC_fifo[vc].size != 0) $error("%m ::: at time %0t ::: ERROR ::: for inport=%0d for vc=%0d VC_fifo not empty. Num of elements=%0d",$time,inport_num,vc,VC_fifo[vc].size);
  end  
endfunction

function void display_flit_and_vc(bit [`NOC_NPS_NUM_VC-1:0] valid,bit [`NOC_NPP_WIDTH-1:0] flit);
  string flit_type;
  int PRINT_EN = 1;
  if((flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_REQ) && (wr_header_flit)) flit_type = "WRITE REQUEST";
  else if(flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_READ_REQ) flit_type = "READ REQUEST";
  else if((flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_REQ) && (!wr_header_flit)) flit_type = "WRITE DATA";
  else if(flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_RESP) flit_type = "WRITE RESPONSE";  
  else if(flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_READ_RESP) flit_type = "READ RESPONSE";

  `PRINT_MODEL(PRINT_EN,$sformatf("VC = 'h%0h",get_vc_num(valid)),DBG)
  `PRINT_MODEL(PRINT_EN,$sformatf(" -- %0s --",flit_type),DBG)
//  $display("REG_SRC =%0d -- %0s --",p_nmu_reg.REG_SRC,flit_type);
//  $display("REG_SRC =%0d tag = %0d ",p_nmu_reg.REG_SRC,flit[`NOC_NPP_TAG]);
  if(((flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_REQ) && (wr_header_flit)) || (flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_READ_REQ)) begin
     `PRINT_MODEL(PRINT_EN,$sformatf("flit = 'h%0h",flit),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("aaddr = 'h%0h",flit[`NOC_NPP_AXADDR]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("alen = 'h%0h",flit[`NOC_NPP_AXLEN]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("asize = 'h%0h",flit[`NOC_NPP_AXSIZE]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("aburst = 'h%0h",flit[`NOC_NPP_AXBURST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("alock = 'h%0h",flit[`NOC_NPP_AXLOCK]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("acache = 'h%0h",flit[`NOC_NPP_AXCACHE]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("aprot = 'h%0h",flit[`NOC_NPP_AXPROT]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("aqos = 'h%0h",flit[`NOC_NPP_AXQOS]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("aid = 'h%0h",flit[`NOC_NPP_AXID]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("auser = 'h%0h",flit[`NOC_NPP_AXUSER]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("type = 'h%0h",flit[`NOC_NPP_PKT_TYPE]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("misc_ctrl = 'h%0h",flit[`NOC_NPP_MISC_CTRL]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tag = 'h%0h",flit[`NOC_NPP_TAG]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("src = 'h%0h",flit[`NOC_NPP_SRC]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst = 'h%0h",flit[`NOC_NPP_DST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst_par = 'h%0h",flit[`NOC_NPP_DST_PAR]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("pri = 'h%0h",flit[`NOC_NPP_PRI]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("last = 'h%0h",flit[`NOC_NPP_LAST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("ecc = 'h%0h",flit[`NOC_NPP_ECC]),DBG)
     if(flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_REQ) wr_header_flit = 0;
  end  
  else if((flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_REQ) && (!wr_header_flit))begin
    //print wdata
     `PRINT_MODEL(PRINT_EN,$sformatf("flit = 'h%0h",flit),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("data = 'h%0h",flit[`NOC_NPP_DATA]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("strb = 'h%0h",flit[`NOC_NPP_WRSTB]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst = 'h%0h",flit[`NOC_NPP_DST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("last = 'h%0h",flit[`NOC_NPP_LAST]),DBG)
     wr_header_flit = flit[`NOC_NPP_LAST]; //to detect next npp header
  end  
  else if((flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_WRITE_RESP) || (flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_READ_RESP))begin
     `PRINT_MODEL(PRINT_EN,$sformatf("flit = 'h%0h",flit),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("data = 'h%0h",flit[`NOC_NPP_DATA]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("type = 'h%0h",flit[`NOC_NPP_PKT_TYPE]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("misc_ctrl = 'h%0h",flit[`NOC_NPP_MISC_CTRL]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tag = 'h%0h",flit[`NOC_NPP_TAG]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("src = 'h%0h",flit[`NOC_NPP_SRC]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst = 'h%0h",flit[`NOC_NPP_DST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst_par = 'h%0h",flit[`NOC_NPP_DST_PAR]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("pri = 'h%0h",flit[`NOC_NPP_PRI]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("last = 'h%0h",flit[`NOC_NPP_LAST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("ecc = 'h%0h",flit[`NOC_NPP_ECC]),DBG)
  end
  else if(flit[`NOC_NPP_PKT_TYPE] == `NOC_NPP_PKT_TYPE_STRM_WRITE_REQ) begin //For flit_type=STREAM
     `PRINT_MODEL(PRINT_EN,$sformatf("flit = 'h%0h",flit),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("data = 'h%0h",flit[`NOC_NPP_DATA]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("type = 'h%0h",flit[`NOC_NPP_PKT_TYPE]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tid_high = 'h%0h",flit[`NOC_NPP_TID_H]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tkeep = 'h%0h",flit[`NOC_NPP_WRSTB]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst = 'h%0h",flit[`NOC_NPP_DST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("dst_par = 'h%0h",flit[`NOC_NPP_DST_PAR]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("pri = 'h%0h",flit[`NOC_NPP_PRI]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("last = 'h%0h",flit[`NOC_NPP_LAST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tlast = 'h%0h",flit[`NOC_NPP_TLAST]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tid_low = 'h%0h",flit[`NOC_NPP_TID_L]),DBG)
     `PRINT_MODEL(PRINT_EN,$sformatf("tdest = 'h%0h",flit[`NOC_NPP_TDEST]),DBG)
   end
  else
   $warning(1,"%m at time=%0t :::::Unable to determine flit type = 'h%0h flit='h%0h",$time,flit[`NOC_NPP_PKT_TYPE],flit);
endfunction

endclass
