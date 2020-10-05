`include "nps_ivca.sv"
`include "nps_ipa.sv"

class nps_class_new;

int VERBOSITY_EN;
nps_reg_class u_nps_reg;

nps_ivca u_nps_ivca[`NOC_NPS_NUM_PORT];
nps_ipa u_nps_ipa[`NOC_NPS_NUM_PORT];

int PORT_MAP [`NOC_NPS_NUM_PORT][`NOC_NPS_NUM_PORT] = '{'{'d0, 'd0, 'd1, 'd2}, '{'d2, 'd0, 'd0, 'd1}, '{'d1, 'd2, 'd0, 'd0}, '{'d0, 'd1, 'd2, 'd0}};
int PORT_UNMAP [`NOC_NPS_NUM_PORT][`NOC_NPS_NUM_PORT-1] = '{'{'d1, 'd2, 'd3}, '{'d2, 'd3, 'd0}, '{'d3, 'd0, 'd1}, '{'d0, 'd1, 'd2}};

function new(string name, int chip_id, int region_id, int verbosity_en, int vc_fifo_depth[`NOC_NPS_NUM_PORT][`NOC_NPS_NUM_VC]);
  VERBOSITY_EN = verbosity_en;
  this.u_nps_reg =new(name,chip_id,region_id);
  for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
    u_nps_ivca[i] = new(u_nps_reg, verbosity_en, i, vc_fifo_depth[i]);
    u_nps_ipa[i]  = new(u_nps_reg, verbosity_en, i, PORT_MAP[i], PORT_UNMAP[i]);
  end  
  //connect 
  for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
    for(int j=0;j<`NOC_NPS_NUM_PORT;j++) begin
      u_nps_ivca[i].p_nps_ipa[j] = u_nps_ipa[j];
      u_nps_ipa[i].p_nps_ivca[j] = u_nps_ivca[j];
    end  
  end  
  update_registers();
endfunction


function void update(input bit [`NOC_NPS_NUM_VC-1:0] valid_in[`NOC_NPS_NUM_PORT], bit [`NOC_NPP_WIDTH-1:0] flit_in[`NOC_NPS_NUM_PORT], bit [`NOC_NPS_NUM_VC-1:0] credit_received[`NOC_NPS_NUM_PORT], bit credit_rdy_in[`NOC_NPS_NUM_PORT], output bit [`NOC_NPS_NUM_VC-1:0] valid_out[`NOC_NPS_NUM_PORT], bit [`NOC_NPP_WIDTH-1:0] flit_out[`NOC_NPS_NUM_PORT], bit [`NOC_NPS_NUM_VC-1:0] credit_to_send[`NOC_NPS_NUM_PORT], bit credit_rdy_out[`NOC_NPS_NUM_PORT]);

  //copy input flit and send requestors to ipa
  for(int p=0;p<`NOC_NPS_NUM_PORT;p++) begin
    if(valid_in[p] != 0) u_nps_ivca[p].copy_input_flit(valid_in[p],flit_in[p]);
    u_nps_ivca[p].update();
  end  
  //update ipa block to do inport arbitration and get a winner for every outport 
  for(int p=0;p<`NOC_NPS_NUM_PORT;p++) begin
    if(credit_received[p] != 0) u_nps_ipa[p].receive_credit(credit_received[p]);
    u_nps_ipa[p].update();
  end   
  //update outputs
  for(int p=0;p<`NOC_NPS_NUM_PORT;p++) begin
    valid_out[p] = u_nps_ipa[p].winner_npp_valid;
    flit_out[p] = u_nps_ipa[p].winner_npp_flit;
    credit_rdy_out[p] = 1;
    if(credit_rdy_in[p]) credit_to_send[p] = u_nps_ivca[p].send_credit();
  end  
endfunction

function void update_registers();
  for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
    u_nps_ivca[i].update_registers();
    u_nps_ipa[i].update_registers();
  end   
`ifdef SIDEFILE_EN_NPS
  u_nps_reg.nps_high_id = u_nps_reg.REG_ID[9:4];
  u_nps_reg.nps_mid_id  = u_nps_reg.REG_ID[1:0];
 `endif
endfunction

function void reset();
  for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
    u_nps_ivca[i].reset();
    u_nps_ipa[i].reset();
  end   
endfunction

function void end_of_test();
  for(int i=0;i<`NOC_NPS_NUM_PORT;i++) begin
    u_nps_ivca[i].end_of_test();
    u_nps_ipa[i].end_of_test();
  end   
endfunction
endclass
