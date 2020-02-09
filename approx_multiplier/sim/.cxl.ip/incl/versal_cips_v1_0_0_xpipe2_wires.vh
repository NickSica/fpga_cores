wire q2q3_gt_refclk1;
wire  q2_altclk_m;
wire [31:0] q2_apb3prdata_m;
wire  q2_apb3pready_m;
wire  q2_apb3pslverr_m;
wire [15:0] q2_apb3paddr_m;
wire  q2_apb3clk_m;
wire q2_axisclk_m;
wire  q2_apb3penable_m;
wire  q2_apb3presetn_m;
wire  q2_apb3psel_m;
wire [31:0] q2_apb3pwdata_m;
wire  q2_apb3pwrite_m;
wire  q2_bgbypassb_m;
wire  q2_bgmonitorenb_m;
wire  q2_bgpdb_m;
wire  q2_bgrcalovrdenb_m;
wire [4:0] q2_bgrcalovrd_m;
wire  q2_scanclkb_m;
wire  q2_scancntrlin_m;
wire  q2_scanenb_m;
wire [3:0] q2_scanin_m;
wire  q2_scanrstb_m;
wire  q2_xpscanclk_m;
wire  q2_xpscanenb_m;
wire [15:0] q2_xpscanin_m;
wire  q2_xpscanmodeb_m;
wire  q2_xpscanrstb_m;
wire  q2_cssdrstb_m;
wire  q2_cssdstopclk_m;
wire  q2_edtupdateb_m;
wire  ch8_txoutclk_m;
wire  ch8_rxoutclk_m;
wire  ch8_bufgtce_m;
wire [3:0] ch8_bufgtcemask_m;
wire [11:0] ch8_bufgtdiv_m;
wire  ch8_bufgtrst_m;
wire [3:0] ch8_bufgtrstmask_m;
wire [31:0] ch8_dmonitorout_m;
wire  ch8_eyescandataerror_m;
wire  ch8_iloresetdone_m;
wire [15:0] ch8_pcsrsvdout_m;
wire [15:0] ch8_pinrsvdas_m;
wire  ch8_phyready_m;
wire  ch8_phystatus_m;
wire  ch8_resetexception_m;
wire [7:0] ch8_rx10gstat_m;
wire [2:0] ch8_rxbufstatus_m;
wire  ch8_rxbyteisaligned_m;
wire  ch8_rxbyterealign_m;
wire  ch8_rxcdrlock_m;
wire  ch8_rxcdrphdone_m;
wire  ch8_rxchanbondseq_m;
wire  ch8_rxchanisaligned_m;
wire  ch8_rxchanrealign_m;
wire [4:0] ch8_rxchbondo_m;
wire [1:0] ch8_rxclkcorcnt_m;
wire  ch8_rxcominitdet_m;
wire  ch8_rxcommadet_m;
wire  ch8_rxcomsasdet_m;
wire  ch8_rxcomwakedet_m;
wire [15:0] ch8_rxctrl0_m;
wire [15:0] ch8_rxctrl1_m;
wire [7:0] ch8_rxctrl2_m;
wire [7:0] ch8_rxctrl3_m;
wire [127:0] ch8_rxdata_m;
wire [7:0] ch8_rxdataextendrsvd_m;
wire [1:0] ch8_rxdatavalid_m;
wire  ch8_rxdccdone_m;
wire  ch8_rxdlyalignerr_m;
wire  ch8_rxdlyalignprog_m;
wire  ch8_rxelecidle_m;
wire  ch8_rxfinealigndone_m;
wire [5:0] ch8_rxheader_m;
wire [1:0] ch8_rxheadervalid_m;
wire  ch8_rxosintdone_m;
wire  ch8_rxosintstarted_m;
wire  ch8_rxosintstrobedone_m;
wire  ch8_rxosintstrobestarted_m;
wire  ch8_rxphaligndone_m;
wire  ch8_rxphalignerr_m;
wire  ch8_rxphdlyresetdone_m;
wire  ch8_rxphsetinitdone_m;
wire  ch8_rxphshift180done_m;
wire  ch8_rxpmaresetdone_m;
wire  ch8_rxprbserr_m;
wire  ch8_rxprbslocked_m;
wire  ch8_rxresetdone_m;
wire  ch8_rxsliderdy_m;
wire [1:0] ch8_rxstartofseq_m;
wire [2:0] ch8_rxstatus_m;
wire  ch8_rxsyncdone_m;
wire  ch8_rxvalid_m;

wire  ch8_tstclk0_m  ;
wire  ch8_tstclk1_m  ;
wire  ch9_tstclk0_m  ;
wire  ch9_tstclk1_m  ;
wire  ch10_tstclk0_m  ;
wire  ch10_tstclk1_m  ;
wire  ch11_tstclk0_m  ;
wire  ch11_tstclk1_m  ;

wire  ch8_tx10gstat_m;
wire [1:0] ch8_txbufstatus_m;
wire  ch8_txcomfinish_m;
wire  ch8_txdccdone_m;
wire  ch8_txdlyalignerr_m;
wire  ch8_txdlyalignprog_m;
wire  ch8_txphaligndone_m;
wire  ch8_txphalignerr_m;
wire  ch8_txphalignoutrsvd_m;
wire  ch8_txphdlyresetdone_m;
wire  ch8_txphshift180done_m;
wire  ch8_txpmaresetdone_m;
wire  ch8_txresetdone_m;
wire  ch8_txsyncdone_m;
wire  ch8_cdrbmcdrreq_m;
wire  ch8_cdrfreqos_m;
wire  ch8_cdrincpctrl_m;
wire  ch8_cdrstepdir_m;
wire  ch8_cdrstepsq_m;
wire  ch8_cdrstepsx_m;
wire  ch8_clkrsvd0_m;
wire  ch8_clkrsvd1_m;
wire  ch8_cssdrstb_m;
wire  ch8_cssdstopclk_m;
wire  ch8_edtupdateb_m;
wire  ch8_dmonfiforeset_m;
wire  ch8_dmonitorclk_m;
wire  ch8_eyescanreset_m;
wire  ch8_eyescantrigger_m;
wire [15:0] ch8_gtrsvd_m;
wire  ch8_gtrxreset_m;
wire  ch8_gttxreset_m;
wire  ch8_hsdppcsreset_m;
wire  ch8_iloreset_m;
wire  ch8_iloresetmask_m;
wire [2:0] ch8_loopback_m;
wire  ch8_pcierstb_m;
wire [15:0] ch8_pcsrsvdin_m;
wire  ch8_phyesmadaptsave_m;
wire  ch8_rxcdrhold_m;
wire  ch8_rxcdrovrden_m;
wire  ch8_rxcdrreset_m;
wire [4:0] ch8_rxchbondi_m;
wire  ch8_rxdapicodeovrden_m;
wire  ch8_rxdapicodereset_m;
wire  ch8_rxdlyalignreq_m;
wire  ch8_rxeqtraining_m;
wire  ch8_rxgearboxslip_m;
wire  ch8_rxlatclk_m;
wire  ch8_rxlpmen_m;
wire  ch8_rxmldchaindone_m;
wire  ch8_rxmldchainreq_m;
wire  ch8_rxmlfinealignreq_m;
wire  ch8_rxoobreset_m;
wire [4:0] ch8_rxpcsresetmask_m;
wire [1:0] ch8_rxpd_m;
wire  ch8_rxphalignreq_m;
wire [1:0] ch8_rxphalignresetmask_m;
wire  ch8_rxphdlypd_m;
wire  ch8_rxphdlyreset_m;
wire  ch8_rxphsetinitreq_m;
wire  ch8_rxphshift180_m;
wire [6:0] ch8_rxpmaresetmask_m;
wire  ch8_rxpolarity_m;
wire  ch8_rxprbscntreset_m;
wire [3:0] ch8_rxprbssel_m;
wire  ch8_rxprogdivreset_m;
wire [7:0] ch8_rxrate_m;
wire [1:0] ch8_rxresetmode_m;
wire  ch8_rxslide_m;
wire  ch8_rxsyncallin_m;
wire  ch8_rxtermination_m;
wire  ch8_rxuserrdy_m;
wire  ch8_rxusrclk_m;
wire [19:0] ch8_tstin_m;
wire  ch8_txcominit_m;
wire  ch8_txcomsas_m;
wire  ch8_txcomwake_m;
wire [15:0] ch8_txctrl0_m;
wire [15:0] ch8_txctrl1_m;
wire [7:0] ch8_txctrl2_m;
wire  ch8_txdapicodeovrden_m;
wire  ch8_txdapicodereset_m;
wire [127:0] ch8_txdata_m;
wire [7:0] ch8_txdataextendrsvd_m;
wire [1:0] ch8_txdeemph_m;
wire  ch8_txdetectrx_m;
wire [4:0] ch8_txdiffctrl_m;
wire  ch8_txdlyalignreq_m;
wire  ch8_txelecidle_m;
wire [5:0] ch8_txheader_m;
wire  ch8_txinhibit_m;
wire  ch8_txlatclk_m;
wire [6:0] ch8_txmaincursor_m;
wire [2:0] ch8_txmargin_m;
wire  ch8_txmldchaindone_m;
wire  ch8_txmldchainreq_m;
wire  ch8_txoneszeros_m;
wire  ch8_txpausedelayalign_m;
wire  ch8_txpcsresetmask_m;
wire [1:0] ch8_txpd_m;
wire  ch8_txphalignreq_m;
wire [1:0] ch8_txphalignresetmask_m;
wire  ch8_txphdlypd_m;
wire  ch8_txphdlyreset_m;
wire  ch8_txphdlytstclk_m;
wire  ch8_txphsetinitreq_m;
wire  ch8_txphshift180_m;
wire  ch8_txpicodeovrden_m;
wire  ch8_txpicodereset_m;
wire  ch8_txpippmen_m;
wire [4:0] ch8_txpippmstepsize_m;
wire  ch8_txpisopd_m;
wire [2:0] ch8_txpmaresetmask_m;
wire  ch8_txpolarity_m;
wire [4:0] ch8_txpostcursor_m;
wire  ch8_txprbsforceerr_m;
wire [3:0] ch8_txprbssel_m;
wire [4:0] ch8_txprecursor_m;
wire  ch8_txprogdivreset_m;
wire [7:0] ch8_txrate_m;
wire [1:0] ch8_txresetmode_m;
wire [6:0] ch8_txsequence_m;
wire  ch8_txswing_m;
wire  ch8_txsyncallin_m;
wire  ch8_txuserrdy_m;
wire  ch8_txusrclk_m;
wire  ch8_scanclkb_m;
wire  ch8_scancntrlin_m;
wire  ch8_scanenb_m;
wire [3:0] ch8_scanin_m;
wire  ch8_scanrstb_m;

wire  ch9_bufgtce_m;
wire [3:0] ch9_bufgtcemask_m;
wire [11:0] ch9_bufgtdiv_m;
wire  ch9_bufgtrst_m;
wire [3:0] ch9_bufgtrstmask_m;
wire [31:0] ch9_dmonitorout_m;
wire  ch9_eyescandataerror_m;
wire  ch9_iloresetdone_m;
wire [15:0] ch9_pcsrsvdout_m;
wire [15:0] ch9_pinrsvdas_m;
wire  ch9_phyready_m;
wire  ch9_phystatus_m;
wire  ch9_resetexception_m;
wire [7:0] ch9_rx10gstat_m;
wire [2:0] ch9_rxbufstatus_m;
wire  ch9_rxbyteisaligned_m;
wire  ch9_rxbyterealign_m;
wire  ch9_rxcdrlock_m;
wire  ch9_rxcdrphdone_m;
wire  ch9_rxchanbondseq_m;
wire  ch9_rxchanisaligned_m;
wire  ch9_rxchanrealign_m;
wire [4:0] ch9_rxchbondo_m;
wire [1:0] ch9_rxclkcorcnt_m;
wire  ch9_rxcominitdet_m;
wire  ch9_rxcommadet_m;
wire  ch9_rxcomsasdet_m;
wire  ch9_rxcomwakedet_m;
wire [15:0] ch9_rxctrl0_m;
wire [15:0] ch9_rxctrl1_m;
wire [7:0] ch9_rxctrl2_m;
wire [7:0] ch9_rxctrl3_m;
wire [127:0] ch9_rxdata_m;
wire [7:0] ch9_rxdataextendrsvd_m;
wire [1:0] ch9_rxdatavalid_m;
wire  ch9_rxdccdone_m;
wire  ch9_rxdlyalignerr_m;
wire  ch9_rxdlyalignprog_m;
wire  ch9_rxelecidle_m;
wire  ch9_rxfinealigndone_m;
wire [5:0] ch9_rxheader_m;
wire [1:0] ch9_rxheadervalid_m;
wire  ch9_rxosintdone_m;
wire  ch9_rxosintstarted_m;
wire  ch9_rxosintstrobedone_m;
wire  ch9_rxosintstrobestarted_m;
wire  ch9_rxphaligndone_m;
wire  ch9_rxphalignerr_m;
wire  ch9_rxphdlyresetdone_m;
wire  ch9_rxphsetinitdone_m;
wire  ch9_rxphshift180done_m;
wire  ch9_rxpmaresetdone_m;
wire  ch9_rxprbserr_m;
wire  ch9_rxprbslocked_m;
wire  ch9_rxresetdone_m;
wire  ch9_rxsliderdy_m;
wire [1:0] ch9_rxstartofseq_m;
wire [2:0] ch9_rxstatus_m;
wire  ch9_rxsyncdone_m;
wire  ch9_rxvalid_m;
wire  ch9_tx10gstat_m;
wire [1:0] ch9_txbufstatus_m;
wire  ch9_txcomfinish_m;
wire  ch9_txdccdone_m;
wire  ch9_txdlyalignerr_m;
wire  ch9_txdlyalignprog_m;
wire  ch9_txphaligndone_m;
wire  ch9_txphalignerr_m;
wire  ch9_txphalignoutrsvd_m;
wire  ch9_txphdlyresetdone_m;
wire  ch9_txphshift180done_m;
wire  ch9_txpmaresetdone_m;
wire  ch9_txresetdone_m;
wire  ch9_txsyncdone_m;
wire  ch9_cdrbmcdrreq_m;
wire  ch9_cdrfreqos_m;
wire  ch9_cdrincpctrl_m;
wire  ch9_cdrstepdir_m;
wire  ch9_cdrstepsq_m;
wire  ch9_cdrstepsx_m;
wire  ch9_clkrsvd0_m;
wire  ch9_clkrsvd1_m;
wire  ch9_cssdrstb_m;
wire  ch9_cssdstopclk_m;
wire  ch9_edtupdateb_m;
wire  ch9_dmonfiforeset_m;
wire  ch9_dmonitorclk_m;
wire  ch9_eyescanreset_m;
wire  ch9_eyescantrigger_m;
wire [15:0] ch9_gtrsvd_m;
wire  ch9_gtrxreset_m;
wire  ch9_gttxreset_m;
wire  ch9_hsdppcsreset_m;
wire  ch9_iloreset_m;
wire  ch9_iloresetmask_m;
wire [2:0] ch9_loopback_m;
wire  ch9_pcierstb_m;
wire [15:0] ch9_pcsrsvdin_m;
wire  ch9_phyesmadaptsave_m;
wire  ch9_rxcdrhold_m;
wire  ch9_rxcdrovrden_m;
wire  ch9_rxcdrreset_m;
wire [4:0] ch9_rxchbondi_m;
wire  ch9_rxdapicodeovrden_m;
wire  ch9_rxdapicodereset_m;
wire  ch9_rxdlyalignreq_m;
wire  ch9_rxeqtraining_m;
wire  ch9_rxgearboxslip_m;
wire  ch9_rxlatclk_m;
wire  ch9_rxlpmen_m;
wire  ch9_rxmldchaindone_m;
wire  ch9_rxmldchainreq_m;
wire  ch9_rxmlfinealignreq_m;
wire  ch9_rxoobreset_m;
wire [4:0] ch9_rxpcsresetmask_m;
wire [1:0] ch9_rxpd_m;
wire  ch9_rxphalignreq_m;
wire [1:0] ch9_rxphalignresetmask_m;
wire  ch9_rxphdlypd_m;
wire  ch9_rxphdlyreset_m;
wire  ch9_rxphsetinitreq_m;
wire  ch9_rxphshift180_m;
wire [6:0] ch9_rxpmaresetmask_m;
wire  ch9_rxpolarity_m;
wire  ch9_rxprbscntreset_m;
wire [3:0] ch9_rxprbssel_m;
wire  ch9_rxprogdivreset_m;
wire [7:0] ch9_rxrate_m;
wire [1:0] ch9_rxresetmode_m;
wire  ch9_rxslide_m;
wire  ch9_rxsyncallin_m;
wire  ch9_rxtermination_m;
wire  ch9_rxuserrdy_m;
wire  ch9_rxusrclk_m;
wire [19:0] ch9_tstin_m;
wire  ch9_txcominit_m;
wire  ch9_txcomsas_m;
wire  ch9_txcomwake_m;
wire [15:0] ch9_txctrl0_m;
wire [15:0] ch9_txctrl1_m;
wire [7:0] ch9_txctrl2_m;
wire  ch9_txdapicodeovrden_m;
wire  ch9_txdapicodereset_m;
wire [127:0] ch9_txdata_m;
wire [7:0] ch9_txdataextendrsvd_m;
wire [1:0] ch9_txdeemph_m;
wire  ch9_txdetectrx_m;
wire [4:0] ch9_txdiffctrl_m;
wire  ch9_txdlyalignreq_m;
wire  ch9_txelecidle_m;
wire [5:0] ch9_txheader_m;
wire  ch9_txinhibit_m;
wire  ch9_txlatclk_m;
wire [6:0] ch9_txmaincursor_m;
wire [2:0] ch9_txmargin_m;
wire  ch9_txmldchaindone_m;
wire  ch9_txmldchainreq_m;
wire  ch9_txoneszeros_m;
wire  ch9_txpausedelayalign_m;
wire  ch9_txpcsresetmask_m;
wire [1:0] ch9_txpd_m;
wire  ch9_txphalignreq_m;
wire [1:0] ch9_txphalignresetmask_m;
wire  ch9_txphdlypd_m;
wire  ch9_txphdlyreset_m;
wire  ch9_txphdlytstclk_m;
wire  ch9_txphsetinitreq_m;
wire  ch9_txphshift180_m;
wire  ch9_txpicodeovrden_m;
wire  ch9_txpicodereset_m;
wire  ch9_txpippmen_m;
wire [4:0] ch9_txpippmstepsize_m;
wire  ch9_txpisopd_m;
wire [2:0] ch9_txpmaresetmask_m;
wire  ch9_txpolarity_m;
wire [4:0] ch9_txpostcursor_m;
wire  ch9_txprbsforceerr_m;
wire [3:0] ch9_txprbssel_m;
wire [4:0] ch9_txprecursor_m;
wire  ch9_txprogdivreset_m;
wire [7:0] ch9_txrate_m;
wire [1:0] ch9_txresetmode_m;
wire [6:0] ch9_txsequence_m;
wire  ch9_txswing_m;
wire  ch9_txsyncallin_m;
wire  ch9_txuserrdy_m;
wire  ch9_txusrclk_m;
wire  ch9_scanclkb_m;
wire  ch9_scancntrlin_m;
wire  ch9_scanenb_m;
wire [3:0] ch9_scanin_m;
wire  ch9_scanrstb_m;

wire  ch10_bufgtce_m;
wire [3:0] ch10_bufgtcemask_m;
wire [11:0] ch10_bufgtdiv_m;
wire  ch10_bufgtrst_m;
wire [3:0] ch10_bufgtrstmask_m;
wire [31:0] ch10_dmonitorout_m;
wire  ch10_eyescandataerror_m;
wire  ch10_iloresetdone_m;
wire [15:0] ch10_pcsrsvdout_m;
wire [15:0] ch10_pinrsvdas_m;
wire  ch10_phyready_m;
wire  ch10_phystatus_m;
wire  ch10_resetexception_m;
wire [7:0] ch10_rx10gstat_m;
wire [2:0] ch10_rxbufstatus_m;
wire  ch10_rxbyteisaligned_m;
wire  ch10_rxbyterealign_m;
wire  ch10_rxcdrlock_m;
wire  ch10_rxcdrphdone_m;
wire  ch10_rxchanbondseq_m;
wire  ch10_rxchanisaligned_m;
wire  ch10_rxchanrealign_m;
wire [4:0] ch10_rxchbondo_m;
wire [1:0] ch10_rxclkcorcnt_m;
wire  ch10_rxcominitdet_m;
wire  ch10_rxcommadet_m;
wire  ch10_rxcomsasdet_m;
wire  ch10_rxcomwakedet_m;
wire [15:0] ch10_rxctrl0_m;
wire [15:0] ch10_rxctrl1_m;
wire [7:0] ch10_rxctrl2_m;
wire [7:0] ch10_rxctrl3_m;
wire [127:0] ch10_rxdata_m;
wire [7:0] ch10_rxdataextendrsvd_m;
wire [1:0] ch10_rxdatavalid_m;
wire  ch10_rxdccdone_m;
wire  ch10_rxdlyalignerr_m;
wire  ch10_rxdlyalignprog_m;
wire  ch10_rxelecidle_m;
wire  ch10_rxfinealigndone_m;
wire [5:0] ch10_rxheader_m;
wire [1:0] ch10_rxheadervalid_m;
wire  ch10_rxosintdone_m;
wire  ch10_rxosintstarted_m;
wire  ch10_rxosintstrobedone_m;
wire  ch10_rxosintstrobestarted_m;
wire  ch10_rxphaligndone_m;
wire  ch10_rxphalignerr_m;
wire  ch10_rxphdlyresetdone_m;
wire  ch10_rxphsetinitdone_m;
wire  ch10_rxphshift180done_m;
wire  ch10_rxpmaresetdone_m;
wire  ch10_rxprbserr_m;
wire  ch10_rxprbslocked_m;
wire  ch10_rxresetdone_m;
wire  ch10_rxsliderdy_m;
wire [1:0] ch10_rxstartofseq_m;
wire [2:0] ch10_rxstatus_m;
wire  ch10_rxsyncdone_m;
wire  ch10_rxvalid_m;
wire  ch10_tx10gstat_m;
wire [1:0] ch10_txbufstatus_m;
wire  ch10_txcomfinish_m;
wire  ch10_txdccdone_m;
wire  ch10_txdlyalignerr_m;
wire  ch10_txdlyalignprog_m;
wire  ch10_txphaligndone_m;
wire  ch10_txphalignerr_m;
wire  ch10_txphalignoutrsvd_m;
wire  ch10_txphdlyresetdone_m;
wire  ch10_txphshift180done_m;
wire  ch10_txpmaresetdone_m;
wire  ch10_txresetdone_m;
wire  ch10_txsyncdone_m;
wire  ch10_cdrbmcdrreq_m;
wire  ch10_cdrfreqos_m;
wire  ch10_cdrincpctrl_m;
wire  ch10_cdrstepdir_m;
wire  ch10_cdrstepsq_m;
wire  ch10_cdrstepsx_m;
wire  ch10_clkrsvd0_m;
wire  ch10_clkrsvd1_m;
wire  ch10_cssdrstb_m;
wire  ch10_cssdstopclk_m;
wire  ch10_edtupdateb_m;
wire  ch10_dmonfiforeset_m;
wire  ch10_dmonitorclk_m;
wire  ch10_eyescanreset_m;
wire  ch10_eyescantrigger_m;
wire [15:0] ch10_gtrsvd_m;
wire  ch10_gtrxreset_m;
wire  ch10_gttxreset_m;
wire  ch10_hsdppcsreset_m;
wire  ch10_iloreset_m;
wire  ch10_iloresetmask_m;
wire [2:0] ch10_loopback_m;
wire  ch10_pcierstb_m;
wire [15:0] ch10_pcsrsvdin_m;
wire  ch10_phyesmadaptsave_m;
wire  ch10_rxcdrhold_m;
wire  ch10_rxcdrovrden_m;
wire  ch10_rxcdrreset_m;
wire [4:0] ch10_rxchbondi_m;
wire  ch10_rxdapicodeovrden_m;
wire  ch10_rxdapicodereset_m;
wire  ch10_rxdlyalignreq_m;
wire  ch10_rxeqtraining_m;
wire  ch10_rxgearboxslip_m;
wire  ch10_rxlatclk_m;
wire  ch10_rxlpmen_m;
wire  ch10_rxmldchaindone_m;
wire  ch10_rxmldchainreq_m;
wire  ch10_rxmlfinealignreq_m;
wire  ch10_rxoobreset_m;
wire [4:0] ch10_rxpcsresetmask_m;
wire [1:0] ch10_rxpd_m;
wire  ch10_rxphalignreq_m;
wire [1:0] ch10_rxphalignresetmask_m;
wire  ch10_rxphdlypd_m;
wire  ch10_rxphdlyreset_m;
wire  ch10_rxphsetinitreq_m;
wire  ch10_rxphshift180_m;
wire [6:0] ch10_rxpmaresetmask_m;
wire  ch10_rxpolarity_m;
wire  ch10_rxprbscntreset_m;
wire [3:0] ch10_rxprbssel_m;
wire  ch10_rxprogdivreset_m;
wire [7:0] ch10_rxrate_m;
wire [1:0] ch10_rxresetmode_m;
wire  ch10_rxslide_m;
wire  ch10_rxsyncallin_m;
wire  ch10_rxtermination_m;
wire  ch10_rxuserrdy_m;
wire  ch10_rxusrclk_m;
wire [19:0] ch10_tstin_m;
wire  ch10_txcominit_m;
wire  ch10_txcomsas_m;
wire  ch10_txcomwake_m;
wire [15:0] ch10_txctrl0_m;
wire [15:0] ch10_txctrl1_m;
wire [7:0] ch10_txctrl2_m;
wire  ch10_txdapicodeovrden_m;
wire  ch10_txdapicodereset_m;
wire [127:0] ch10_txdata_m;
wire [7:0] ch10_txdataextendrsvd_m;
wire [1:0] ch10_txdeemph_m;
wire  ch10_txdetectrx_m;
wire [4:0] ch10_txdiffctrl_m;
wire  ch10_txdlyalignreq_m;
wire  ch10_txelecidle_m;
wire [5:0] ch10_txheader_m;
wire  ch10_txinhibit_m;
wire  ch10_txlatclk_m;
wire [6:0] ch10_txmaincursor_m;
wire [2:0] ch10_txmargin_m;
wire  ch10_txmldchaindone_m;
wire  ch10_txmldchainreq_m;
wire  ch10_txoneszeros_m;
wire  ch10_txpausedelayalign_m;
wire  ch10_txpcsresetmask_m;
wire [1:0] ch10_txpd_m;
wire  ch10_txphalignreq_m;
wire [1:0] ch10_txphalignresetmask_m;
wire  ch10_txphdlypd_m;
wire  ch10_txphdlyreset_m;
wire  ch10_txphdlytstclk_m;
wire  ch10_txphsetinitreq_m;
wire  ch10_txphshift180_m;
wire  ch10_txpicodeovrden_m;
wire  ch10_txpicodereset_m;
wire  ch10_txpippmen_m;
wire [4:0] ch10_txpippmstepsize_m;
wire  ch10_txpisopd_m;
wire [2:0] ch10_txpmaresetmask_m;
wire  ch10_txpolarity_m;
wire [4:0] ch10_txpostcursor_m;
wire  ch10_txprbsforceerr_m;
wire [3:0] ch10_txprbssel_m;
wire [4:0] ch10_txprecursor_m;
wire  ch10_txprogdivreset_m;
wire [7:0] ch10_txrate_m;
wire [1:0] ch10_txresetmode_m;
wire [6:0] ch10_txsequence_m;
wire  ch10_txswing_m;
wire  ch10_txsyncallin_m;
wire  ch10_txuserrdy_m;
wire  ch10_txusrclk_m;
wire  ch10_scanclkb_m;
wire  ch10_scancntrlin_m;
wire  ch10_scanenb_m;
wire [3:0] ch10_scanin_m;
wire  ch10_scanrstb_m;

wire  ch11_bufgtce_m;
wire [3:0] ch11_bufgtcemask_m;
wire [11:0] ch11_bufgtdiv_m;
wire  ch11_bufgtrst_m;
wire [3:0] ch11_bufgtrstmask_m;
wire [31:0] ch11_dmonitorout_m;
wire  ch11_eyescandataerror_m;
wire  ch11_iloresetdone_m;
wire [15:0] ch11_pcsrsvdout_m;
wire [15:0] ch11_pinrsvdas_m;
wire  ch11_phyready_m;
wire  ch11_phystatus_m;
wire  ch11_resetexception_m;
wire [7:0] ch11_rx10gstat_m;
wire [2:0] ch11_rxbufstatus_m;
wire  ch11_rxbyteisaligned_m;
wire  ch11_rxbyterealign_m;
wire  ch11_rxcdrlock_m;
wire  ch11_rxcdrphdone_m;
wire  ch11_rxchanbondseq_m;
wire  ch11_rxchanisaligned_m;
wire  ch11_rxchanrealign_m;
wire [4:0] ch11_rxchbondo_m;
wire [1:0] ch11_rxclkcorcnt_m;
wire  ch11_rxcominitdet_m;
wire  ch11_rxcommadet_m;
wire  ch11_rxcomsasdet_m;
wire  ch11_rxcomwakedet_m;
wire [15:0] ch11_rxctrl0_m;
wire [15:0] ch11_rxctrl1_m;
wire [7:0] ch11_rxctrl2_m;
wire [7:0] ch11_rxctrl3_m;
wire [127:0] ch11_rxdata_m;
wire [7:0] ch11_rxdataextendrsvd_m;
wire [1:0] ch11_rxdatavalid_m;
wire  ch11_rxdccdone_m;
wire  ch11_rxdlyalignerr_m;
wire  ch11_rxdlyalignprog_m;
wire  ch11_rxelecidle_m;
wire  ch11_rxfinealigndone_m;
wire [5:0] ch11_rxheader_m;
wire [1:0] ch11_rxheadervalid_m;
wire  ch11_rxosintdone_m;
wire  ch11_rxosintstarted_m;
wire  ch11_rxosintstrobedone_m;
wire  ch11_rxosintstrobestarted_m;
wire  ch11_rxphaligndone_m;
wire  ch11_rxphalignerr_m;
wire  ch11_rxphdlyresetdone_m;
wire  ch11_rxphsetinitdone_m;
wire  ch11_rxphshift180done_m;
wire  ch11_rxpmaresetdone_m;
wire  ch11_rxprbserr_m;
wire  ch11_rxprbslocked_m;
wire  ch11_rxresetdone_m;
wire  ch11_rxsliderdy_m;
wire [1:0] ch11_rxstartofseq_m;
wire [2:0] ch11_rxstatus_m;
wire  ch11_rxsyncdone_m;
wire  ch11_rxvalid_m;
wire  ch11_tx10gstat_m;
wire [1:0] ch11_txbufstatus_m;
wire  ch11_txcomfinish_m;
wire  ch11_txdccdone_m;
wire  ch11_txdlyalignerr_m;
wire  ch11_txdlyalignprog_m;
wire  ch11_txphaligndone_m;
wire  ch11_txphalignerr_m;
wire  ch11_txphalignoutrsvd_m;
wire  ch11_txphdlyresetdone_m;
wire  ch11_txphshift180done_m;
wire  ch11_txpmaresetdone_m;
wire  ch11_txresetdone_m;
wire  ch11_txsyncdone_m;
wire  ch11_cdrbmcdrreq_m;
wire  ch11_cdrfreqos_m;
wire  ch11_cdrincpctrl_m;
wire  ch11_cdrstepdir_m;
wire  ch11_cdrstepsq_m;
wire  ch11_cdrstepsx_m;
wire  ch11_clkrsvd0_m;
wire  ch11_clkrsvd1_m;
wire  ch11_cssdrstb_m;
wire  ch11_cssdstopclk_m;
wire  ch11_edtupdateb_m;
wire  ch11_dmonfiforeset_m;
wire  ch11_dmonitorclk_m;
wire  ch11_eyescanreset_m;
wire  ch11_eyescantrigger_m;
wire [15:0] ch11_gtrsvd_m;
wire  ch11_gtrxreset_m;
wire  ch11_gttxreset_m;
wire  ch11_hsdppcsreset_m;
wire  ch11_iloreset_m;
wire  ch11_iloresetmask_m;
wire [2:0] ch11_loopback_m;
wire  ch11_pcierstb_m;
wire [15:0] ch11_pcsrsvdin_m;
wire  ch11_phyesmadaptsave_m;
wire  ch11_rxcdrhold_m;
wire  ch11_rxcdrovrden_m;
wire  ch11_rxcdrreset_m;
wire [4:0] ch11_rxchbondi_m;
wire  ch11_rxdapicodeovrden_m;
wire  ch11_rxdapicodereset_m;
wire  ch11_rxdlyalignreq_m;
wire  ch11_rxeqtraining_m;
wire  ch11_rxgearboxslip_m;
wire  ch11_rxlatclk_m;
wire  ch11_rxlpmen_m;
wire  ch11_rxmldchaindone_m;
wire  ch11_rxmldchainreq_m;
wire  ch11_rxmlfinealignreq_m;
wire  ch11_rxoobreset_m;
wire [4:0] ch11_rxpcsresetmask_m;
wire [1:0] ch11_rxpd_m;
wire  ch11_rxphalignreq_m;
wire [1:0] ch11_rxphalignresetmask_m;
wire  ch11_rxphdlypd_m;
wire  ch11_rxphdlyreset_m;
wire  ch11_rxphsetinitreq_m;
wire  ch11_rxphshift180_m;
wire [6:0] ch11_rxpmaresetmask_m;
wire  ch11_rxpolarity_m;
wire  ch11_rxprbscntreset_m;
wire [3:0] ch11_rxprbssel_m;
wire  ch11_rxprogdivreset_m;
wire [7:0] ch11_rxrate_m;
wire [1:0] ch11_rxresetmode_m;
wire  ch11_rxslide_m;
wire  ch11_rxsyncallin_m;
wire  ch11_rxtermination_m;
wire  ch11_rxuserrdy_m;
wire  ch11_rxusrclk_m;
wire [19:0] ch11_tstin_m;
wire  ch11_txcominit_m;
wire  ch11_txcomsas_m;
wire  ch11_txcomwake_m;
wire [15:0] ch11_txctrl0_m;
wire [15:0] ch11_txctrl1_m;
wire [7:0] ch11_txctrl2_m;
wire  ch11_txdapicodeovrden_m;
wire  ch11_txdapicodereset_m;
wire [127:0] ch11_txdata_m;
wire [7:0] ch11_txdataextendrsvd_m;
wire [1:0] ch11_txdeemph_m;
wire  ch11_txdetectrx_m;
wire [4:0] ch11_txdiffctrl_m;
wire  ch11_txdlyalignreq_m;
wire  ch11_txelecidle_m;
wire [5:0] ch11_txheader_m;
wire  ch11_txinhibit_m;
wire  ch11_txlatclk_m;
wire [6:0] ch11_txmaincursor_m;
wire [2:0] ch11_txmargin_m;
wire  ch11_txmldchaindone_m;
wire  ch11_txmldchainreq_m;
wire  ch11_txoneszeros_m;
wire  ch11_txpausedelayalign_m;
wire  ch11_txpcsresetmask_m;
wire [1:0] ch11_txpd_m;
wire  ch11_txphalignreq_m;
wire [1:0] ch11_txphalignresetmask_m;
wire  ch11_txphdlypd_m;
wire  ch11_txphdlyreset_m;
wire  ch11_txphdlytstclk_m;
wire  ch11_txphsetinitreq_m;
wire  ch11_txphshift180_m;
wire  ch11_txpicodeovrden_m;
wire  ch11_txpicodereset_m;
wire  ch11_txpippmen_m;
wire [4:0] ch11_txpippmstepsize_m;
wire  ch11_txpisopd_m;
wire [2:0] ch11_txpmaresetmask_m;
wire  ch11_txpolarity_m;
wire [4:0] ch11_txpostcursor_m;
wire  ch11_txprbsforceerr_m;
wire [3:0] ch11_txprbssel_m;
wire [4:0] ch11_txprecursor_m;
wire  ch11_txprogdivreset_m;
wire [7:0] ch11_txrate_m;
wire [1:0] ch11_txresetmode_m;
wire [6:0] ch11_txsequence_m;
wire  ch11_txswing_m;
wire  ch11_txsyncallin_m;
wire  ch11_txuserrdy_m;
wire  ch11_txusrclk_m;
wire  ch11_scanclkb_m;
wire  ch11_scancntrlin_m;
wire  ch11_scanenb_m;
wire [3:0] ch11_scanin_m;
wire  ch11_scanrstb_m;

wire  q2_correcterr_m;
wire [31:0] q2_ctrlrsvdout_m;
wire [15:0] q2_debugtracetdata_m;
wire  q2_debugtracetvalid_m;
wire  q2_uncorrecterr_m;
wire  q2_xpipe_bufgtce_m;
wire [15:0] q2_gpo_m;
wire  q2_gtpowergood_m;
wire  q2_hsclk0_lcpllfbclklost_m;
wire  q2_hsclk0_lcplllock_m;
wire  q2_hsclk0_lcpllrefclklost_m;
wire  q2_hsclk0_lcpllrefclkmonitor_m;
wire [7:0] q2_hsclk0_lcpllrsvdout_m;
wire  q2_hsclk0_rpllfbclklost_m;
wire  q2_hsclk0_rplllock_m;
wire  q2_hsclk0_rpllrefclklost_m;
wire  q2_hsclk0_rpllrefclkmonitor_m;
wire [7:0] q2_hsclk0_rpllrsvdout_m;
wire  q2_hsclk1_lcpllfbclklost_m;
wire  q2_hsclk1_lcplllock_m;
wire  q2_hsclk1_lcpllrefclklost_m;
wire  q2_hsclk1_lcpllrefclkmonitor_m;

wire [7:0] q2_hsclk1_lcpllrsvdout_m;
wire  q2_hsclk1_rpllfbclklost_m;
wire  q2_hsclk1_rplllock_m;
wire  q2_hsclk1_rpllrefclklost_m;
wire  q2_hsclk1_rpllrefclkmonitor_m;
wire [7:0] q2_hsclk1_rpllrsvdout_m;
wire [15:0] q2_ctrlrsvdin0_m;
wire [13:0] q2_ctrlrsvdin1_m;

wire  q2_debugtraceclk_m;
wire  q2_debugtracetready_m;
wire [15:0] q2_gpi_m;
wire  q2_hsclk0_lcpllclkrsvd0_m;
wire  q2_hsclk0_lcpllclkrsvd1_m;
wire [7:0] q2_hsclk0_lcpllfbdiv_m;
wire  q2_hsclk0_lcpllpd_m;
wire [2:0] q2_hsclk0_lcpllrefclksel_m;
wire  q2_hsclk0_lcpllreset_m;
wire  q2_hsclk0_lcpllresetbypassmode_m;
wire [1:0] q2_hsclk0_lcpllresetmask_m;
wire [7:0] q2_hsclk0_lcpllrsvd0_m;
wire [7:0] q2_hsclk0_lcpllrsvd1_m;
wire [25:0] q2_hsclk0_lcpllsdmdata_m;
wire  q2_hsclk0_lcpllsdmtoggle_m;
wire  q2_hsclk0_rpllclkrsvd0_m;
wire  q2_hsclk0_rpllclkrsvd1_m;
wire [7:0] q2_hsclk0_rpllfbdiv_m;
wire  q2_hsclk0_rpllpd_m;
wire [2:0] q2_hsclk0_rpllrefclksel_m;
wire  q2_hsclk0_rpllreset_m;
wire  q2_hsclk0_rpllresetbypassmode_m;
wire [1:0] q2_hsclk0_rpllresetmask_m;
wire [7:0] q2_hsclk0_rpllrsvd0_m;
wire [7:0] q2_hsclk0_rpllrsvd1_m;
wire [25:0] q2_hsclk0_rpllsdmdata_m;
wire  q2_hsclk0_rpllsdmtoggle_m;
wire  q2_hsclk1_lcpllclkrsvd0_m;
wire  q2_hsclk1_lcpllclkrsvd1_m;
wire [7:0] q2_hsclk1_lcpllfbdiv_m;
wire  q2_hsclk1_lcpllpd_m;
wire [2:0] q2_hsclk1_lcpllrefclksel_m;
wire  q2_hsclk1_lcpllreset_m;
wire  q2_hsclk1_lcpllresetbypassmode_m;
wire [1:0] q2_hsclk1_lcpllresetmask_m;
wire [7:0] q2_hsclk1_lcpllrsvd0_m;
wire [7:0] q2_hsclk1_lcpllrsvd1_m;
wire [25:0] q2_hsclk1_lcpllsdmdata_m;
wire  q2_hsclk1_lcpllsdmtoggle_m;
wire  q2_hsclk1_rpllclkrsvd0_m;
wire  q2_hsclk1_rpllclkrsvd1_m;
wire [7:0] q2_hsclk1_rpllfbdiv_m;
wire  q2_hsclk1_rpllpd_m;
wire [2:0] q2_hsclk1_rpllrefclksel_m;
wire  q2_hsclk1_rpllreset_m;
wire  q2_hsclk1_rpllresetbypassmode_m;
wire [1:0] q2_hsclk1_rpllresetmask_m;
wire [7:0] q2_hsclk1_rpllrsvd0_m;
wire [7:0] q2_hsclk1_rpllrsvd1_m;
wire [25:0] q2_hsclk1_rpllsdmdata_m;
wire  q2_hsclk1_rpllsdmtoggle_m;
wire  s6_axis_tready_m;
wire [31:0] s6_axis_tdata_m;
wire  s6_axis_tlast_m;
wire  s6_axis_tvalid_m;
wire  s7_axis_tready_m;
wire [31:0] s7_axis_tdata_m;
wire  s7_axis_tlast_m;
wire  s7_axis_tvalid_m;
wire  s8_axis_tready_m;
wire [31:0] s8_axis_tdata_m;
wire  s8_axis_tlast_m;
wire  s8_axis_tvalid_m;
wire  q2_rxmarginreqack_m;
wire [3:0] q2_rxmarginrescmd_m;
wire [1:0] q2_rxmarginreslanenum_m;
wire [7:0] q2_rxmarginrespayld_m;
wire  q2_rxmarginresreq_m;
wire  m6_axis_tready_m;
wire  m7_axis_tready_m;
wire  m8_axis_tready_m;
wire  q2_trigackin0_m;
wire  q2_trigout0_m;
wire  q2_ubinterrupt_m;
wire  q2_ubtxuart_m;
wire  ch8_mstrxreset_m;
wire  ch8_msttxreset_m;
wire  ch9_mstrxreset_m;
wire  ch9_msttxreset_m;
wire  ch10_mstrxreset_m;
wire  ch10_msttxreset_m;
wire  ch11_mstrxreset_m;
wire  ch11_msttxreset_m;

wire  ch8_mstrxresetdone_m;
wire  ch8_msttxresetdone_m;
wire  ch9_mstrxresetdone_m;
wire  ch9_msttxresetdone_m;
wire  ch10_mstrxresetdone_m;
wire  ch10_msttxresetdone_m;
wire  ch11_mstrxresetdone_m;
wire  ch11_msttxresetdone_m;
wire  q2_pcielinkreachtarget_m;
wire [5:0] q2_pcieltssm_m;
wire  q2_rcalenb_m;
wire  q2_refclk0_clktestsig_m;
wire  q2_refclk1_clktestsig_m;
wire  q2_refclk0_gtrefclkpd_m;
wire  q2_refclk1_gtrefclkpd_m;
wire [3:0] q2_rxmarginreqcmd_m;
wire [1:0] q2_rxmarginreqlanenum_m;
wire [7:0] q2_rxmarginreqpayld_m;
wire  q2_rxmarginreqreq_m;
wire  q2_rxmarginresack_m;
wire [31:0] m6_axis_tdata_m;
wire  m6_axis_tlast_m;
wire  m6_axis_tvalid_m;
wire [31:0] m7_axis_tdata_m;
wire  m7_axis_tlast_m;
wire  m7_axis_tvalid_m;
wire [31:0] m8_axis_tdata_m;
wire  m8_axis_tlast_m;
wire  m8_axis_tvalid_m;
wire  q2_trigackout0_m;
wire  q2_trigin0_m;
wire  q2_ubenable_m;
wire [11:0] q2_ubintr_m;
wire  q2_ubiolmbrst_m;
wire  q2_ubmbrst_m;
wire  q2_ubrxuart_m;
wire q2_refclk1_gtrefclkpdint;
