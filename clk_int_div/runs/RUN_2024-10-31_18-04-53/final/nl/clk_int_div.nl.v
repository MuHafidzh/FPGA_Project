module clk_int_div (clk_i,
    clk_o,
    div_ready_o,
    div_valid_i,
    en_i,
    rst_ni,
    test_mode_en_i,
    cycl_count_o,
    div_i);
 input clk_i;
 output clk_o;
 output div_ready_o;
 input div_valid_i;
 input en_i;
 input rst_ni;
 input test_mode_en_i;
 output [3:0] cycl_count_o;
 input [3:0] div_i;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire clk_div_bypass_en_q;
 wire \clk_gate_state_q[0] ;
 wire \clk_gate_state_q[1] ;
 wire \div_q[0] ;
 wire \div_q[1] ;
 wire \div_q[2] ;
 wire \div_q[3] ;
 wire even_clk;
 wire gate_en_d;
 wire gate_en_q;
 wire gate_is_open_q;
 wire \i_clk_gate.clk_en ;
 wire \i_clk_gate.en_i ;
 wire \i_clk_mux.clk_sel_i ;
 wire \i_odd_clk_xor.clk1_i ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;

 sky130_fd_sc_hd__inv_2 _077_ (.A(net11),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _078_ (.A(\clk_gate_state_q[0] ),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _079_ (.A(\clk_gate_state_q[1] ),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _080_ (.A(net14),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _081_ (.A(\i_clk_mux.clk_sel_i ),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _082_ (.A(net18),
    .Y(_003_));
 sky130_fd_sc_hd__xor2_1 _083_ (.A(\div_q[3] ),
    .B(net13),
    .X(_040_));
 sky130_fd_sc_hd__nand2_1 _084_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .Y(_041_));
 sky130_fd_sc_hd__and3_1 _085_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .X(_042_));
 sky130_fd_sc_hd__nand3_1 _086_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .Y(_043_));
 sky130_fd_sc_hd__nand2b_1 _087_ (.A_N(\div_q[3] ),
    .B(net14),
    .Y(_044_));
 sky130_fd_sc_hd__and2b_1 _088_ (.A_N(net14),
    .B(\div_q[3] ),
    .X(_045_));
 sky130_fd_sc_hd__and2b_1 _089_ (.A_N(_045_),
    .B(_040_),
    .X(_046_));
 sky130_fd_sc_hd__xor2_1 _090_ (.A(net12),
    .B(\div_q[2] ),
    .X(_047_));
 sky130_fd_sc_hd__or3_1 _091_ (.A(net7),
    .B(net6),
    .C(gate_is_open_q),
    .X(_048_));
 sky130_fd_sc_hd__a21oi_1 _092_ (.A1(_037_),
    .A2(_048_),
    .B1(\clk_gate_state_q[0] ),
    .Y(_049_));
 sky130_fd_sc_hd__and4bb_1 _093_ (.A_N(clk_div_bypass_en_q),
    .B_N(\clk_gate_state_q[1] ),
    .C(gate_is_open_q),
    .D(\clk_gate_state_q[0] ),
    .X(_050_));
 sky130_fd_sc_hd__xor2_1 _094_ (.A(\div_q[3] ),
    .B(net5),
    .X(_051_));
 sky130_fd_sc_hd__xor2_1 _095_ (.A(\div_q[1] ),
    .B(net3),
    .X(_052_));
 sky130_fd_sc_hd__xor2_1 _096_ (.A(\div_q[2] ),
    .B(net4),
    .X(_053_));
 sky130_fd_sc_hd__nor3_1 _097_ (.A(net3),
    .B(net5),
    .C(net4),
    .Y(_054_));
 sky130_fd_sc_hd__or2_1 _098_ (.A(net2),
    .B(_054_),
    .X(_055_));
 sky130_fd_sc_hd__xor2_1 _099_ (.A(\div_q[0] ),
    .B(_055_),
    .X(_056_));
 sky130_fd_sc_hd__or4_4 _100_ (.A(_051_),
    .B(_052_),
    .C(_053_),
    .D(_056_),
    .X(_057_));
 sky130_fd_sc_hd__or3b_1 _101_ (.A(\clk_gate_state_q[0] ),
    .B(\clk_gate_state_q[1] ),
    .C_N(net6),
    .X(_058_));
 sky130_fd_sc_hd__a211oi_1 _102_ (.A1(net6),
    .A2(_057_),
    .B1(\clk_gate_state_q[0] ),
    .C1(\clk_gate_state_q[1] ),
    .Y(gate_en_d));
 sky130_fd_sc_hd__and3b_4 _103_ (.A_N(_050_),
    .B(\clk_gate_state_q[0] ),
    .C(_037_),
    .X(_059_));
 sky130_fd_sc_hd__nor2_1 _104_ (.A(clk_div_bypass_en_q),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__or3_1 _105_ (.A(clk_div_bypass_en_q),
    .B(_049_),
    .C(_059_),
    .X(_061_));
 sky130_fd_sc_hd__nand2_1 _106_ (.A(net11),
    .B(\div_q[0] ),
    .Y(_062_));
 sky130_fd_sc_hd__or2_1 _107_ (.A(net11),
    .B(\div_q[0] ),
    .X(_063_));
 sky130_fd_sc_hd__xor2_1 _108_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .X(_064_));
 sky130_fd_sc_hd__a22oi_1 _109_ (.A1(_041_),
    .A2(_047_),
    .B1(_064_),
    .B2(_035_),
    .Y(_065_));
 sky130_fd_sc_hd__o2bb2a_1 _110_ (.A1_N(_040_),
    .A2_N(_043_),
    .B1(_064_),
    .B2(_035_),
    .X(_066_));
 sky130_fd_sc_hd__o221a_1 _111_ (.A1(_038_),
    .A2(_042_),
    .B1(_047_),
    .B2(_041_),
    .C1(_044_),
    .X(_067_));
 sky130_fd_sc_hd__o2111a_1 _112_ (.A1(_043_),
    .A2(_046_),
    .B1(_065_),
    .C1(_066_),
    .D1(_067_),
    .X(_068_));
 sky130_fd_sc_hd__or3b_1 _113_ (.A(_039_),
    .B(_061_),
    .C_N(_068_),
    .X(_069_));
 sky130_fd_sc_hd__xnor2_1 _114_ (.A(\i_odd_clk_xor.clk1_i ),
    .B(_069_),
    .Y(_006_));
 sky130_fd_sc_hd__o21bai_4 _115_ (.A1(_057_),
    .A2(_058_),
    .B1_N(_059_),
    .Y(net15));
 sky130_fd_sc_hd__and2_1 _116_ (.A(gate_en_q),
    .B(net7),
    .X(\i_clk_gate.en_i ));
 sky130_fd_sc_hd__nor2_1 _117_ (.A(clk_div_bypass_en_q),
    .B(net9),
    .Y(_070_));
 sky130_fd_sc_hd__nand2_1 _118_ (.A(\i_odd_clk_xor.clk1_i ),
    .B(\i_clk_mux.clk_sel_i ),
    .Y(_071_));
 sky130_fd_sc_hd__xnor2_1 _119_ (.A(even_clk),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__mux2_1 _120_ (.A0(net18),
    .A1(_072_),
    .S(_070_),
    .X(_002_));
 sky130_fd_sc_hd__inv_2 _121_ (.A(_002_),
    .Y(_001_));
 sky130_fd_sc_hd__and2_1 _122_ (.A(\i_clk_gate.clk_en ),
    .B(_002_),
    .X(net10));
 sky130_fd_sc_hd__or2_1 _123_ (.A(net9),
    .B(\i_clk_gate.en_i ),
    .X(_000_));
 sky130_fd_sc_hd__a41o_1 _124_ (.A1(_036_),
    .A2(_037_),
    .A3(net6),
    .A4(_057_),
    .B1(_050_),
    .X(_004_));
 sky130_fd_sc_hd__or3_1 _125_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .X(_073_));
 sky130_fd_sc_hd__o21ai_1 _126_ (.A1(\div_q[1] ),
    .A2(\div_q[0] ),
    .B1(\div_q[2] ),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_1 _127_ (.A(_073_),
    .B(_074_),
    .Y(_075_));
 sky130_fd_sc_hd__xor2_1 _128_ (.A(net13),
    .B(_075_),
    .X(_076_));
 sky130_fd_sc_hd__a21oi_1 _129_ (.A1(_044_),
    .A2(_073_),
    .B1(_045_),
    .Y(_018_));
 sky130_fd_sc_hd__o211a_1 _130_ (.A1(net12),
    .A2(_064_),
    .B1(_063_),
    .C1(_062_),
    .X(_019_));
 sky130_fd_sc_hd__a22o_1 _131_ (.A1(net12),
    .A2(_064_),
    .B1(_073_),
    .B2(_045_),
    .X(_020_));
 sky130_fd_sc_hd__or3b_1 _132_ (.A(_020_),
    .B(_018_),
    .C_N(_019_),
    .X(_021_));
 sky130_fd_sc_hd__o211a_1 _133_ (.A1(_076_),
    .A2(_021_),
    .B1(_036_),
    .C1(\clk_gate_state_q[1] ),
    .X(_022_));
 sky130_fd_sc_hd__or2_1 _134_ (.A(_059_),
    .B(_022_),
    .X(_005_));
 sky130_fd_sc_hd__xor2_1 _135_ (.A(net11),
    .B(\div_q[1] ),
    .X(_023_));
 sky130_fd_sc_hd__or4_1 _136_ (.A(\i_clk_mux.clk_sel_i ),
    .B(_040_),
    .C(_047_),
    .D(_023_),
    .X(_024_));
 sky130_fd_sc_hd__o31a_1 _137_ (.A1(net11),
    .A2(net12),
    .A3(net13),
    .B1(_024_),
    .X(_025_));
 sky130_fd_sc_hd__or3_1 _138_ (.A(net14),
    .B(_061_),
    .C(_025_),
    .X(_026_));
 sky130_fd_sc_hd__xnor2_1 _139_ (.A(even_clk),
    .B(_026_),
    .Y(_007_));
 sky130_fd_sc_hd__or3_2 _140_ (.A(\clk_gate_state_q[0] ),
    .B(\clk_gate_state_q[1] ),
    .C(_048_),
    .X(_027_));
 sky130_fd_sc_hd__o21ai_2 _141_ (.A1(_076_),
    .A2(_021_),
    .B1(_060_),
    .Y(_028_));
 sky130_fd_sc_hd__o31a_1 _142_ (.A1(\clk_gate_state_q[0] ),
    .A2(\clk_gate_state_q[1] ),
    .A3(_048_),
    .B1(net11),
    .X(_029_));
 sky130_fd_sc_hd__nor2_1 _143_ (.A(net11),
    .B(_027_),
    .Y(_030_));
 sky130_fd_sc_hd__a211oi_1 _144_ (.A1(_027_),
    .A2(_028_),
    .B1(_029_),
    .C1(_030_),
    .Y(_008_));
 sky130_fd_sc_hd__xnor2_1 _145_ (.A(net12),
    .B(_029_),
    .Y(_031_));
 sky130_fd_sc_hd__a21oi_1 _146_ (.A1(_027_),
    .A2(_028_),
    .B1(_031_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_1 _147_ (.A(net12),
    .B(net13),
    .C(_029_),
    .X(_032_));
 sky130_fd_sc_hd__a21oi_1 _148_ (.A1(net12),
    .A2(_029_),
    .B1(net13),
    .Y(_033_));
 sky130_fd_sc_hd__a211oi_1 _149_ (.A1(_027_),
    .A2(_028_),
    .B1(_032_),
    .C1(_033_),
    .Y(_010_));
 sky130_fd_sc_hd__xnor2_1 _150_ (.A(net14),
    .B(_032_),
    .Y(_034_));
 sky130_fd_sc_hd__a21oi_1 _151_ (.A1(_027_),
    .A2(_028_),
    .B1(_034_),
    .Y(_011_));
 sky130_fd_sc_hd__mux2_1 _152_ (.A0(\div_q[0] ),
    .A1(_055_),
    .S(_059_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _153_ (.A0(\div_q[1] ),
    .A1(net3),
    .S(_059_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _154_ (.A0(\div_q[2] ),
    .A1(net4),
    .S(_059_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _155_ (.A0(\div_q[3] ),
    .A1(net5),
    .S(_059_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _156_ (.A0(clk_div_bypass_en_q),
    .A1(_054_),
    .S(_059_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _157_ (.A0(\i_clk_mux.clk_sel_i ),
    .A1(_055_),
    .S(_059_),
    .X(_017_));
 sky130_fd_sc_hd__dfrtp_2 _158_ (.CLK(net18),
    .D(_004_),
    .RESET_B(net16),
    .Q(\clk_gate_state_q[0] ));
 sky130_fd_sc_hd__dfrtp_2 _159_ (.CLK(net18),
    .D(_005_),
    .RESET_B(net16),
    .Q(\clk_gate_state_q[1] ));
 sky130_fd_sc_hd__dfrtp_1 _160_ (.CLK(_002_),
    .D(\i_clk_gate.en_i ),
    .RESET_B(net16),
    .Q(gate_is_open_q));
 sky130_fd_sc_hd__dfrtp_1 _161_ (.CLK(_003_),
    .D(_006_),
    .RESET_B(net16),
    .Q(\i_odd_clk_xor.clk1_i ));
 sky130_fd_sc_hd__dfrtp_1 _162_ (.CLK(net19),
    .D(_007_),
    .RESET_B(net17),
    .Q(even_clk));
 sky130_fd_sc_hd__dfrtp_4 _163_ (.CLK(net19),
    .D(_008_),
    .RESET_B(net17),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_4 _164_ (.CLK(net19),
    .D(_009_),
    .RESET_B(net17),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_2 _165_ (.CLK(net19),
    .D(_010_),
    .RESET_B(net17),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_2 _166_ (.CLK(net19),
    .D(_011_),
    .RESET_B(net17),
    .Q(net14));
 sky130_fd_sc_hd__dfstp_2 _167_ (.CLK(net18),
    .D(_012_),
    .SET_B(net16),
    .Q(\div_q[0] ));
 sky130_fd_sc_hd__dfrtp_4 _168_ (.CLK(net18),
    .D(_013_),
    .RESET_B(net16),
    .Q(\div_q[1] ));
 sky130_fd_sc_hd__dfrtp_2 _169_ (.CLK(net18),
    .D(_014_),
    .RESET_B(net16),
    .Q(\div_q[2] ));
 sky130_fd_sc_hd__dfrtp_1 _170_ (.CLK(net18),
    .D(_015_),
    .RESET_B(net16),
    .Q(\div_q[3] ));
 sky130_fd_sc_hd__dfstp_1 _171_ (.CLK(net18),
    .D(_016_),
    .SET_B(net16),
    .Q(clk_div_bypass_en_q));
 sky130_fd_sc_hd__dfrtp_1 _172_ (.CLK(net19),
    .D(gate_en_d),
    .RESET_B(net17),
    .Q(gate_en_q));
 sky130_fd_sc_hd__dfrtp_1 _173_ (.CLK(net18),
    .D(_017_),
    .RESET_B(net16),
    .Q(\i_clk_mux.clk_sel_i ));
 sky130_fd_sc_hd__dlxtp_1 _174_ (.D(_000_),
    .GATE(_001_),
    .Q(\i_clk_gate.clk_en ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_65 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(clk_i),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(div_i[0]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(div_i[1]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(div_i[2]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(div_i[3]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(div_valid_i),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(en_i),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(rst_ni),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(test_mode_en_i),
    .X(net9));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(clk_o));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(cycl_count_o[0]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(cycl_count_o[1]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(cycl_count_o[2]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(cycl_count_o[3]));
 sky130_fd_sc_hd__buf_6 output15 (.A(net15),
    .X(div_ready_o));
 sky130_fd_sc_hd__clkbuf_4 fanout16 (.A(net8),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 fanout17 (.A(net8),
    .X(net17));
 sky130_fd_sc_hd__buf_2 fanout18 (.A(net1),
    .X(net18));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout19 (.A(net1),
    .X(net19));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_81 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_64 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_48 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_64 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_16 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_38 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_10 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_46 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_76 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_84 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_100 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_21 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_40 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_78 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_67 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_44 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_73 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_97 ();
endmodule
