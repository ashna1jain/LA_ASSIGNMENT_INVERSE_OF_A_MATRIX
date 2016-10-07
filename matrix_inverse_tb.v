`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:33 10/07/2016
// Design Name:   la_ment
// Module Name:   C:/Users/Dell/Desktop/DD , evs and oop/verilog_code/la2/la_ment_tb.v
// Project Name:  la2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: la_ment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module la_ment_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] out0;
	wire [15:0] out1;
	wire [15:0] out2;
	wire [15:0] out3;
	wire [15:0] out4;
	wire [15:0] out5;
	wire [15:0] out6;
	wire [15:0] out7;
	wire [15:0] out8;
	wire [15:0] out9;
	wire [15:0] out10;
	wire [15:0] out11;
	wire [15:0] out12;
	wire [15:0] out13;
	wire [15:0] out14;
	wire [15:0] out15;
	wire [15:0] out16;
	wire [15:0] out17;
	wire [15:0] out18;
	wire [15:0] out19;
	wire [15:0] out20;
	wire [15:0] out21;
	wire [15:0] out22;
	wire [15:0] out23;
	wire [15:0] out24;

	// Instantiate the Unit Under Test (UUT)
	la_ment uut (
		.clk(clk), 
		.reset(reset), 
		.out0(out0), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6), 
		.out7(out7), 
		.out8(out8), 
		.out9(out9), 
		.out10(out10), 
		.out11(out11), 
		.out12(out12), 
		.out13(out13), 
		.out14(out14), 
		.out15(out15), 
		.out16(out16), 
		.out17(out17), 
		.out18(out18), 
		.out19(out19), 
		.out20(out20), 
		.out21(out21), 
		.out22(out22), 
		.out23(out23), 
		.out24(out24)
	);
	initial begin
		// Initialize Inputs
		clk = 1'b1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

