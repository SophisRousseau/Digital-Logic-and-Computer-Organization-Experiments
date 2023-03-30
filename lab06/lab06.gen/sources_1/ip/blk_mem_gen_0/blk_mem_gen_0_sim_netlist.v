// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Mar 22 21:12:31 2023
// Host        : DESKTOP-V1DGMLK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/Digital_Logic_Experiments/lab05/lab05.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
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
raZtRNu9iq4=
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
