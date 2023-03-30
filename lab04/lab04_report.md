### 1  实验目的

​	复习计数器的工作原理。

​	了解几种简单计数器的工作过程和设计方法。

​	了解开发板系统时钟的使用。

​	学习计数器的设计和定时器的工作原理。

### 2  实验原理

#### 2.1 计时器

​		可通过多个 D 触发器的相互连接可以实现简单的计数器。如图 1 所示，在每个 Clock 的上升沿，计数器输出 Q2Q1Q0 加 1。

​		其原理是：第 i 个 D 触发器的输出的反码 $\bar{Q_{i}}$ 作为第 i+1 个 D 触发器的时钟信号。当 $Q_{i}$ 由 0 翻转为 1 时，$\bar{Q_{i}}$  由 1 翻转为 0，因此第 i+1 个 D 触发器的时钟信号端此时产生了一个下降沿，并不改变 $Q_{i+1}$ 的值；当 $Q_{i}$ 由 1 翻转为 0 时，$\bar{Q_{i}}$  由 0 翻转为 1，因此第 i+1 个 D 触发器的时钟信号端此时产生了一个上升沿，$Q_{i+1}$ 的值发生翻转，实现了进位，也就是 "+1" 的功能。

​		如果在计数器的时钟输入端输入一个固定周期的时钟，那么计数器就变成了定时器。

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328184313207.png' width= 400>

<center>Figure 1：3 位二进制加法计数器

#### 2.2 分频器

​		利用一个高频率的时钟信号和定时器，我们可以设计任何我们需要的低频率时钟信号。例如令计数范围为  0∼49999999，就能将频率为 100MHz 的高频率时钟，转化为一个频率为 1Hz 的低频率时钟，因为每过 $\frac{1}{100 \times 10^6} \times 5 \times 10^7 s = 0.5 s$，新的时钟信号将发生一次翻转，因此新的时钟信号的周期为 1s，频率为 1Hz。其 Verilog 代码如下所示：

```verilog
always @(posedge clk) 
	if(count_clk==49999999) begin
        count_clk <=0; 
        clk_1s <= ~clk_1s; 
	end 
	else count_clk <= count_clk+1;
```

#### 2.3 数码管动态显示

​		当我们选择多个数码管时，这些数码管会同时显示相同 的数据，因为他们的 CA、CB、CC、CD、CE、CF、CG 和 DP 都是连接在一起的。因此，为了让不同的数码管 "同时" 显示不同的数据，需要利用一个高频率的时钟信号轮流选通不同的数码管，并使它们分别显示所需要的数字，这样不同数码管就可以独立显示所需要的数字。如果只要在最右边两个数码管显示两位数字，可以用如下 Verilog 实现。

```verilog
always @(select) begin
    case(select)
    	1'b0:begin seg7[7:0]=8'b11111110; display=out_dis0; end;
		1'b1:begin seg7[7:0]=8'b11111101; display=out_dis1; end;
	endcase
end
```

### 3  实验环境/器材

##### 软件环境

- Vivado 2022.1

##### 硬件器材

- 开发板：Digilent Nexys A7-100T
- FPGA：XC7A100T-1CSG324C

### 4  程序代码或流程图

#### 4.1  电路原理图

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328193550110.png' width= 400>

<center>Figure 2：计时器原理图


#### 4.2  程序代码

​		主要介绍代码中的 Timer 模块和 Counter 模块。

##### 4.2.1 Timer 模块

​		如下有详细注释的 Verilog 代码实现了一个 Timer 模块：实现了一个计数范围为 0~59 的计时器，在七段数码管上直接以十进制显示。有启动、暂停和清零功能。在计时结束的时候让某一个发光二极管闪烁一个时钟周期，提示计时结束。

​		该模块定义了以下输入端口：

- CLK100MHZ：一个频率为 100MHz 的时钟信号。
- SW：一个 16 位的向量，代表 FPGA 板上开关的状态。
- BTN：一个 5 位的向量，代表 FPGA 板上按钮的状态。

​		同时，该模块还定义了以下输出端口：

- LED：一个 16 位的向量，代表 FPGA 板上 LED 的状态。
- AN：一个 8 位的向量，代表 FPGA 板上 7 段显示器的阳极。
- F：一个 8 位的向量，代表 FPGA 板上 7 段显示器的阴极。

​		接下来，该模块实例化了多个子模块，用于实现定时器的功能：

- Debounce4：一个去抖模块，用于清理按钮输入信号的噪声。
- Divider：一个时钟分频模块，从较快的 100MHz 时钟信号生成较慢的 1Hz 和 1000Hz 时钟信号。
- Counter：一个计数器模块，根据按钮的状态每秒钟增加一个计数器值，并根据计数器值设置 LED 输出的状态。
- bcd7seg：用于将计时器的值转换为七段数码管显示信号。
- SelectSeg：一个复用器模块，用于在两个 7 段显示器之间切换，以十进制格式显示当前计数器的值。

```verilog
`timescale 1ns / 1ps

module Timer(
    input CLK100MHZ,                   // 100MHz clock
    input [15:0] SW,                  // Switch input
    input [4:0] BTN,                  // Button input
    output [15:0] LED,                // LED output
    output [7:0] AN,                  // 7-segment anode output
    output [7:0] F                    // 7-segment cathode output
);

wire [3:0] btn;                        // debounced button input

// Debounce button input
Debounce4 debounce4(BTN[3:0], CLK100MHZ, BTN[4], btn);

wire CLK1HZ;                           // 1Hz clock
wire CLK1000HZ;                        // 1000Hz clock

// Divide 100MHz clock to 1Hz clock
Divider divider1(CLK100MHZ, 100000000, CLK1HZ);
// Divide 100MHz clock to 1000Hz clock
Divider divider2(CLK100MHZ, 100000, CLK1000HZ);

wire [5:0] Q;                          // 6-bit counter output

// Count seconds and update LED
Counter counter(CLK1HZ, btn[1], btn[3], btn[0], 60, Q, LED[0]);

wire [7:0] F1;                         // 7-segment cathode output for digit 1
wire [7:0] F2;                         // 7-segment cathode output for digit 2

// Convert counter output to BCD and output to 7-segment display
bcd7seg bcd7seg1(Q%10, F1);            // lower digit
bcd7seg bcd7seg2(Q/10, F2);            // higher digit

// Select active 7-segment digit and enable display
SelectSeg selectSeg(CLK1000HZ, F1, F2, F, AN);

endmodule
```

##### 4.2.2 Counter 模块

​		如下有详细注释的 Verilog 代码实现了一个 Counter 模块：实现了一个计数器模块，可以计数到输入的 cnt_limit，然后自动回到 0 重新启动计数。模块有四个输入信号：时钟信号 clk，启动计数信号 start，暂停计数信号 stop，以及复位信号 rst；还有两个输出信号：计数值 Q 和归零输出信号 rco。

​		模块内部定义了一个名为 run 的寄存器，用来表示计数器当前是否在运行状态。

​		模块内部的 always 块中的代码实现了计数器的逻辑，会在每个时钟上升沿、复位信号上升沿、启动计数信号上升沿、暂停计数信号上升沿时被触发执行。如果复位信号 rst 为1，则将计数值 Q 和归零输出信号 rco 清零，并将 run 设为 0，表示清零的同时将计数器暂停；如果启动计数信号 start 为 1，则将 run 设为 1，表示计数器进入运行状态；如果停止计数信号 stop 为1，则将 run 设为 0，表示计数器进入暂停状态；如果计数器当前在运行状态，则将计数值 Q 加 1，如果计数值 Q 达到了 cnt_limit-1，就将归零输出信号 rco 置为 1(表示计时结束时让一个发光二极管闪烁一个时钟周期，提示计时结束)，否则置为 0。

```verilog
timescale 1ns / 1ps

module Counter(
	input  clk,           // clock input
	input  start,         // start input
	input  stop,          // stop input
	input  rst,           // reset input
	input  [5:0] cnt_limit, // counter limit input
	output reg [5:0] Q,   // counter output
	output reg rco        // ripple carry output
);

    // Declare a register called "run" with a default value of 0
    reg run=0;

    // This always block is triggered on the positive edge of the clock or any of the inputs (rst, start, stop)
    always @(posedge clk or posedge rst or posedge start or posedge stop) begin
        // If reset is high, reset the counter output "Q", the ripple carry output "rco", and "run" to 0
        if(rst==1) begin
            Q<=0;
            rco<=0;
            run<=0;
        end
        // If start is high, set "run" to 1
        else if(start==1) begin
            run<=1;
        end
        // If stop is high, set "run" to 0
        else if(stop==1) begin
            run<=0;
        end
        // If "run" is already 1, increment "Q" by 1 and calculate "rco" based on whether "Q" has reached "cnt_limit"
        else if(run==1) begin
            Q<=(Q+1)%cnt_limit;
            if(Q==cnt_limit-1) rco<=1;
            else rco<=0;
        end
    end

    // This initial block is executed only once at the beginning of simulation
    initial begin
        // Set the counter output "Q" and ripple carry output "rco" to 0
        Q=0;
        rco=0;
    end

endmodule
```

### 5  实验步骤和实验结果

#### 5.1  编写设计文件

​		编写 Verilog 设计文件并进行综合，生成网表文件。设计文件的内容已在第 4 部分展示。

#### 5.2  验证综合后生成的电路原理图是否正确

​		综合后生成的电路原理图已在第 4 部分展示，已验证电路图为正确。

#### 5.3  编写仿真文件，进行仿真测试

​		因 Timer 模块和 Counter 模块所使用的时钟频率差异较大，故主要对模块 Counter 的正确性进行仿真验证。以下是测试流程的说明：

- 时钟周期为10ns，由`forever #5 clk=~clk;`语句生成。
- cnt_limit 初始化为 60，表示计数器在 0~59 范围内循环计数。
- `start`在时钟的 20ns 处从 0 变为 1，持续 1ns，然后又变回 0，这将启动计数器。
- `stop`在时钟的 60ns 处从 0 变为 1，持续 1ns，然后又变回 0，这将停止计数器。
- `start`在时钟的 80ns 处从 0 变为 1，持续 1ns，然后又变回 0，这将再次启动计数器。
- `rst`在时钟的 120ns 处从 0 变为 1，持续 1ns，然后又变回 0，这将重置计数器。

```verilog
`timescale 1ns / 1ps

module Counter_tb();

    // Declare inputs and outputs for the testbench module
    reg clk;
    reg start;
    reg stop;
    reg rst;
    reg [5:0] cnt_limit;
    wire [5:0] Q;
    wire rco;

    // Instantiate the Counter module to be tested
    Counter counter(
        .clk(clk),
        .start(start),
        .stop(stop),
        .rst(rst),
        .cnt_limit(cnt_limit),
        .Q(Q),
        .rco(rco)
    );


    initial begin
        clk=0;
        start=0;
        stop=0;
        rst=0;
        cnt_limit=60;
    
        forever #5 clk=~clk;
    end
    
    initial begin
    // Start the counter at time 20
        #20 start=1;
        #1 start=0;
    end
    
    initial begin
    // Stop the counter at time 60
        #60 stop=1;
        #1 stop=0;
    end
    
    initial begin
    // Restart the counter at time 80
        #80 start=1;
        #1 start=0;
    end
    
    initial begin
    // Reset the counter at time 120
        #120 rst=1;
        #1 rst=0;    
    end
endmodule
```

<img src='C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328210932864.png' width= 600>

<center>Figure 3：仿真测试结果

#### 5.4  综合和实现后生成比特流文件，并下载到 FPGA 芯片进行验证

本过程已线下验收，验收过程没有出现任何失误。以下对典型情况进行截图：

<div align="center">
  <img src="C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328200236528.png" width="200">
  <img src="C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328200332232.png" width="200">
  <img src="C:\Users\Sophie\AppData\Roaming\Typora\typora-user-images\image-20230328200419336.png" width="200">
</div>
<center>Figure 4：下载运行结果


### 6  实验中遇到的问题及解决办法

​		起初尝试将启动和暂停键合一，使得每次按下"启动-暂停"键时，如果当前计时器正在运行，则将其暂停；如果处于暂停状态，则将其重新启动。但是下载运行时发现，按下"启动-暂停"键时，**有时**并不会正确实现计时器状态的切换，具体原因尚未探明，可能是因为按下一次按键的过程中发生了偶数次切换，导致计时器状态相较于之前并未改变。最后仍然采用启动和暂停两个按键分开的方式，按下启动键则将时钟启动，按下暂停键则将时钟暂停。

​		此外，起初将 Counter 模块中 always 块的触发条件(posedge clk or posedge rst or posedge start or posedge stop)拆分为不同的 always 块，令每个 always 块分别对应一个触发条件，但是这样做会产生一个报错：[DRC MDRV-1] Multiple Driver Nets: Net counter/LED_OBUF[0] has multiple drivers: counter/rco_reg/Q, and counter/rco_reg__0/Q。这是由于同一个变量在不同的 always 块中被赋值，造成冲突：寄存器输入端是由触发器组成的，用两个 always 块这个寄存器进行赋值，无论其中经过了怎样的条件判断，最终结果毫无疑问是将两个相独立的触发信号连在了寄存器的 CLK 端上，一个端口接入两个信号，这显然已经不是一个符合标准的数字逻辑电路了。所以这样的语句是无法被综合成电路的。因此不同的触发条件需要合并到同一个 always 块中，如果它们需要对同一个变量进行修改的话。

### 7  实验得到的启示

​		**不能在多个 always 块中对同一个变量进行赋值**。
