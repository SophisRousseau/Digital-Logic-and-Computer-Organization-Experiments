### 1  实验目的

掌握常用的译码器和编码器的设计方法以及七段数码管的使用。

掌握 Verilog 语言中的 for 循环的使用等。

最后自行设计一个 8-3 优先编码器及七段数码管显示。

### 2  实验原理

#### 2.1  8-3 优先编码器

8-3 优先编码器是一种数字电路，它将 8 个输入编码成 3 位二进制数。当有多个输入同时为 1 时，该编码器优先选择最高位的输入进行编码，其余输入不予考虑。例如，当输入的优先级为 I7>I6>I5>I4>I3>I2>I1>I0 时，当输入 I2 和 I5 同时为 1 时，编码器将优先选择 I5 进行编码，因为 I5 的优先级比 I2 更高。因此，编码器将输出二进制数101 来表示输入信号 I5 的编码。如图为 8-3 优先编码器的真值表。

<img src='https://media.cheggcdn.com/study/1b0/1b0f5928-4be2-416b-9e86-760183742923/11131-4-23P-i1.png' width=400>

<center>8-3 优先编码器的真值表

#### 2.2  七段数码管

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319201336398.png ' width= 200>

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319201458837.png' width= 400>

### 3  实验环境/器材

##### 软件环境

- Vivado 2022.1

##### 硬件器材

- 开发板：Digilent Nexys A7-100T
- FPGA：XC7A100T-1CSG324C

### 4  程序代码或流程图

#### 4.1  电路原理图

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319201853154.png' width= 500>

<center>8-3 优先编码器、以及把编码结果显示在七段数码管上的电路原理图


#### 4.2  程序代码

如下代码实现了一个 8-3 优先编码器。该模块有一个 8 位输入 `X[7:0]`，一个使能信号 `en`，一个有效输出信号 `valid`，一个 3 位编码输出 `Y[2:0]`，一个 8 位七段数码管输出 `F[7:0]`，以及一个 8 位数码管选择信号 `AN[7:0]`。模块中的主要部分是 `always @(*)` 块，该块包含一个用于检测输入 `X` 的 `for` 循环。当使能信号 `en` 为 1 时，该 `for` 循环扫描输入 `X`，并找到值为 1 的最高位。一旦找到最高位，就将其存储在输出 `Y` 中。 `for` 循环结束后 `Y` 的最终结果就是所需的 3 位编码输出。如果没有找到任何输入值为 1，则 `valid` 输出为 0。如果找到一个输入值为 1，则 `valid` 输出为 1。

```verilog
`timescale 1ns / 1ps

module priority_encode(
	input  [7:0] X,
	input  en,
	output reg valid,
	output reg [2:0] Y,
	output [7:0] F,
	output [7:0] AN
	);

    integer i;

    assign AN = 8'b11111110;

    always @(*) begin
        Y = 0;
        valid = 1'b0;
        if (en) begin
            for(i = 0; i < 8; i = i + 1) begin
                if(X[i] == 1) begin
                    Y = i;
                    valid = 1'b1;
                end
            end
        end
    end

    bcd7seg seg({~valid, Y}, F);

endmodule
```

如下代码的 `bcd7seg` 模块实现了一个将 4 位二进制数转换为 7 段 LED 显示器的 8 位二进制编码的模块，其中最高位表示 `valid` 位的反码。`bcd7seg` 模块中使用 `case` 语句将 4 位二进制输入 `b` 转换为 7 段 LED 显示器的 8 位输出 `h`。每个 `case` 语句的值对应于将 BCD 码转换为 7 段显示器输出的不同方式。如果输入的 `b` 值不在 0-7 的范围内，说明 `valid` 位为 0，则输出 `h` 的值为 0xFF (数码管全暗)。在`priority_encode`模块中，通过调用 `bcd7seg` 模块，将 3 位编码 `Y` 转换为 7 段 LED 显示器的 8 位输出 `F`。

```verilog
module bcd7seg(
	 input  [3:0] b,
	 output reg [7:0] h
	 );

    //add your code here

    always @(*) begin
        case(b)
            0:h=8'b10000001;
            1:h=8'b11110011;
            2:h=8'b01001001;
            3:h=8'b01100001;
            4:h=8'b00110011;
            5:h=8'b00100101;
            6:h=8'b00000101;
            7:h=8'b11110001;
            default:h=8'b11111111;
	    endcase
	end

endmodule
```

### 5  实验步骤/过程

#### 5.1  编写设计文件

编写 Verilog 设计文件并进行综合，生成网表文件。设计文件的内容已在第 4 部分展示。

#### 5.2  验证综合后生成的电路原理图是否正确

综合后生成的电路原理图已在第 4 部分展示，已验证电路图为正确。

#### 5.3  编写仿真文件，进行仿真测试

如下 Verilog 代码用于验证模块 `priority_encode` 的正确性。该测试模块声明了输入信号 `X`、`en` 和输出信号 `valid`、`Y`、`F`、`AN`。然后将这些信号与 `priority_encode` 模块的对应信号连接在一起。随后的 `initial` 代码块用于向输入信号 `X` 和 `en` 中提供测试信号。具体来说，它在时间轴上分别在 `10` ns 的时间间隔内更改输入信号 `X` 的值，以产生测试用例。测试用例从 `X = 00000000` 开始，然后从最低位开始依次把每一位变为 1，直到 `X = 11111111`。在 `X` 的每个值上，`en` 都设置为 1，以使 `priority_encode` 模块开始工作。最后，`en` 设置为 0，以停止 `priority_encode` 模块的工作。

仿真测试结果将在第 7 部分展示。

```verilog
`timescale 1ns / 1ps

module priority_encode_test;

reg  [7:0] X;
reg  en;
wire valid;
wire [2:0] Y;
wire [7:0] F;
wire [7:0] AN;

priority_encode priority_encode(
    .X(X),
    .en(en),
    .valid(valid),
    .Y(Y),
    .F(F),
    .AN(AN)
);

initial 
begin

    X=8'b00000000; en=1;
#10 X=8'b00000001;
#10 X=8'b00000011;
#10 X=8'b00000111;  
#10 X=8'b00001111;  
#10 X=8'b00011111;  
#10 X=8'b00111111;  
#10 X=8'b01111111;  
#10 X=8'b11111111;  
#10 en=0;

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

在仿真测试和下载运行过程中，通过改变输入信号 `X`、`en` 的值，观察输出结果 `Y`、`F` 是否按照预期的结果输出，以及七段数码管是否显示了预期的数字，即可验证设计文件是否正确。

### 7  实验结果

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230319201703502.png' width= 600>

<center>仿真测试结果</center>

本实验已线下验收，未出现任何失误，因此这里省略了下载运行结果。

### 8  实验中遇到的问题及解决办法

- 起初误将 `F` 声明为 `output reg [7:0] F`，导致综合过程失败。因为 `priority_encode` 模块在调用 `bcd7seg` 模块时把 `F` 作为输出，因此一定要把 `F` 声明为 `wire` 型来接受输出。

- 此外，在填写约束文件时，起初把 `F` 的八个分量与 FPGA 芯片上的物理引脚建立了错误的对应关系，导致七段数码管未能显示出预期的数字。在仔细查看七段数码管的原理图后，改正了此错误。

### 9  实验得到的启示

- 编写设计文件时，要注意每个模块的输入和输出是声明为 `wire` 型还是 `reg` 型，尤其当存在多个模块间的相互调用时。

- 此外，也要注意把输入和输出信号与 FPGA 芯片上的物理引脚建立起正确的对应关系，以使硬件验证过程给出正确的实验结果。
