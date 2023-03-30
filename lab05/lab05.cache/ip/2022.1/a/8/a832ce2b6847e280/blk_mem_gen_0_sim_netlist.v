// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Mar 21 14:44:54 2023
// Host        : DESKTOP-RSF5MMH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20544)
`pragma protect data_block
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
Cf51hkC9ETRrKMwIJul5H1tceNy4GuvC
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
