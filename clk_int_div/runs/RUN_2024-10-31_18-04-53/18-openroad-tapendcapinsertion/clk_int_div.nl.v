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

 sky130_fd_sc_hd__inv_2 _077_ (.A(cycl_count_o[0]),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _078_ (.A(\clk_gate_state_q[0] ),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _079_ (.A(\clk_gate_state_q[1] ),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _080_ (.A(cycl_count_o[3]),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _081_ (.A(\i_clk_mux.clk_sel_i ),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _082_ (.A(clk_i),
    .Y(_003_));
 sky130_fd_sc_hd__xor2_2 _083_ (.A(\div_q[3] ),
    .B(cycl_count_o[2]),
    .X(_040_));
 sky130_fd_sc_hd__nand2_2 _084_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .Y(_041_));
 sky130_fd_sc_hd__and3_2 _085_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .X(_042_));
 sky130_fd_sc_hd__nand3_2 _086_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .Y(_043_));
 sky130_fd_sc_hd__nand2b_2 _087_ (.A_N(\div_q[3] ),
    .B(cycl_count_o[3]),
    .Y(_044_));
 sky130_fd_sc_hd__and2b_2 _088_ (.A_N(cycl_count_o[3]),
    .B(\div_q[3] ),
    .X(_045_));
 sky130_fd_sc_hd__and2b_2 _089_ (.A_N(_045_),
    .B(_040_),
    .X(_046_));
 sky130_fd_sc_hd__xor2_2 _090_ (.A(cycl_count_o[1]),
    .B(\div_q[2] ),
    .X(_047_));
 sky130_fd_sc_hd__or3_2 _091_ (.A(en_i),
    .B(div_valid_i),
    .C(gate_is_open_q),
    .X(_048_));
 sky130_fd_sc_hd__a21oi_2 _092_ (.A1(_037_),
    .A2(_048_),
    .B1(\clk_gate_state_q[0] ),
    .Y(_049_));
 sky130_fd_sc_hd__and4bb_2 _093_ (.A_N(clk_div_bypass_en_q),
    .B_N(\clk_gate_state_q[1] ),
    .C(gate_is_open_q),
    .D(\clk_gate_state_q[0] ),
    .X(_050_));
 sky130_fd_sc_hd__xor2_2 _094_ (.A(\div_q[3] ),
    .B(div_i[3]),
    .X(_051_));
 sky130_fd_sc_hd__xor2_2 _095_ (.A(\div_q[1] ),
    .B(div_i[1]),
    .X(_052_));
 sky130_fd_sc_hd__xor2_2 _096_ (.A(\div_q[2] ),
    .B(div_i[2]),
    .X(_053_));
 sky130_fd_sc_hd__nor3_2 _097_ (.A(div_i[1]),
    .B(div_i[3]),
    .C(div_i[2]),
    .Y(_054_));
 sky130_fd_sc_hd__or2_2 _098_ (.A(div_i[0]),
    .B(_054_),
    .X(_055_));
 sky130_fd_sc_hd__xor2_2 _099_ (.A(\div_q[0] ),
    .B(_055_),
    .X(_056_));
 sky130_fd_sc_hd__or4_2 _100_ (.A(_051_),
    .B(_052_),
    .C(_053_),
    .D(_056_),
    .X(_057_));
 sky130_fd_sc_hd__or3b_2 _101_ (.A(\clk_gate_state_q[0] ),
    .B(\clk_gate_state_q[1] ),
    .C_N(div_valid_i),
    .X(_058_));
 sky130_fd_sc_hd__a211oi_2 _102_ (.A1(div_valid_i),
    .A2(_057_),
    .B1(\clk_gate_state_q[0] ),
    .C1(\clk_gate_state_q[1] ),
    .Y(gate_en_d));
 sky130_fd_sc_hd__and3b_2 _103_ (.A_N(_050_),
    .B(\clk_gate_state_q[0] ),
    .C(_037_),
    .X(_059_));
 sky130_fd_sc_hd__nor2_2 _104_ (.A(clk_div_bypass_en_q),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__or3_2 _105_ (.A(clk_div_bypass_en_q),
    .B(_049_),
    .C(_059_),
    .X(_061_));
 sky130_fd_sc_hd__nand2_2 _106_ (.A(cycl_count_o[0]),
    .B(\div_q[0] ),
    .Y(_062_));
 sky130_fd_sc_hd__or2_2 _107_ (.A(cycl_count_o[0]),
    .B(\div_q[0] ),
    .X(_063_));
 sky130_fd_sc_hd__xor2_2 _108_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .X(_064_));
 sky130_fd_sc_hd__a22oi_2 _109_ (.A1(_041_),
    .A2(_047_),
    .B1(_064_),
    .B2(_035_),
    .Y(_065_));
 sky130_fd_sc_hd__o2bb2a_2 _110_ (.A1_N(_040_),
    .A2_N(_043_),
    .B1(_064_),
    .B2(_035_),
    .X(_066_));
 sky130_fd_sc_hd__o221a_2 _111_ (.A1(_038_),
    .A2(_042_),
    .B1(_047_),
    .B2(_041_),
    .C1(_044_),
    .X(_067_));
 sky130_fd_sc_hd__o2111a_2 _112_ (.A1(_043_),
    .A2(_046_),
    .B1(_065_),
    .C1(_066_),
    .D1(_067_),
    .X(_068_));
 sky130_fd_sc_hd__or3b_2 _113_ (.A(_039_),
    .B(_061_),
    .C_N(_068_),
    .X(_069_));
 sky130_fd_sc_hd__xnor2_2 _114_ (.A(\i_odd_clk_xor.clk1_i ),
    .B(_069_),
    .Y(_006_));
 sky130_fd_sc_hd__o21bai_2 _115_ (.A1(_057_),
    .A2(_058_),
    .B1_N(_059_),
    .Y(div_ready_o));
 sky130_fd_sc_hd__and2_2 _116_ (.A(gate_en_q),
    .B(en_i),
    .X(\i_clk_gate.en_i ));
 sky130_fd_sc_hd__nor2_2 _117_ (.A(clk_div_bypass_en_q),
    .B(test_mode_en_i),
    .Y(_070_));
 sky130_fd_sc_hd__nand2_2 _118_ (.A(\i_odd_clk_xor.clk1_i ),
    .B(\i_clk_mux.clk_sel_i ),
    .Y(_071_));
 sky130_fd_sc_hd__xnor2_2 _119_ (.A(even_clk),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__mux2_1 _120_ (.A0(clk_i),
    .A1(_072_),
    .S(_070_),
    .X(_002_));
 sky130_fd_sc_hd__inv_2 _121_ (.A(_002_),
    .Y(_001_));
 sky130_fd_sc_hd__and2_2 _122_ (.A(\i_clk_gate.clk_en ),
    .B(_002_),
    .X(clk_o));
 sky130_fd_sc_hd__or2_2 _123_ (.A(test_mode_en_i),
    .B(\i_clk_gate.en_i ),
    .X(_000_));
 sky130_fd_sc_hd__a41o_2 _124_ (.A1(_036_),
    .A2(_037_),
    .A3(div_valid_i),
    .A4(_057_),
    .B1(_050_),
    .X(_004_));
 sky130_fd_sc_hd__or3_2 _125_ (.A(\div_q[1] ),
    .B(\div_q[0] ),
    .C(\div_q[2] ),
    .X(_073_));
 sky130_fd_sc_hd__o21ai_2 _126_ (.A1(\div_q[1] ),
    .A2(\div_q[0] ),
    .B1(\div_q[2] ),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_2 _127_ (.A(_073_),
    .B(_074_),
    .Y(_075_));
 sky130_fd_sc_hd__xor2_2 _128_ (.A(cycl_count_o[2]),
    .B(_075_),
    .X(_076_));
 sky130_fd_sc_hd__a21oi_2 _129_ (.A1(_044_),
    .A2(_073_),
    .B1(_045_),
    .Y(_018_));
 sky130_fd_sc_hd__o211a_2 _130_ (.A1(cycl_count_o[1]),
    .A2(_064_),
    .B1(_063_),
    .C1(_062_),
    .X(_019_));
 sky130_fd_sc_hd__a22o_2 _131_ (.A1(cycl_count_o[1]),
    .A2(_064_),
    .B1(_073_),
    .B2(_045_),
    .X(_020_));
 sky130_fd_sc_hd__or3b_2 _132_ (.A(_020_),
    .B(_018_),
    .C_N(_019_),
    .X(_021_));
 sky130_fd_sc_hd__o211a_2 _133_ (.A1(_076_),
    .A2(_021_),
    .B1(_036_),
    .C1(\clk_gate_state_q[1] ),
    .X(_022_));
 sky130_fd_sc_hd__or2_2 _134_ (.A(_059_),
    .B(_022_),
    .X(_005_));
 sky130_fd_sc_hd__xor2_2 _135_ (.A(cycl_count_o[0]),
    .B(\div_q[1] ),
    .X(_023_));
 sky130_fd_sc_hd__or4_2 _136_ (.A(\i_clk_mux.clk_sel_i ),
    .B(_040_),
    .C(_047_),
    .D(_023_),
    .X(_024_));
 sky130_fd_sc_hd__o31a_2 _137_ (.A1(cycl_count_o[0]),
    .A2(cycl_count_o[1]),
    .A3(cycl_count_o[2]),
    .B1(_024_),
    .X(_025_));
 sky130_fd_sc_hd__or3_2 _138_ (.A(cycl_count_o[3]),
    .B(_061_),
    .C(_025_),
    .X(_026_));
 sky130_fd_sc_hd__xnor2_2 _139_ (.A(even_clk),
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
 sky130_fd_sc_hd__o31a_2 _142_ (.A1(\clk_gate_state_q[0] ),
    .A2(\clk_gate_state_q[1] ),
    .A3(_048_),
    .B1(cycl_count_o[0]),
    .X(_029_));
 sky130_fd_sc_hd__nor2_2 _143_ (.A(cycl_count_o[0]),
    .B(_027_),
    .Y(_030_));
 sky130_fd_sc_hd__a211oi_2 _144_ (.A1(_027_),
    .A2(_028_),
    .B1(_029_),
    .C1(_030_),
    .Y(_008_));
 sky130_fd_sc_hd__xnor2_2 _145_ (.A(cycl_count_o[1]),
    .B(_029_),
    .Y(_031_));
 sky130_fd_sc_hd__a21oi_2 _146_ (.A1(_027_),
    .A2(_028_),
    .B1(_031_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_2 _147_ (.A(cycl_count_o[1]),
    .B(cycl_count_o[2]),
    .C(_029_),
    .X(_032_));
 sky130_fd_sc_hd__a21oi_2 _148_ (.A1(cycl_count_o[1]),
    .A2(_029_),
    .B1(cycl_count_o[2]),
    .Y(_033_));
 sky130_fd_sc_hd__a211oi_2 _149_ (.A1(_027_),
    .A2(_028_),
    .B1(_032_),
    .C1(_033_),
    .Y(_010_));
 sky130_fd_sc_hd__xnor2_2 _150_ (.A(cycl_count_o[3]),
    .B(_032_),
    .Y(_034_));
 sky130_fd_sc_hd__a21oi_2 _151_ (.A1(_027_),
    .A2(_028_),
    .B1(_034_),
    .Y(_011_));
 sky130_fd_sc_hd__mux2_1 _152_ (.A0(\div_q[0] ),
    .A1(_055_),
    .S(_059_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _153_ (.A0(\div_q[1] ),
    .A1(div_i[1]),
    .S(_059_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _154_ (.A0(\div_q[2] ),
    .A1(div_i[2]),
    .S(_059_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _155_ (.A0(\div_q[3] ),
    .A1(div_i[3]),
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
 sky130_fd_sc_hd__dfrtp_2 _158_ (.CLK(clk_i),
    .D(_004_),
    .RESET_B(rst_ni),
    .Q(\clk_gate_state_q[0] ));
 sky130_fd_sc_hd__dfrtp_2 _159_ (.CLK(clk_i),
    .D(_005_),
    .RESET_B(rst_ni),
    .Q(\clk_gate_state_q[1] ));
 sky130_fd_sc_hd__dfrtp_2 _160_ (.CLK(_002_),
    .D(\i_clk_gate.en_i ),
    .RESET_B(rst_ni),
    .Q(gate_is_open_q));
 sky130_fd_sc_hd__dfrtp_2 _161_ (.CLK(_003_),
    .D(_006_),
    .RESET_B(rst_ni),
    .Q(\i_odd_clk_xor.clk1_i ));
 sky130_fd_sc_hd__dfrtp_2 _162_ (.CLK(clk_i),
    .D(_007_),
    .RESET_B(rst_ni),
    .Q(even_clk));
 sky130_fd_sc_hd__dfrtp_2 _163_ (.CLK(clk_i),
    .D(_008_),
    .RESET_B(rst_ni),
    .Q(cycl_count_o[0]));
 sky130_fd_sc_hd__dfrtp_2 _164_ (.CLK(clk_i),
    .D(_009_),
    .RESET_B(rst_ni),
    .Q(cycl_count_o[1]));
 sky130_fd_sc_hd__dfrtp_2 _165_ (.CLK(clk_i),
    .D(_010_),
    .RESET_B(rst_ni),
    .Q(cycl_count_o[2]));
 sky130_fd_sc_hd__dfrtp_2 _166_ (.CLK(clk_i),
    .D(_011_),
    .RESET_B(rst_ni),
    .Q(cycl_count_o[3]));
 sky130_fd_sc_hd__dfstp_2 _167_ (.CLK(clk_i),
    .D(_012_),
    .SET_B(rst_ni),
    .Q(\div_q[0] ));
 sky130_fd_sc_hd__dfrtp_2 _168_ (.CLK(clk_i),
    .D(_013_),
    .RESET_B(rst_ni),
    .Q(\div_q[1] ));
 sky130_fd_sc_hd__dfrtp_2 _169_ (.CLK(clk_i),
    .D(_014_),
    .RESET_B(rst_ni),
    .Q(\div_q[2] ));
 sky130_fd_sc_hd__dfrtp_2 _170_ (.CLK(clk_i),
    .D(_015_),
    .RESET_B(rst_ni),
    .Q(\div_q[3] ));
 sky130_fd_sc_hd__dfstp_2 _171_ (.CLK(clk_i),
    .D(_016_),
    .SET_B(rst_ni),
    .Q(clk_div_bypass_en_q));
 sky130_fd_sc_hd__dfrtp_2 _172_ (.CLK(clk_i),
    .D(gate_en_d),
    .RESET_B(rst_ni),
    .Q(gate_en_q));
 sky130_fd_sc_hd__dfrtp_2 _173_ (.CLK(clk_i),
    .D(_017_),
    .RESET_B(rst_ni),
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
endmodule
