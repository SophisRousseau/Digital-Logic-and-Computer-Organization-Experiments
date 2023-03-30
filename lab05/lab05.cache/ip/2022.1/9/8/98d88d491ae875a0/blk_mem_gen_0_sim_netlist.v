// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Mar 22 21:12:30 2023
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
iKS09T3l0HvHl147p/nIc+MtPWXhW3CU
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
