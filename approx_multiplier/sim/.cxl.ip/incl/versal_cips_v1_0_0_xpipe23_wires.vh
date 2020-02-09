//wire q2q3_gt_refclk0;
wire  q3_altclk_m;
wire [31:0] q3_apb3prdata_m;
wire  q3_apb3pready_m;
wire  q3_apb3pslverr_m;
wire [15:0] q3_apb3paddr_m;
wire  q3_apb3clk_m;
wire q3_axisclk_m;
wire  q3_apb3penable_m;
wire  q3_apb3presetn_m;
wire  q3_apb3psel_m;
wire [31:0] q3_apb3pwdata_m;
wire  q3_apb3pwrite_m;
wire  q3_bgbypassb_m;
wire  q3_bgmonitorenb_m;
wire  q3_bgpdb_m;
wire  q3_bgrcalovrdenb_m;
wire [4:0] q3_bgrcalovrd_m;
wire  q3_scanclkb_m;
wire  q3_scancntrlin_m;
wire  q3_scanenb_m;
wire [3:0] q3_scanin_m;
wire  q3_scanrstb_m;
wire  q3_xpscanclk_m;
wire  q3_xpscanenb_m;
wire [15:0] q3_xpscanin_m;
wire  q3_xpscanmodeb_m;
wire  q3_xpscanrstb_m;
wire  q3_cssdrstb_m;
wire  q3_cssdstopclk_m;
wire  q3_edtupdateb_m;
wire  ch12_txoutclk_m;
wire  ch12_rxoutclk_m;
wire  ch12_bufgtce_m;
wire [3:0] ch12_bufgtcemask_m;
wire [11:0] ch12_bufgtdiv_m;
wire  ch12_bufgtrst_m;
wire [3:0] ch12_bufgtrstmask_m;
wire [31:0] ch12_dmonitorout_m;
wire  ch12_eyescandataerror_m;
wire  ch12_iloresetdone_m;
wire [15:0] ch12_pcsrsvdout_m;
wire [15:0] ch12_pinrsvdas_m;
wire  ch12_phyready_m;
wire  ch12_phystatus_m;
wire  ch12_resetexception_m;
wire [7:0] ch12_rx10gstat_m;
wire [2:0] ch12_rxbufstatus_m;
wire  ch12_rxbyteisaligned_m;
wire  ch12_rxbyterealign_m;
wire  ch12_rxcdrlock_m;
wire  ch12_rxcdrphdone_m;
wire  ch12_rxchanbondseq_m;
wire  ch12_rxchanisaligned_m;
wire  ch12_rxchanrealign_m;
wire [4:0] ch12_rxchbondo_m;
wire [1:0] ch12_rxclkcorcnt_m;
wire  ch12_rxcominitdet_m;
wire  ch12_rxcommadet_m;
wire  ch12_rxcomsasdet_m;
wire  ch12_rxcomwakedet_m;
wire [15:0] ch12_rxctrl0_m;
wire [15:0] ch12_rxctrl1_m;
wire [7:0] ch12_rxctrl2_m;
wire [7:0] ch12_rxctrl3_m;
wire [127:0] ch12_rxdata_m;
wire [7:0] ch12_rxdataextendrsvd_m;
wire [1:0] ch12_rxdatavalid_m;
wire  ch12_rxdccdone_m;
wire  ch12_rxdlyalignerr_m;
wire  ch12_rxdlyalignprog_m;
wire  ch12_rxelecidle_m;
wire  ch12_rxfinealigndone_m;
wire [5:0] ch12_rxheader_m;
wire [1:0] ch12_rxheadervalid_m;
wire  ch12_rxosintdone_m;
wire  ch12_rxosintstarted_m;
wire  ch12_rxosintstrobedone_m;
wire  ch12_rxosintstrobestarted_m;
wire  ch12_rxphaligndone_m;
wire  ch12_rxphalignerr_m;
wire  ch12_rxphdlyresetdone_m;
wire  ch12_rxphsetinitdone_m;
wire  ch12_rxphshift180done_m;
wire  ch12_rxpmaresetdone_m;
wire  ch12_rxprbserr_m;
wire  ch12_rxprbslocked_m;
wire  ch12_rxresetdone_m;
wire  ch12_rxsliderdy_m;
wire [1:0] ch12_rxstartofseq_m;
wire [2:0] ch12_rxstatus_m;
wire  ch12_rxsyncdone_m;
wire  ch12_rxvalid_m;

wire  ch12_tstclk0_m  ;
wire  ch12_tstclk1_m  ;
wire  ch13_tstclk0_m  ;
wire  ch13_tstclk1_m  ;
wire  ch14_tstclk0_m  ;
wire  ch14_tstclk1_m  ;
wire  ch15_tstclk0_m  ;
wire  ch15_tstclk1_m  ;

wire  ch12_tx10gstat_m;
wire [1:0] ch12_txbufstatus_m;
wire  ch12_txcomfinish_m;
wire  ch12_txdccdone_m;
wire  ch12_txdlyalignerr_m;
wire  ch12_txdlyalignprog_m;
wire  ch12_txphaligndone_m;
wire  ch12_txphalignerr_m;
wire  ch12_txphalignoutrsvd_m;
wire  ch12_txphdlyresetdone_m;
wire  ch12_txphshift180done_m;
wire  ch12_txpmaresetdone_m;
wire  ch12_txresetdone_m;
wire  ch12_txsyncdone_m;
wire  ch12_cdrbmcdrreq_m;
wire  ch12_cdrfreqos_m;
wire  ch12_cdrincpctrl_m;
wire  ch12_cdrstepdir_m;
wire  ch12_cdrstepsq_m;
wire  ch12_cdrstepsx_m;
wire  ch12_clkrsvd0_m;
wire  ch12_clkrsvd1_m;
wire  ch12_cssdrstb_m;
wire  ch12_cssdstopclk_m;
wire  ch12_edtupdateb_m;
wire  ch12_dmonfiforeset_m;
wire  ch12_dmonitorclk_m;
wire  ch12_eyescanreset_m;
wire  ch12_eyescantrigger_m;
wire [15:0] ch12_gtrsvd_m;
wire  ch12_gtrxreset_m;
wire  ch12_gttxreset_m;
wire  ch12_hsdppcsreset_m;
wire  ch12_iloreset_m;
wire  ch12_iloresetmask_m;
wire [2:0] ch12_loopback_m;
wire  ch12_pcierstb_m;
wire [15:0] ch12_pcsrsvdin_m;
wire  ch12_phyesmadaptsave_m;
wire  ch12_rxcdrhold_m;
wire  ch12_rxcdrovrden_m;
wire  ch12_rxcdrreset_m;
wire [4:0] ch12_rxchbondi_m;
wire  ch12_rxdapicodeovrden_m;
wire  ch12_rxdapicodereset_m;
wire  ch12_rxdlyalignreq_m;
wire  ch12_rxeqtraining_m;
wire  ch12_rxgearboxslip_m;
wire  ch12_rxlatclk_m;
wire  ch12_rxlpmen_m;
wire  ch12_rxmldchaindone_m;
wire  ch12_rxmldchainreq_m;
wire  ch12_rxmlfinealignreq_m;
wire  ch12_rxoobreset_m;
wire [4:0] ch12_rxpcsresetmask_m;
wire [1:0] ch12_rxpd_m;
wire  ch12_rxphalignreq_m;
wire [1:0] ch12_rxphalignresetmask_m;
wire  ch12_rxphdlypd_m;
wire  ch12_rxphdlyreset_m;
wire  ch12_rxphsetinitreq_m;
wire  ch12_rxphshift180_m;
wire [6:0] ch12_rxpmaresetmask_m;
wire  ch12_rxpolarity_m;
wire  ch12_rxprbscntreset_m;
wire [3:0] ch12_rxprbssel_m;
wire  ch12_rxprogdivreset_m;
wire [7:0] ch12_rxrate_m;
wire [1:0] ch12_rxresetmode_m;
wire  ch12_rxslide_m;
wire  ch12_rxsyncallin_m;
wire  ch12_rxtermination_m;
wire  ch12_rxuserrdy_m;
wire  ch12_rxusrclk_m;
wire [19:0] ch12_tstin_m;
wire  ch12_txcominit_m;
wire  ch12_txcomsas_m;
wire  ch12_txcomwake_m;
wire [15:0] ch12_txctrl0_m;
wire [15:0] ch12_txctrl1_m;
wire [7:0] ch12_txctrl2_m;
wire  ch12_txdapicodeovrden_m;
wire  ch12_txdapicodereset_m;
wire [127:0] ch12_txdata_m;
wire [7:0] ch12_txdataextendrsvd_m;
wire [1:0] ch12_txdeemph_m;
wire  ch12_txdetectrx_m;
wire [4:0] ch12_txdiffctrl_m;
wire  ch12_txdlyalignreq_m;
wire  ch12_txelecidle_m;
wire [5:0] ch12_txheader_m;
wire  ch12_txinhibit_m;
wire  ch12_txlatclk_m;
wire [6:0] ch12_txmaincursor_m;
wire [2:0] ch12_txmargin_m;
wire  ch12_txmldchaindone_m;
wire  ch12_txmldchainreq_m;
wire  ch12_txoneszeros_m;
wire  ch12_txpausedelayalign_m;
wire  ch12_txpcsresetmask_m;
wire [1:0] ch12_txpd_m;
wire  ch12_txphalignreq_m;
wire [1:0] ch12_txphalignresetmask_m;
wire  ch12_txphdlypd_m;
wire  ch12_txphdlyreset_m;
wire  ch12_txphdlytstclk_m;
wire  ch12_txphsetinitreq_m;
wire  ch12_txphshift180_m;
wire  ch12_txpicodeovrden_m;
wire  ch12_txpicodereset_m;
wire  ch12_txpippmen_m;
wire [4:0] ch12_txpippmstepsize_m;
wire  ch12_txpisopd_m;
wire [2:0] ch12_txpmaresetmask_m;
wire  ch12_txpolarity_m;
wire [4:0] ch12_txpostcursor_m;
wire  ch12_txprbsforceerr_m;
wire [3:0] ch12_txprbssel_m;
wire [4:0] ch12_txprecursor_m;
wire  ch12_txprogdivreset_m;
wire [7:0] ch12_txrate_m;
wire [1:0] ch12_txresetmode_m;
wire [6:0] ch12_txsequence_m;
wire  ch12_txswing_m;
wire  ch12_txsyncallin_m;
wire  ch12_txuserrdy_m;
wire  ch12_txusrclk_m;
wire  ch12_scanclkb_m;
wire  ch12_scancntrlin_m;
wire  ch12_scanenb_m;
wire [3:0] ch12_scanin_m;
wire  ch12_scanrstb_m;

wire  ch13_bufgtce_m;
wire [3:0] ch13_bufgtcemask_m;
wire [11:0] ch13_bufgtdiv_m;
wire  ch13_bufgtrst_m;
wire [3:0] ch13_bufgtrstmask_m;
wire [31:0] ch13_dmonitorout_m;
wire  ch13_eyescandataerror_m;
wire  ch13_iloresetdone_m;
wire [15:0] ch13_pcsrsvdout_m;
wire [15:0] ch13_pinrsvdas_m;
wire  ch13_phyready_m;
wire  ch13_phystatus_m;
wire  ch13_resetexception_m;
wire [7:0] ch13_rx10gstat_m;
wire [2:0] ch13_rxbufstatus_m;
wire  ch13_rxbyteisaligned_m;
wire  ch13_rxbyterealign_m;
wire  ch13_rxcdrlock_m;
wire  ch13_rxcdrphdone_m;
wire  ch13_rxchanbondseq_m;
wire  ch13_rxchanisaligned_m;
wire  ch13_rxchanrealign_m;
wire [4:0] ch13_rxchbondo_m;
wire [1:0] ch13_rxclkcorcnt_m;
wire  ch13_rxcominitdet_m;
wire  ch13_rxcommadet_m;
wire  ch13_rxcomsasdet_m;
wire  ch13_rxcomwakedet_m;
wire [15:0] ch13_rxctrl0_m;
wire [15:0] ch13_rxctrl1_m;
wire [7:0] ch13_rxctrl2_m;
wire [7:0] ch13_rxctrl3_m;
wire [127:0] ch13_rxdata_m;
wire [7:0] ch13_rxdataextendrsvd_m;
wire [1:0] ch13_rxdatavalid_m;
wire  ch13_rxdccdone_m;
wire  ch13_rxdlyalignerr_m;
wire  ch13_rxdlyalignprog_m;
wire  ch13_rxelecidle_m;
wire  ch13_rxfinealigndone_m;
wire [5:0] ch13_rxheader_m;
wire [1:0] ch13_rxheadervalid_m;
wire  ch13_rxosintdone_m;
wire  ch13_rxosintstarted_m;
wire  ch13_rxosintstrobedone_m;
wire  ch13_rxosintstrobestarted_m;
wire  ch13_rxphaligndone_m;
wire  ch13_rxphalignerr_m;
wire  ch13_rxphdlyresetdone_m;
wire  ch13_rxphsetinitdone_m;
wire  ch13_rxphshift180done_m;
wire  ch13_rxpmaresetdone_m;
wire  ch13_rxprbserr_m;
wire  ch13_rxprbslocked_m;
wire  ch13_rxresetdone_m;
wire  ch13_rxsliderdy_m;
wire [1:0] ch13_rxstartofseq_m;
wire [2:0] ch13_rxstatus_m;
wire  ch13_rxsyncdone_m;
wire  ch13_rxvalid_m;
wire  ch13_tx10gstat_m;
wire [1:0] ch13_txbufstatus_m;
wire  ch13_txcomfinish_m;
wire  ch13_txdccdone_m;
wire  ch13_txdlyalignerr_m;
wire  ch13_txdlyalignprog_m;
wire  ch13_txphaligndone_m;
wire  ch13_txphalignerr_m;
wire  ch13_txphalignoutrsvd_m;
wire  ch13_txphdlyresetdone_m;
wire  ch13_txphshift180done_m;
wire  ch13_txpmaresetdone_m;
wire  ch13_txresetdone_m;
wire  ch13_txsyncdone_m;
wire  ch13_cdrbmcdrreq_m;
wire  ch13_cdrfreqos_m;
wire  ch13_cdrincpctrl_m;
wire  ch13_cdrstepdir_m;
wire  ch13_cdrstepsq_m;
wire  ch13_cdrstepsx_m;
wire  ch13_clkrsvd0_m;
wire  ch13_clkrsvd1_m;
wire  ch13_cssdrstb_m;
wire  ch13_cssdstopclk_m;
wire  ch13_edtupdateb_m;
wire  ch13_dmonfiforeset_m;
wire  ch13_dmonitorclk_m;
wire  ch13_eyescanreset_m;
wire  ch13_eyescantrigger_m;
wire [15:0] ch13_gtrsvd_m;
wire  ch13_gtrxreset_m;
wire  ch13_gttxreset_m;
wire  ch13_hsdppcsreset_m;
wire  ch13_iloreset_m;
wire  ch13_iloresetmask_m;
wire [2:0] ch13_loopback_m;
wire  ch13_pcierstb_m;
wire [15:0] ch13_pcsrsvdin_m;
wire  ch13_phyesmadaptsave_m;
wire  ch13_rxcdrhold_m;
wire  ch13_rxcdrovrden_m;
wire  ch13_rxcdrreset_m;
wire [4:0] ch13_rxchbondi_m;
wire  ch13_rxdapicodeovrden_m;
wire  ch13_rxdapicodereset_m;
wire  ch13_rxdlyalignreq_m;
wire  ch13_rxeqtraining_m;
wire  ch13_rxgearboxslip_m;
wire  ch13_rxlatclk_m;
wire  ch13_rxlpmen_m;
wire  ch13_rxmldchaindone_m;
wire  ch13_rxmldchainreq_m;
wire  ch13_rxmlfinealignreq_m;
wire  ch13_rxoobreset_m;
wire [4:0] ch13_rxpcsresetmask_m;
wire [1:0] ch13_rxpd_m;
wire  ch13_rxphalignreq_m;
wire [1:0] ch13_rxphalignresetmask_m;
wire  ch13_rxphdlypd_m;
wire  ch13_rxphdlyreset_m;
wire  ch13_rxphsetinitreq_m;
wire  ch13_rxphshift180_m;
wire [6:0] ch13_rxpmaresetmask_m;
wire  ch13_rxpolarity_m;
wire  ch13_rxprbscntreset_m;
wire [3:0] ch13_rxprbssel_m;
wire  ch13_rxprogdivreset_m;
wire [7:0] ch13_rxrate_m;
wire [1:0] ch13_rxresetmode_m;
wire  ch13_rxslide_m;
wire  ch13_rxsyncallin_m;
wire  ch13_rxtermination_m;
wire  ch13_rxuserrdy_m;
wire  ch13_rxusrclk_m;
wire [19:0] ch13_tstin_m;
wire  ch13_txcominit_m;
wire  ch13_txcomsas_m;
wire  ch13_txcomwake_m;
wire [15:0] ch13_txctrl0_m;
wire [15:0] ch13_txctrl1_m;
wire [7:0] ch13_txctrl2_m;
wire  ch13_txdapicodeovrden_m;
wire  ch13_txdapicodereset_m;
wire [127:0] ch13_txdata_m;
wire [7:0] ch13_txdataextendrsvd_m;
wire [1:0] ch13_txdeemph_m;
wire  ch13_txdetectrx_m;
wire [4:0] ch13_txdiffctrl_m;
wire  ch13_txdlyalignreq_m;
wire  ch13_txelecidle_m;
wire [5:0] ch13_txheader_m;
wire  ch13_txinhibit_m;
wire  ch13_txlatclk_m;
wire [6:0] ch13_txmaincursor_m;
wire [2:0] ch13_txmargin_m;
wire  ch13_txmldchaindone_m;
wire  ch13_txmldchainreq_m;
wire  ch13_txoneszeros_m;
wire  ch13_txpausedelayalign_m;
wire  ch13_txpcsresetmask_m;
wire [1:0] ch13_txpd_m;
wire  ch13_txphalignreq_m;
wire [1:0] ch13_txphalignresetmask_m;
wire  ch13_txphdlypd_m;
wire  ch13_txphdlyreset_m;
wire  ch13_txphdlytstclk_m;
wire  ch13_txphsetinitreq_m;
wire  ch13_txphshift180_m;
wire  ch13_txpicodeovrden_m;
wire  ch13_txpicodereset_m;
wire  ch13_txpippmen_m;
wire [4:0] ch13_txpippmstepsize_m;
wire  ch13_txpisopd_m;
wire [2:0] ch13_txpmaresetmask_m;
wire  ch13_txpolarity_m;
wire [4:0] ch13_txpostcursor_m;
wire  ch13_txprbsforceerr_m;
wire [3:0] ch13_txprbssel_m;
wire [4:0] ch13_txprecursor_m;
wire  ch13_txprogdivreset_m;
wire [7:0] ch13_txrate_m;
wire [1:0] ch13_txresetmode_m;
wire [6:0] ch13_txsequence_m;
wire  ch13_txswing_m;
wire  ch13_txsyncallin_m;
wire  ch13_txuserrdy_m;
wire  ch13_txusrclk_m;
wire  ch13_scanclkb_m;
wire  ch13_scancntrlin_m;
wire  ch13_scanenb_m;
wire [3:0] ch13_scanin_m;
wire  ch13_scanrstb_m;

wire  ch14_bufgtce_m;
wire [3:0] ch14_bufgtcemask_m;
wire [11:0] ch14_bufgtdiv_m;
wire  ch14_bufgtrst_m;
wire [3:0] ch14_bufgtrstmask_m;
wire [31:0] ch14_dmonitorout_m;
wire  ch14_eyescandataerror_m;
wire  ch14_iloresetdone_m;
wire [15:0] ch14_pcsrsvdout_m;
wire [15:0] ch14_pinrsvdas_m;
wire  ch14_phyready_m;
wire  ch14_phystatus_m;
wire  ch14_resetexception_m;
wire [7:0] ch14_rx10gstat_m;
wire [2:0] ch14_rxbufstatus_m;
wire  ch14_rxbyteisaligned_m;
wire  ch14_rxbyterealign_m;
wire  ch14_rxcdrlock_m;
wire  ch14_rxcdrphdone_m;
wire  ch14_rxchanbondseq_m;
wire  ch14_rxchanisaligned_m;
wire  ch14_rxchanrealign_m;
wire [4:0] ch14_rxchbondo_m;
wire [1:0] ch14_rxclkcorcnt_m;
wire  ch14_rxcominitdet_m;
wire  ch14_rxcommadet_m;
wire  ch14_rxcomsasdet_m;
wire  ch14_rxcomwakedet_m;
wire [15:0] ch14_rxctrl0_m;
wire [15:0] ch14_rxctrl1_m;
wire [7:0] ch14_rxctrl2_m;
wire [7:0] ch14_rxctrl3_m;
wire [127:0] ch14_rxdata_m;
wire [7:0] ch14_rxdataextendrsvd_m;
wire [1:0] ch14_rxdatavalid_m;
wire  ch14_rxdccdone_m;
wire  ch14_rxdlyalignerr_m;
wire  ch14_rxdlyalignprog_m;
wire  ch14_rxelecidle_m;
wire  ch14_rxfinealigndone_m;
wire [5:0] ch14_rxheader_m;
wire [1:0] ch14_rxheadervalid_m;
wire  ch14_rxosintdone_m;
wire  ch14_rxosintstarted_m;
wire  ch14_rxosintstrobedone_m;
wire  ch14_rxosintstrobestarted_m;
wire  ch14_rxphaligndone_m;
wire  ch14_rxphalignerr_m;
wire  ch14_rxphdlyresetdone_m;
wire  ch14_rxphsetinitdone_m;
wire  ch14_rxphshift180done_m;
wire  ch14_rxpmaresetdone_m;
wire  ch14_rxprbserr_m;
wire  ch14_rxprbslocked_m;
wire  ch14_rxresetdone_m;
wire  ch14_rxsliderdy_m;
wire [1:0] ch14_rxstartofseq_m;
wire [2:0] ch14_rxstatus_m;
wire  ch14_rxsyncdone_m;
wire  ch14_rxvalid_m;
wire  ch14_tx10gstat_m;
wire [1:0] ch14_txbufstatus_m;
wire  ch14_txcomfinish_m;
wire  ch14_txdccdone_m;
wire  ch14_txdlyalignerr_m;
wire  ch14_txdlyalignprog_m;
wire  ch14_txphaligndone_m;
wire  ch14_txphalignerr_m;
wire  ch14_txphalignoutrsvd_m;
wire  ch14_txphdlyresetdone_m;
wire  ch14_txphshift180done_m;
wire  ch14_txpmaresetdone_m;
wire  ch14_txresetdone_m;
wire  ch14_txsyncdone_m;
wire  ch14_cdrbmcdrreq_m;
wire  ch14_cdrfreqos_m;
wire  ch14_cdrincpctrl_m;
wire  ch14_cdrstepdir_m;
wire  ch14_cdrstepsq_m;
wire  ch14_cdrstepsx_m;
wire  ch14_clkrsvd0_m;
wire  ch14_clkrsvd1_m;
wire  ch14_cssdrstb_m;
wire  ch14_cssdstopclk_m;
wire  ch14_edtupdateb_m;
wire  ch14_dmonfiforeset_m;
wire  ch14_dmonitorclk_m;
wire  ch14_eyescanreset_m;
wire  ch14_eyescantrigger_m;
wire [15:0] ch14_gtrsvd_m;
wire  ch14_gtrxreset_m;
wire  ch14_gttxreset_m;
wire  ch14_hsdppcsreset_m;
wire  ch14_iloreset_m;
wire  ch14_iloresetmask_m;
wire [2:0] ch14_loopback_m;
wire  ch14_pcierstb_m;
wire [15:0] ch14_pcsrsvdin_m;
wire  ch14_phyesmadaptsave_m;
wire  ch14_rxcdrhold_m;
wire  ch14_rxcdrovrden_m;
wire  ch14_rxcdrreset_m;
wire [4:0] ch14_rxchbondi_m;
wire  ch14_rxdapicodeovrden_m;
wire  ch14_rxdapicodereset_m;
wire  ch14_rxdlyalignreq_m;
wire  ch14_rxeqtraining_m;
wire  ch14_rxgearboxslip_m;
wire  ch14_rxlatclk_m;
wire  ch14_rxlpmen_m;
wire  ch14_rxmldchaindone_m;
wire  ch14_rxmldchainreq_m;
wire  ch14_rxmlfinealignreq_m;
wire  ch14_rxoobreset_m;
wire [4:0] ch14_rxpcsresetmask_m;
wire [1:0] ch14_rxpd_m;
wire  ch14_rxphalignreq_m;
wire [1:0] ch14_rxphalignresetmask_m;
wire  ch14_rxphdlypd_m;
wire  ch14_rxphdlyreset_m;
wire  ch14_rxphsetinitreq_m;
wire  ch14_rxphshift180_m;
wire [6:0] ch14_rxpmaresetmask_m;
wire  ch14_rxpolarity_m;
wire  ch14_rxprbscntreset_m;
wire [3:0] ch14_rxprbssel_m;
wire  ch14_rxprogdivreset_m;
wire [7:0] ch14_rxrate_m;
wire [1:0] ch14_rxresetmode_m;
wire  ch14_rxslide_m;
wire  ch14_rxsyncallin_m;
wire  ch14_rxtermination_m;
wire  ch14_rxuserrdy_m;
wire  ch14_rxusrclk_m;
wire [19:0] ch14_tstin_m;
wire  ch14_txcominit_m;
wire  ch14_txcomsas_m;
wire  ch14_txcomwake_m;
wire [15:0] ch14_txctrl0_m;
wire [15:0] ch14_txctrl1_m;
wire [7:0] ch14_txctrl2_m;
wire  ch14_txdapicodeovrden_m;
wire  ch14_txdapicodereset_m;
wire [127:0] ch14_txdata_m;
wire [7:0] ch14_txdataextendrsvd_m;
wire [1:0] ch14_txdeemph_m;
wire  ch14_txdetectrx_m;
wire [4:0] ch14_txdiffctrl_m;
wire  ch14_txdlyalignreq_m;
wire  ch14_txelecidle_m;
wire [5:0] ch14_txheader_m;
wire  ch14_txinhibit_m;
wire  ch14_txlatclk_m;
wire [6:0] ch14_txmaincursor_m;
wire [2:0] ch14_txmargin_m;
wire  ch14_txmldchaindone_m;
wire  ch14_txmldchainreq_m;
wire  ch14_txoneszeros_m;
wire  ch14_txpausedelayalign_m;
wire  ch14_txpcsresetmask_m;
wire [1:0] ch14_txpd_m;
wire  ch14_txphalignreq_m;
wire [1:0] ch14_txphalignresetmask_m;
wire  ch14_txphdlypd_m;
wire  ch14_txphdlyreset_m;
wire  ch14_txphdlytstclk_m;
wire  ch14_txphsetinitreq_m;
wire  ch14_txphshift180_m;
wire  ch14_txpicodeovrden_m;
wire  ch14_txpicodereset_m;
wire  ch14_txpippmen_m;
wire [4:0] ch14_txpippmstepsize_m;
wire  ch14_txpisopd_m;
wire [2:0] ch14_txpmaresetmask_m;
wire  ch14_txpolarity_m;
wire [4:0] ch14_txpostcursor_m;
wire  ch14_txprbsforceerr_m;
wire [3:0] ch14_txprbssel_m;
wire [4:0] ch14_txprecursor_m;
wire  ch14_txprogdivreset_m;
wire [7:0] ch14_txrate_m;
wire [1:0] ch14_txresetmode_m;
wire [6:0] ch14_txsequence_m;
wire  ch14_txswing_m;
wire  ch14_txsyncallin_m;
wire  ch14_txuserrdy_m;
wire  ch14_txusrclk_m;
wire  ch14_scanclkb_m;
wire  ch14_scancntrlin_m;
wire  ch14_scanenb_m;
wire [3:0] ch14_scanin_m;
wire  ch14_scanrstb_m;

wire  ch15_bufgtce_m;
wire [3:0] ch15_bufgtcemask_m;
wire [11:0] ch15_bufgtdiv_m;
wire  ch15_bufgtrst_m;
wire [3:0] ch15_bufgtrstmask_m;
wire [31:0] ch15_dmonitorout_m;
wire  ch15_eyescandataerror_m;
wire  ch15_iloresetdone_m;
wire [15:0] ch15_pcsrsvdout_m;
wire [15:0] ch15_pinrsvdas_m;
wire  ch15_phyready_m;
wire  ch15_phystatus_m;
wire  ch15_resetexception_m;
wire [7:0] ch15_rx10gstat_m;
wire [2:0] ch15_rxbufstatus_m;
wire  ch15_rxbyteisaligned_m;
wire  ch15_rxbyterealign_m;
wire  ch15_rxcdrlock_m;
wire  ch15_rxcdrphdone_m;
wire  ch15_rxchanbondseq_m;
wire  ch15_rxchanisaligned_m;
wire  ch15_rxchanrealign_m;
wire [4:0] ch15_rxchbondo_m;
wire [1:0] ch15_rxclkcorcnt_m;
wire  ch15_rxcominitdet_m;
wire  ch15_rxcommadet_m;
wire  ch15_rxcomsasdet_m;
wire  ch15_rxcomwakedet_m;
wire [15:0] ch15_rxctrl0_m;
wire [15:0] ch15_rxctrl1_m;
wire [7:0] ch15_rxctrl2_m;
wire [7:0] ch15_rxctrl3_m;
wire [127:0] ch15_rxdata_m;
wire [7:0] ch15_rxdataextendrsvd_m;
wire [1:0] ch15_rxdatavalid_m;
wire  ch15_rxdccdone_m;
wire  ch15_rxdlyalignerr_m;
wire  ch15_rxdlyalignprog_m;
wire  ch15_rxelecidle_m;
wire  ch15_rxfinealigndone_m;
wire [5:0] ch15_rxheader_m;
wire [1:0] ch15_rxheadervalid_m;
wire  ch15_rxosintdone_m;
wire  ch15_rxosintstarted_m;
wire  ch15_rxosintstrobedone_m;
wire  ch15_rxosintstrobestarted_m;
wire  ch15_rxphaligndone_m;
wire  ch15_rxphalignerr_m;
wire  ch15_rxphdlyresetdone_m;
wire  ch15_rxphsetinitdone_m;
wire  ch15_rxphshift180done_m;
wire  ch15_rxpmaresetdone_m;
wire  ch15_rxprbserr_m;
wire  ch15_rxprbslocked_m;
wire  ch15_rxresetdone_m;
wire  ch15_rxsliderdy_m;
wire [1:0] ch15_rxstartofseq_m;
wire [2:0] ch15_rxstatus_m;
wire  ch15_rxsyncdone_m;
wire  ch15_rxvalid_m;
wire  ch15_tx10gstat_m;
wire [1:0] ch15_txbufstatus_m;
wire  ch15_txcomfinish_m;
wire  ch15_txdccdone_m;
wire  ch15_txdlyalignerr_m;
wire  ch15_txdlyalignprog_m;
wire  ch15_txphaligndone_m;
wire  ch15_txphalignerr_m;
wire  ch15_txphalignoutrsvd_m;
wire  ch15_txphdlyresetdone_m;
wire  ch15_txphshift180done_m;
wire  ch15_txpmaresetdone_m;
wire  ch15_txresetdone_m;
wire  ch15_txsyncdone_m;
wire  ch15_cdrbmcdrreq_m;
wire  ch15_cdrfreqos_m;
wire  ch15_cdrincpctrl_m;
wire  ch15_cdrstepdir_m;
wire  ch15_cdrstepsq_m;
wire  ch15_cdrstepsx_m;
wire  ch15_clkrsvd0_m;
wire  ch15_clkrsvd1_m;
wire  ch15_cssdrstb_m;
wire  ch15_cssdstopclk_m;
wire  ch15_edtupdateb_m;
wire  ch15_dmonfiforeset_m;
wire  ch15_dmonitorclk_m;
wire  ch15_eyescanreset_m;
wire  ch15_eyescantrigger_m;
wire [15:0] ch15_gtrsvd_m;
wire  ch15_gtrxreset_m;
wire  ch15_gttxreset_m;
wire  ch15_hsdppcsreset_m;
wire  ch15_iloreset_m;
wire  ch15_iloresetmask_m;
wire [2:0] ch15_loopback_m;
wire  ch15_pcierstb_m;
wire [15:0] ch15_pcsrsvdin_m;
wire  ch15_phyesmadaptsave_m;
wire  ch15_rxcdrhold_m;
wire  ch15_rxcdrovrden_m;
wire  ch15_rxcdrreset_m;
wire [4:0] ch15_rxchbondi_m;
wire  ch15_rxdapicodeovrden_m;
wire  ch15_rxdapicodereset_m;
wire  ch15_rxdlyalignreq_m;
wire  ch15_rxeqtraining_m;
wire  ch15_rxgearboxslip_m;
wire  ch15_rxlatclk_m;
wire  ch15_rxlpmen_m;
wire  ch15_rxmldchaindone_m;
wire  ch15_rxmldchainreq_m;
wire  ch15_rxmlfinealignreq_m;
wire  ch15_rxoobreset_m;
wire [4:0] ch15_rxpcsresetmask_m;
wire [1:0] ch15_rxpd_m;
wire  ch15_rxphalignreq_m;
wire [1:0] ch15_rxphalignresetmask_m;
wire  ch15_rxphdlypd_m;
wire  ch15_rxphdlyreset_m;
wire  ch15_rxphsetinitreq_m;
wire  ch15_rxphshift180_m;
wire [6:0] ch15_rxpmaresetmask_m;
wire  ch15_rxpolarity_m;
wire  ch15_rxprbscntreset_m;
wire [3:0] ch15_rxprbssel_m;
wire  ch15_rxprogdivreset_m;
wire [7:0] ch15_rxrate_m;
wire [1:0] ch15_rxresetmode_m;
wire  ch15_rxslide_m;
wire  ch15_rxsyncallin_m;
wire  ch15_rxtermination_m;
wire  ch15_rxuserrdy_m;
wire  ch15_rxusrclk_m;
wire [19:0] ch15_tstin_m;
wire  ch15_txcominit_m;
wire  ch15_txcomsas_m;
wire  ch15_txcomwake_m;
wire [15:0] ch15_txctrl0_m;
wire [15:0] ch15_txctrl1_m;
wire [7:0] ch15_txctrl2_m;
wire  ch15_txdapicodeovrden_m;
wire  ch15_txdapicodereset_m;
wire [127:0] ch15_txdata_m;
wire [7:0] ch15_txdataextendrsvd_m;
wire [1:0] ch15_txdeemph_m;
wire  ch15_txdetectrx_m;
wire [4:0] ch15_txdiffctrl_m;
wire  ch15_txdlyalignreq_m;
wire  ch15_txelecidle_m;
wire [5:0] ch15_txheader_m;
wire  ch15_txinhibit_m;
wire  ch15_txlatclk_m;
wire [6:0] ch15_txmaincursor_m;
wire [2:0] ch15_txmargin_m;
wire  ch15_txmldchaindone_m;
wire  ch15_txmldchainreq_m;
wire  ch15_txoneszeros_m;
wire  ch15_txpausedelayalign_m;
wire  ch15_txpcsresetmask_m;
wire [1:0] ch15_txpd_m;
wire  ch15_txphalignreq_m;
wire [1:0] ch15_txphalignresetmask_m;
wire  ch15_txphdlypd_m;
wire  ch15_txphdlyreset_m;
wire  ch15_txphdlytstclk_m;
wire  ch15_txphsetinitreq_m;
wire  ch15_txphshift180_m;
wire  ch15_txpicodeovrden_m;
wire  ch15_txpicodereset_m;
wire  ch15_txpippmen_m;
wire [4:0] ch15_txpippmstepsize_m;
wire  ch15_txpisopd_m;
wire [2:0] ch15_txpmaresetmask_m;
wire  ch15_txpolarity_m;
wire [4:0] ch15_txpostcursor_m;
wire  ch15_txprbsforceerr_m;
wire [3:0] ch15_txprbssel_m;
wire [4:0] ch15_txprecursor_m;
wire  ch15_txprogdivreset_m;
wire [7:0] ch15_txrate_m;
wire [1:0] ch15_txresetmode_m;
wire [6:0] ch15_txsequence_m;
wire  ch15_txswing_m;
wire  ch15_txsyncallin_m;
wire  ch15_txuserrdy_m;
wire  ch15_txusrclk_m;
wire  ch15_scanclkb_m;
wire  ch15_scancntrlin_m;
wire  ch15_scanenb_m;
wire [3:0] ch15_scanin_m;
wire  ch15_scanrstb_m;

wire  q3_correcterr_m;
wire [31:0] q3_ctrlrsvdout_m;
wire [15:0] q3_debugtracetdata_m;
wire  q3_debugtracetvalid_m;
wire  q3_uncorrecterr_m;
wire  q3_xpipe_bufgtce_m;
wire [15:0] q3_gpo_m;
wire  q3_gtpowergood_m;
wire  q3_hsclk0_lcpllfbclklost_m;
wire  q3_hsclk0_lcplllock_m;
wire  q3_hsclk0_lcpllrefclklost_m;
wire  q3_hsclk0_lcpllrefclkmonitor_m;
wire [7:0] q3_hsclk0_lcpllrsvdout_m;
wire  q3_hsclk0_rpllfbclklost_m;
wire  q3_hsclk0_rplllock_m;
wire  q3_hsclk0_rpllrefclklost_m;
wire  q3_hsclk0_rpllrefclkmonitor_m;
wire [7:0] q3_hsclk0_rpllrsvdout_m;
wire  q3_hsclk1_lcpllfbclklost_m;
wire  q3_hsclk1_lcplllock_m;
wire  q3_hsclk1_lcpllrefclklost_m;
wire  q3_hsclk1_lcpllrefclkmonitor_m;

wire [7:0] q3_hsclk1_lcpllrsvdout_m;
wire  q3_hsclk1_rpllfbclklost_m;
wire  q3_hsclk1_rplllock_m;
wire  q3_hsclk1_rpllrefclklost_m;
wire  q3_hsclk1_rpllrefclkmonitor_m;
wire [7:0] q3_hsclk1_rpllrsvdout_m;
wire [15:0] q3_ctrlrsvdin0_m;
wire [13:0] q3_ctrlrsvdin1_m;

wire  q3_debugtraceclk_m;
wire  q3_debugtracetready_m;
wire [15:0] q3_gpi_m;
wire  q3_hsclk0_lcpllclkrsvd0_m;
wire  q3_hsclk0_lcpllclkrsvd1_m;
wire [7:0] q3_hsclk0_lcpllfbdiv_m;
wire  q3_hsclk0_lcpllpd_m;
wire [2:0] q3_hsclk0_lcpllrefclksel_m;
wire  q3_hsclk0_lcpllreset_m;
wire  q3_hsclk0_lcpllresetbypassmode_m;
wire [1:0] q3_hsclk0_lcpllresetmask_m;
wire [7:0] q3_hsclk0_lcpllrsvd0_m;
wire [7:0] q3_hsclk0_lcpllrsvd1_m;
wire [25:0] q3_hsclk0_lcpllsdmdata_m;
wire  q3_hsclk0_lcpllsdmtoggle_m;
wire  q3_hsclk0_rpllclkrsvd0_m;
wire  q3_hsclk0_rpllclkrsvd1_m;
wire [7:0] q3_hsclk0_rpllfbdiv_m;
wire  q3_hsclk0_rpllpd_m;
wire [2:0] q3_hsclk0_rpllrefclksel_m;
wire  q3_hsclk0_rpllreset_m;
wire  q3_hsclk0_rpllresetbypassmode_m;
wire [1:0] q3_hsclk0_rpllresetmask_m;
wire [7:0] q3_hsclk0_rpllrsvd0_m;
wire [7:0] q3_hsclk0_rpllrsvd1_m;
wire [25:0] q3_hsclk0_rpllsdmdata_m;
wire  q3_hsclk0_rpllsdmtoggle_m;
wire  q3_hsclk1_lcpllclkrsvd0_m;
wire  q3_hsclk1_lcpllclkrsvd1_m;
wire [7:0] q3_hsclk1_lcpllfbdiv_m;
wire  q3_hsclk1_lcpllpd_m;
wire [2:0] q3_hsclk1_lcpllrefclksel_m;
wire  q3_hsclk1_lcpllreset_m;
wire  q3_hsclk1_lcpllresetbypassmode_m;
wire [1:0] q3_hsclk1_lcpllresetmask_m;
wire [7:0] q3_hsclk1_lcpllrsvd0_m;
wire [7:0] q3_hsclk1_lcpllrsvd1_m;
wire [25:0] q3_hsclk1_lcpllsdmdata_m;
wire  q3_hsclk1_lcpllsdmtoggle_m;
wire  q3_hsclk1_rpllclkrsvd0_m;
wire  q3_hsclk1_rpllclkrsvd1_m;
wire [7:0] q3_hsclk1_rpllfbdiv_m;
wire  q3_hsclk1_rpllpd_m;
wire [2:0] q3_hsclk1_rpllrefclksel_m;
wire  q3_hsclk1_rpllreset_m;
wire  q3_hsclk1_rpllresetbypassmode_m;
wire [1:0] q3_hsclk1_rpllresetmask_m;
wire [7:0] q3_hsclk1_rpllrsvd0_m;
wire [7:0] q3_hsclk1_rpllrsvd1_m;
wire [25:0] q3_hsclk1_rpllsdmdata_m;
wire  q3_hsclk1_rpllsdmtoggle_m;
wire  s9_axis_tready_m;
wire [31:0] s9_axis_tdata_m;
wire  s9_axis_tlast_m;
wire  s9_axis_tvalid_m;
wire  s10_axis_tready_m;
wire [31:0] s10_axis_tdata_m;
wire  s10_axis_tlast_m;
wire  s10_axis_tvalid_m;
wire  s11_axis_tready_m;
wire [31:0] s11_axis_tdata_m;
wire  s11_axis_tlast_m;
wire  s11_axis_tvalid_m;
wire  q3_rxmarginreqack_m;
wire [3:0] q3_rxmarginrescmd_m;
wire [1:0] q3_rxmarginreslanenum_m;
wire [7:0] q3_rxmarginrespayld_m;
wire  q3_rxmarginresreq_m;
wire  m9_axis_tready_m;
wire  m10_axis_tready_m;
wire  m11_axis_tready_m;
wire  q3_trigackin0_m;
wire  q3_trigout0_m;
wire  q3_ubinterrupt_m;
wire  q3_ubtxuart_m;
wire  ch12_mstrxreset_m;
wire  ch12_msttxreset_m;
wire  ch13_mstrxreset_m;
wire  ch13_msttxreset_m;
wire  ch14_mstrxreset_m;
wire  ch14_msttxreset_m;
wire  ch15_mstrxreset_m;
wire  ch15_msttxreset_m;

wire  ch12_mstrxresetdone_m;
wire  ch12_msttxresetdone_m;
wire  ch13_mstrxresetdone_m;
wire  ch13_msttxresetdone_m;
wire  ch14_mstrxresetdone_m;
wire  ch14_msttxresetdone_m;
wire  ch15_mstrxresetdone_m;
wire  ch15_msttxresetdone_m;
wire  q3_pcielinkreachtarget_m;
wire [5:0] q3_pcieltssm_m;
wire  q3_rcalenb_m;
wire  q3_refclk0_clktestsig_m;
wire  q3_refclk1_clktestsig_m;
wire  q3_refclk0_gtrefclkpd_m;
wire  q3_refclk1_gtrefclkpd_m;
wire [3:0] q3_rxmarginreqcmd_m;
wire [1:0] q3_rxmarginreqlanenum_m;
wire [7:0] q3_rxmarginreqpayld_m;
wire  q3_rxmarginreqreq_m;
wire  q3_rxmarginresack_m;
wire [31:0] m9_axis_tdata_m;
wire  m9_axis_tlast_m;
wire  m9_axis_tvalid_m;
wire [31:0] m10_axis_tdata_m;
wire  m10_axis_tlast_m;
wire  m10_axis_tvalid_m;
wire [31:0] m11_axis_tdata_m;
wire  m11_axis_tlast_m;
wire  m11_axis_tvalid_m;
wire  q3_trigackout0_m;
wire  q3_trigin0_m;
wire  q3_ubenable_m;
wire [11:0] q3_ubintr_m;
wire  q3_ubiolmbrst_m;
wire  q3_ubmbrst_m;
wire  q3_ubrxuart_m;
