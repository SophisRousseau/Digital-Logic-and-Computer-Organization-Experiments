### 1  实验目的

复习加法器的原理。

学习用简单 ALU 的设计方式。

### 2  实验原理

如图为简单加减 ALU 的原理图。由电路图知，ALU 除了输出计算结果 Result 外，还输出一些标志位，包括 Carry 标志位, Zero 标志位, 和 Overflow 标志位。

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319212936234.png' width= 500>

<center>简单加减 ALU 的原理图

#### 2.1  Carry 标志位的计算

在 x86 架构的无符号加减法中，ALU Carry 标志位 (CF) 表示两个无符号数相加/相减的结果是否产生了进位/借位。其计算公式为：

```verilog
CF = Cout ^ Sub
```

下面分两种情况证明这点：

- 若 Sub=0，即进行加法运算，则 CF=Cout^0=Cout。若 Cout=1，说明最高位产生进位，而该位在计算结果中是舍弃的，因此真值与机器数不同，发生进位，此时满足 CF=Cout=1；Cout=0 可类推。
- 若 Sub=1，即进行减法运算，则 CF=Cout^1=~Cout。根据 A-B=A+(~B+1)=A+(1<<n)-B=(1<<n)+(A-B)，若 A-B<0，则发生借位，由于 (1<<w)+(A-B)<=(1<<w)-1，则 Cout=0，满足 CF=~Cout=1；若 A-B>=0，则由于 (1<<w)+(A-B)>=(1<<w)，则 Cout=1，满足 CF=~Cout=0。

在 Verilog 语言中，可以很方便地计算出加减法时的进借位：

- 加法

```verilog
{CF, Result} = A + B
```

- 减法

```verilog
{CF, Result} = A - B
```

注意到计算 A - B 时会先对 A 以及 B 的补码进行符号扩展(n 位扩展为 n+1 位)，因此可验证该公式是正确的。

#### 2.2  Overflow 标志位的计算

在 x86 架构中，ALU 中的 overflow 标志位 (OF) 表示两个带符号数相加或相减时是否发生了溢出。

对于两个带符号数 A 和 B 的相加，如果结果超出了有符号数的范围，那么会发生溢出。对于两个带符号数 A 和 B 的相减，如果结果小于有符号数的范围的最小值，那么也会发生溢出。

为了计算 OF 标志位，可以使用以下公式：

- 对于加法，如果发生了溢出，则 OF = 1，否则 OF = 0。溢出发生的条件为：

```verilog
(A > 0 && B > 0 && result < 0) || (A < 0 && B < 0 && result > 0)
```

其中，A 和 B 是两个带符号数，result 是它们的和。

- 对于减法，如果发生了溢出，则 OF = 1，否则 OF = 0。溢出发生的条件为：

```verilog
(A > 0 && B < 0 && result < 0) || (A < 0 && B > 0 && result > 0)
```

其中，A 和 B 是两个带符号数，result 是它们的差。

#### 2.3  Zero 标志位的计算

很明显，Zero 标志位 (ZF) 的计算方式为

```verilog
ZF = ~(|Result)
```

只有当 Result 的每一位都是 0 时，ZF 才会被设置为 1。

### 2.4  有符号数的比较大小

在 x86 架构中，判断 A 与 B 的大小关系通过计算 A-B 来实现。如果 A<B，则 (SF^OF)&&(~ZF)=1；否则  (SF^OF)&&(~ZF)=0，反之亦然。其中 SF  指的是 A-B 的符号位。证明如下：

如果 A=B，则 ZF=1，即 ~ZF=0，因此 (SF^OF)&&(~ZF)=0，不满足 A<B。否则当 A!=B 时，(SF^OF)&&(~ZF) 可简化为 SF^OF。

如果 OF=0，即没有溢出，则 A-B 的机器数代表的就是 A-B  的真值，此时 SF^OF=SF^0=~SF。若 SF=1，说明 A-B 的机器数表示负数，也即真值是负数，满足 A<B，此时有 SF^OF=1；SF=0可类推。

如果 OF=1，则发生溢出，则 A 为正数且 B 为负数，或 A 为负数且 B 为正数，此时 SF^OF=SF^1=~SF。若是前种情况，则不满足 A<B；由于 A-B 的机器数表示负数，因为正数减去负数发生溢出时得到的机器数是负数，则符号位是 1，此时有 SF^OF=1^1=0；后种情况类推。

综上，判断 A<B 是否成立的条件是 (SF^OF)&&(~ZF) 是否为1。

### 3  实验环境/器材

##### 软件环境

- Vivado 2022.1

##### 硬件器材

- 开发板：Digilent Nexys A7-100T
- FPGA：XC7A100T-1CSG324C

### 4  程序代码或流程图

#### 4.1  电路原理图

![image-20230319220227784](C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319220227784.png)

<center>4 位补码 ALU 的电路原理图



#### 4.2  程序代码

如下 Verilog 代码实现了一个 ALU 模块：

- 模块有 3 个输入端口和 5 个输出端口，输入端口包括两个 4 位的输入 `A` 和 `B`，一个 3 位的 `ALUctr` 输入；输出端口包括两个 8 位的七段数码管显示信号 `F` 和七段数码管选择信号 `AN`，一个 1 位的进位标志 `cf`，一个 1 位的零标志 `zero` 和一个 1 位的溢出标志 `of`。
- `reg [3:0] Y` 用于临时存储 4 位运算结果，最终需要把它转化为七段数码管的显示信号 `F`。
- `assign` 语句将 `AN` 端口赋值为 `8'b11111110`，表示选择最右边的数码管进行显示。
- `always` 块包含一个 `case` 语句，根据 `ALUctr` 输入的不同值执行不同的操作。这里有 8 种操作，包括加法、减法、取反、按位与、按位或、按位异或、比较大小和判断相等。
- 在加减法中，`cf`、`of` 和 `zero` 标志位的计算按照第 2 部分所阐述的公式进行实现。
- 比较操作执行先 `A-B` 的减法操作，并根据运算结果 `temp` 计算出零标志 `temp_zf`、进位标志 `temp_cf  ` 和溢出标志 `temp_of`。`Y` 的计算按照第 2 部分所阐述的公式进行实现。
- 此外，模块还调用了 `bcd7seg` 子模块，用于将 `Y` 的 4 个位转换为 8 位的七段数码管显示信号，并将转换结果输出到 `F` 端口。

```verilog
`timescale 1ns / 1ps

module ALU( input [3:0] A,
			  input [3:0] B,
			  input [2:0] ALUctr,
			  output [7:0] F,
			  output [7:0] AN,
			  output reg cf,
			  output reg zero,
			  output reg of
);

//add your code here

    reg [3:0] temp;
    reg temp_of;
    reg temp_sf;
    reg temp_zf;
    
    reg [3:0] Y;
    
    assign AN = 8'b11111110;
    
    always @(*) begin
        case (ALUctr)
            0: begin
                {cf,Y}=A+B;
                zero=~(|Y);
                of=(A[3]==B[3])&&(A[3]!=Y[3]);
            end
            1: begin
                {cf,Y}=A-B;
                zero=~(|Y);
                of=(A[3]!=B[3])&&(A[3]!=Y[3]);
            end
            2: begin
                Y=~A;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            3: begin
                Y=A&B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            4: begin
                Y=A|B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            5: begin
                Y=A^B;
                zero=~(|Y);
                cf=0;
                of=0;
            end
            6: begin
                temp=A-B;
                temp_sf=temp[3];
                temp_of=(A[3]!=B[3])&&(A[3]!=temp[3]);
                temp_zf=~(|temp);
                if ((temp_sf^temp_of)&&~temp_zf) begin
                    Y=4'b0001;
                end
                else begin
                    Y=4'b0000;
                end
                zero=~(|Y);
                cf=0;
                of=0;
            end
            7: begin
                temp=A-B;
                if(|temp) begin
                    Y=4'b0000;
                end
                else begin
                    Y=4'b0001;
                end
                zero=~(|Y);
                cf=0;
                of=0;
            end
        endcase

    end
    
    bcd7seg bdf7seg(
        .b(Y),
        .h(F)
    );
    
endmodule
```

### 5  实验步骤/过程

#### 5.1  编写设计文件

编写 Verilog 设计文件并进行综合，生成网表文件。设计文件的内容已在第 4 部分展示。

#### 5.2  验证综合后生成的电路原理图是否正确

综合后生成的电路原理图已在第 4 部分展示，已验证电路图为正确。

#### 5.3  编写仿真文件，进行仿真测试

如下 Verilog 代码用于验证模块 `ALU` 的正确性。通过改变操作数 `A` 和 `B` 的值，以及控制信号 `ALUctr` 的值，测试 `ALU` 模块在 8 种运算时的运算结果以及标志位的设置是否正确。

仿真测试结果将在第 7 部分展示。

```verilog
`timescale 1ns / 1ps

module ALU_test();

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALUctr;
wire [7:0] F;
wire [7:0] AN;
wire cf;
wire zero;
wire of;

ALU alu(
    .A(A),
    .B(B),
    .ALUctr(ALUctr),
    .F(F),
    .AN(AN),
    .cf(cf),
    .zero(zero),
    .of(of)
);

initial begin

	A=4'b0000; B=4'b0111; ALUctr=3'b000;
#10 A=4'b0000; B=4'b0111; ALUctr=3'b001;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b001;
#10 A=4'b1111; B=4'b0111; ALUctr=3'b001;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b001;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b010;
#10 A=4'b1111; B=4'b0000; ALUctr=3'b010;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b011;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b011;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b100;
#10 A=4'b0100; B=4'b1110; ALUctr=3'b100;
#10 A=4'b0101; B=4'b1010; ALUctr=3'b101;
#10 A=4'b0101; B=4'b1111; ALUctr=3'b101;
#10 A=4'b0101; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1100; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1111; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1000; B=4'b1111; ALUctr=3'b110;
#10 A=4'b0000; B=4'b1111; ALUctr=3'b110;
#10 A=4'b1111; B=4'b1000; ALUctr=3'b110;
#10 A=4'b0111; B=4'b1000; ALUctr=3'b110;
#10 A=4'b0000; B=4'b1000; ALUctr=3'b110;
#10 A=4'b1111; B=4'b0111; ALUctr=3'b110;
#10 A=4'b1000; B=4'b0111; ALUctr=3'b110;
#10 A=4'b0000; B=4'b0000; ALUctr=3'b110;
#10 A=4'b0001; B=4'b0000; ALUctr=3'b110;
#10 A=4'b0111; B=4'b0011; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0001; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0111; ALUctr=3'b110;
#10 A=4'b0011; B=4'b0001; ALUctr=3'b111;
#10 A=4'b0011; B=4'b0011; ALUctr=3'b111;
#10 A=4'b1000; B=4'b1000; ALUctr=3'b111;
#10 A=4'b1000; B=4'b1100; ALUctr=3'b111;

end
	  
endmodule
```

#### 5.4  综合和实现后生成比特流文件，并下载到目标 FPGA 芯片进行验证

本过程已线下验收，未出现任何失误。

### 6  测试方法

验证设计结果为正确的方法主要包括如下三种：

- 验证综合生成的电路原理图是否正确。
- 编写仿真文件对设计文件进行仿真测试。
- 把综合和实现后生成的比特流文件下载到目标 FPGA 芯片进行验证。

在仿真测试和下载运行过程中，通过改变操作数 `A` 和 `B` 的值，以及控制信号 `ALUctr` 的值，测试 `ALU` 模块在 8 种运算时的运算结果 `Y`、标志位 `cf`、`of` 和 `zero` 的设置是否正确，以及七段数码管是否显示了预期的数字，即可验证设计文件是否正确。

### 7  实验结果

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319225921576.png' width= 700>

<center>仿真测试结果</center>

本实验已线下验收，未出现任何失误，因此这里省略了下载运行结果。

### 8  实验中遇到的问题及解决办法

本实验的主要难点是在加减法时标志位的设置以及比较大小时运算结果的设置。起初没有严格地进行公式推导，而采用了一些想当然的公式，导致实验结果不符合预期。后来经过了严格的公式推导(结果展示在第 2 部分中)，解决了上述问题。

### 9  实验得到的启示

对于较复杂的运算，不能想当然地采取一些随意的公式，而首先需要进行严格的数学推导，分析所有可能的情况，再开始编写代码，这样可以大大提升编写和调试代码时的效率。
