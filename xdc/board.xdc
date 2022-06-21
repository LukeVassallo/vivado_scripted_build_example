## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100 }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]

## Buttons
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { mmcm_reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]

## Misc. ChipKit Ports
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { areset_n }]; #IO_L16P_T2_35 Sch=ck_rst

## DDR3
set_property -dict { PACKAGE_PIN R2 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[0] ];
set_property -dict { PACKAGE_PIN M6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[1] ];
set_property -dict { PACKAGE_PIN N4 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[2] ];
set_property -dict { PACKAGE_PIN T1 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[3] ];
set_property -dict { PACKAGE_PIN N6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[4] ];
set_property -dict { PACKAGE_PIN R7 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[5] ];
set_property -dict { PACKAGE_PIN V6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[6] ];
set_property -dict { PACKAGE_PIN U7 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[7] ];
set_property -dict { PACKAGE_PIN R8 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[8] ];
set_property -dict { PACKAGE_PIN V7 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[9] ];
set_property -dict { PACKAGE_PIN R6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[10] ];
set_property -dict { PACKAGE_PIN U6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[11] ];
set_property -dict { PACKAGE_PIN T6 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[12] ];
set_property -dict { PACKAGE_PIN T8 IOSTANDARD SSTL135 } [ get_ports ddr3_addr[13] ];

set_property PACKAGE_PIN R1 [ get_ports ddr3_ba[0] ];
set_property PACKAGE_PIN P4 [ get_ports ddr3_ba[1] ];
set_property PACKAGE_PIN P2 [ get_ports ddr3_ba[2] ];
set_property IOSTANDARD SSTL135 [ get_ports ddr3_ba[*] ];

set_property -dict { PACKAGE_PIN U9 IOSTANDARD DIFF_SSTL135 } [ get_ports ddr3_ck_p[0] ];
set_property -dict { PACKAGE_PIN N5 IOSTANDARD SSTL135 } [ get_ports ddr3_cke[0] ];
set_property -dict { PACKAGE_PIN U8 IOSTANDARD SSTL135 } [ get_ports ddr3_cs_n[0] ];

set_property -dict { PACKAGE_PIN L1 IOSTANDARD SSTL135 } [ get_ports ddr3_dm[0] ];
set_property -dict { PACKAGE_PIN U1 IOSTANDARD SSTL135 } [ get_ports ddr3_dm[1] ];

set_property PACKAGE_PIN K5 [ get_ports ddr3_dq[0] ];
set_property PACKAGE_PIN L3 [ get_ports ddr3_dq[1] ];
set_property PACKAGE_PIN K3 [ get_ports ddr3_dq[2] ];
set_property PACKAGE_PIN L6 [ get_ports ddr3_dq[3] ];
set_property PACKAGE_PIN M3 [ get_ports ddr3_dq[4] ];
set_property PACKAGE_PIN M1 [ get_ports ddr3_dq[5] ];
set_property PACKAGE_PIN L4 [ get_ports ddr3_dq[6] ];
set_property PACKAGE_PIN M2 [ get_ports ddr3_dq[7] ];
set_property PACKAGE_PIN V4 [ get_ports ddr3_dq[8] ];
set_property PACKAGE_PIN T5 [ get_ports ddr3_dq[9] ];
set_property PACKAGE_PIN U4 [ get_ports ddr3_dq[10] ];
set_property PACKAGE_PIN V5 [ get_ports ddr3_dq[11] ];
set_property PACKAGE_PIN V1 [ get_ports ddr3_dq[12] ];
set_property PACKAGE_PIN T3 [ get_ports ddr3_dq[13] ];
set_property PACKAGE_PIN U3 [ get_ports ddr3_dq[14] ];
set_property PACKAGE_PIN R3 [ get_ports ddr3_dq[15] ];
set_property IOSTANDARD SSTL135 [get_ports ddr3_dq[*]];

set_property -dict { PACKAGE_PIN N2 IOSTANDARD DIFF_SSTL135 } [ get_ports ddr3_dqs_p[0] ];
set_property -dict { PACKAGE_PIN U2 IOSTANDARD DIFF_SSTL135 } [ get_ports ddr3_dqs_p[1] ];

set_property -dict { PACKAGE_PIN R5 IOSTANDARD SSTL135 } [ get_ports ddr3_odt[0] ];
set_property -dict { PACKAGE_PIN P3 IOSTANDARD SSTL135 } [ get_ports ddr3_ras_n ];
set_property -dict { PACKAGE_PIN M4 IOSTANDARD SSTL135 } [ get_ports ddr3_cas_n ];
set_property -dict { PACKAGE_PIN K6 IOSTANDARD SSTL135 } [ get_ports ddr3_reset_n ];
set_property -dict { PACKAGE_PIN P5 IOSTANDARD SSTL135 } [ get_ports ddr3_we_n ]

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { calib_complete }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { heartbeat[0] }];