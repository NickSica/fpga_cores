/*
 Xilinx SystemC/TLM-2.0 Zynq3 Wrapper.

 Written by Edgar E. Iglesias <edgar.iglesias@xilinx.com>

 Copyright (c) 2018, Xilinx Inc.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

#include "systemc.h"

#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"
#include "tlm_utils/tlm_quantumkeeper.h"
#include "remote_port_tlm.h"
#include "remote_port_tlm_memory_master.h"
#include "remote_port_tlm_memory_slave.h"
#include "remote_port_tlm_wires.h"

class xilinx_versal
: public remoteport_tlm
{
private:
	/*
	 * TODO: Once the naming scheme settles down, we
	 * should have a look at using sc_vectors for some
	 * of these.
	 */
	remoteport_tlm_memory_master rp_m_axi_gp_0;
	remoteport_tlm_memory_master rp_m_axi_gp_2;
	remoteport_tlm_memory_master rp_if_ps_noc_cci_0;
	remoteport_tlm_memory_master rp_if_ps_noc_cci_1;
	remoteport_tlm_memory_master rp_if_ps_noc_cci_2;
	remoteport_tlm_memory_master rp_if_ps_noc_cci_3;
	remoteport_tlm_memory_master rp_if_ps_noc_nci_0;
	remoteport_tlm_memory_master rp_if_ps_noc_nci_1;
	remoteport_tlm_memory_master rp_if_ps_noc_pcie_0;
	remoteport_tlm_memory_master rp_if_ps_noc_pcie_1;
	remoteport_tlm_memory_master rp_if_ps_noc_rpu_0;
	remoteport_tlm_memory_master rp_if_pmc_noc_axi_0;

	remoteport_tlm_memory_slave rp_s_axi_gp_0;
	remoteport_tlm_memory_slave rp_s_axi_gp_2;
	remoteport_tlm_memory_slave rp_s_axi_gp_4;
	remoteport_tlm_memory_slave rp_s_axi_acp;
	remoteport_tlm_memory_slave rp_s_axi_ace;

	remoteport_tlm_memory_slave rp_if_noc_ps_nci_0;
	remoteport_tlm_memory_slave rp_if_noc_ps_nci_1;
	remoteport_tlm_memory_slave rp_if_noc_ps_cci_0;
	remoteport_tlm_memory_slave rp_if_noc_ps_cci_1;
	remoteport_tlm_memory_slave rp_if_noc_ps_pcie_0;
	remoteport_tlm_memory_slave rp_if_noc_ps_pcie_1;
	remoteport_tlm_memory_slave rp_if_noc_pmc_axi_0;

	remoteport_tlm_wires rp_wires_in;

public:
	/* FPD 0 and 1. Base PS only has port 0.  */
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *m_axi_gp_0;
	/* LPD.  */
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *m_axi_gp_2;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_cci_0;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_cci_1;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_cci_2;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_cci_3;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_nci_0;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_nci_1;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_pcie_0;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_pcie_1;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_ps_noc_rpu_0;
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_master> *if_pmc_noc_axi_0;

	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *s_axi_gp_0;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *s_axi_gp_2;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *s_axi_gp_4;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *s_axi_acp;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *s_axi_ace;

	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_nci_0;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_nci_1;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_cci_0;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_cci_1;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_pcie_0;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_ps_pcie_1;
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> *if_noc_pmc_axi_0;

	sc_vector<sc_signal<bool> > pl2ps_irq;

	xilinx_versal(sc_core::sc_module_name name, const char *sk_descr);
};
