// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Mar 22 20:57:21 2023
// Host        : DESKTOP-V1DGMLK running 64-bit major release  (build 9200)
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
bjri3MH0y5/wcXva5ah8EIrtGSyEoIew
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
