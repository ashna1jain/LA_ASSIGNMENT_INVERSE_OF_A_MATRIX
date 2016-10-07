`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//NAME:ASHNA JAIN
//PROJECT DESCRIPTION:COMPUTING THE INVERSE OF A MATRIX
//DATE:07/10/2016
//////////////////////////////////////////////////////////////////////////////////
module la_ment(clk,reset,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24);

//input declaration
input clk,reset;//input declaration

//reg declaration
reg [15:0] a [24:0];//reg declaration
reg [15:0] b [24:0];
reg [15:0] cont;
integer i;

//output declaration
output reg [15:0] out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24;


always@(posedge clk)//always block
begin

//declaring the value of matrix a
 a[0]=16'h1;
 a[1]=16'h0;
 a[2]=16'h0;
 a[3]=16'h0;
 a[4]=16'h0;
 
a[5]=16'h0;
a[6]=16'h1;
a[7]=16'h0;
a[8]=16'h0;
a[9]=16'h0;

a[10]=16'h0;
a[11]=16'h0;
a[12]=16'h1;
a[13]=16'h0;
a[14]=16'h0;

a[15]=16'h0;
a[16]=16'h0;
a[17]=16'h0;
a[18]=16'h1;
a[19]=16'h0;

a[20]=16'h0;
a[21]=16'h0;
a[22]=16'h0;
a[23]=16'h0;
a[24]=16'h1;

//storing the values of identity matrix in b
b[0]=16'b1;
b[1]=16'b0;
b[2]=16'b0;
b[3]=16'b0;
b[4]=16'b0;

b[5]=16'b0;
b[6]=16'b1;
b[7]=16'b0;
b[8]=16'b0;
b[9]=16'b0;

b[10]=16'b0;
b[11]=16'b0;
b[12]=16'b1;
b[13]=16'b0;
b[14]=16'b0;

b[15]=16'b0;
b[16]=16'b0;
b[17]=16'b0;
b[18]=16'b1;
b[19]=16'b0;

 b[20]=16'b0;
 b[21]=16'b0;
 b[22]=16'b0;
 b[23]=16'b0;
 b[24]=16'b1;

cont=a[0];//storing the value of a[0] for future use of a[0]

//dividing the values from a[0] to a[4] and b[0] to b[4] with cont
a[0]=(a[0]/cont);
a[1]=(a[1]/cont);
a[2]=(a[2]/cont);
a[3]=(a[3]/cont);
a[4]=(a[4]/cont);

 b[0]=(b[0]/cont);
 b[1]=(b[1]/cont);
 b[2]=(b[2]/cont);
 b[3]=(b[3]/cont);
 b[4]=(b[4]/cont);

cont=a[5];//storing the value of a[5] for future use of a[5]

//dividing the values from a[5] to a[9] and b[5] to b[9] with cont
a[5]=a[5]-(a[0]*cont);
a[6]=a[6]-(a[1]*cont);
a[7]=a[7]-(a[2]*cont);
a[8]=a[8]-(a[3]*cont);
a[9]=a[9]-(a[4]*cont);

b[5]=b[5]-(b[0]*cont);
b[6]=b[6]-(b[1]*cont);
b[7]=b[7]-(b[2]*cont);
b[8]=b[8]-(b[3]*cont);
b[9]=b[9]-(b[4]*cont);

cont=a[10];//storing the value of a[10] for future use of a[10]

//dividing the values from a[10] to a[14] and b[10] to b[14] with cont
a[10]=a[10]-(a[0]*cont);
a[11]=a[11]-(a[1]*cont);
a[12]=a[12]-(a[2]*cont);
a[13]=a[13]-(a[3]*cont);
a[14]=a[14]-(a[4]*cont);

b[10]=b[10]-(b[0]*cont);
b[11]=b[11]-(b[1]*cont);
b[12]=b[12]-(b[2]*cont);
b[13]=b[13]-(b[3]*cont);
b[14]=b[14]-(b[4]*cont);

cont=a[15];//storing the value of a[15] 

//dividing the values from a[15] to a[19] and b[15] to b[19] with cont
a[15]=a[15]-(a[0]*cont);
a[16]=a[16]-(a[1]*cont);
a[17]=a[17]-(a[2]*cont);
a[18]=a[18]-(a[3]*cont);
a[19]=a[19]-(a[4]*cont);


b[15]=b[15]-(b[0]*cont);
b[16]=b[16]-(b[1]*cont);
b[17]=b[17]-(b[2]*cont);
b[18]=b[18]-(b[3]*cont);
b[19]=b[19]-(b[4]*cont);

cont=a[20];//storing the value of a[20] 

//dividing the values from a[20] to a[24] and b[20] to b[24] with cont
a[20]=a[20]-(a[0]*cont);
a[21]=a[21]-(a[1]*cont);
a[22]=a[22]-(a[2]*cont);
a[23]=a[23]-(a[3]*cont);
a[24]=a[24]-(a[4]*cont);

b[20]=b[20]-(b[0]*cont);
b[21]=b[21]-(b[1]*cont);
b[22]=b[22]-(b[2]*cont);
b[23]=b[23]-(b[3]*cont);
b[24]=b[24]-(b[4]*cont);


cont=a[6];//storing the value of a[6]
//part of computing ef
a[5]=(a[5]/cont);
a[6]=(a[6]/cont);
a[7]=(a[7]/cont);
a[8]=(a[8]/cont);
a[9]=(a[9]/cont);

b[5]=(b[5]/cont);
b[6]=(b[6]/cont);
b[7]=(b[7]/cont);
b[8]=(b[8]/cont);
b[9]=(b[9]/cont);

cont=a[11];//storing the value of a[11]
//part of computing ef
a[10]=a[10]-(cont*a[5]);
a[11]=a[11]-(cont*a[6]);
a[12]=a[12]-(cont*a[7]);
a[13]=a[13]-(cont*a[8]);
a[14]=a[14]-(cont*a[9]);

 b[10]=b[10]-(cont*b[5]);
 b[11]=b[11]-(cont*b[6]);
 b[12]=b[12]-(cont*b[7]);
 b[13]=b[13]-(cont*b[8]);
 b[14]=b[14]-(cont*b[9]);

cont=a[16];//storing the value of a[16]
//part of computing ef
 a[15]=a[15]-(cont*a[5]);
 a[16]=a[16]-(cont*a[6]);
 a[17]=a[17]-(cont*a[7]);
 a[18]=a[18]-(cont*a[8]);
 a[19]=a[19]-(cont*a[9]);

 b[15]=b[15]-(cont*b[5]);
 b[16]=b[16]-(cont*b[6]);
 b[17]=b[17]-(cont*b[7]);
 b[18]=b[18]-(cont*b[8]);
 b[19]=b[19]-(cont*b[9]);

cont=a[21];//storing the value of a[21]
//part of computing ef
 a[20]=a[20]-(cont*a[5]);
 a[21]=a[21]-(cont*a[6]);
 a[22]=a[22]-(cont*a[7]);
 a[23]=a[23]-(cont*a[8]);
 a[24]=a[24]-(cont*a[9]);

 b[20]=b[20]-(cont*b[5]);
 b[21]=b[21]-(cont*b[6]);
 b[22]=b[22]-(cont*b[7]);
 b[23]=b[23]-(cont*b[8]);
 b[24]=b[24]-(cont*b[9]);


cont=a[12];//storing the value of a[12]
//part of computing ef
 a[10]=(a[10]/cont);
 a[11]=(a[11]/cont);
 a[12]=(a[12]/cont);
 a[13]=(a[13]/cont);
 a[14]=(a[14]/cont);

 b[10]=(b[10]/cont);
 b[11]=(b[11]/cont);
 b[12]=(b[12]/cont);
 b[13]=(b[13]/cont);
 b[14]=(b[14]/cont);

cont=a[17];//storing the value of a[17]
//part of computing ef
 a[15]=a[15]-(a[10]*cont);
 a[16]=a[16]-(a[11]*cont);
 a[17]=a[17]-(a[12]*cont);
 a[18]=a[18]-(a[13]*cont);
 a[19]=a[19]-(a[14]*cont);

 b[15]=b[15]-(b[10]*cont);
 b[16]=b[16]-(b[11]*cont);
 b[17]=b[17]-(b[12]*cont);
 b[18]=b[18]-(b[13]*cont);
 b[19]=b[19]-(b[14]*cont);

cont=a[22];//storing the value of a[22]
//part of computing ef

 a[20]=a[20]-(a[10]*cont);
 a[21]=a[21]-(a[11]*cont);
 a[22]=a[22]-(a[12]*cont);
 a[23]=a[23]-(a[13]*cont);
 a[24]=a[24]-(a[14]*cont);

 b[15]=b[15]-(b[10]*cont);
 b[16]=b[16]-(b[11]*cont);
 b[17]=b[17]-(b[12]*cont);
 b[18]=b[18]-(b[13]*cont);
 b[19]=b[19]-(b[14]*cont);

cont=a[18];//storing the value of a[18]
//part of computing ef

 a[15]=(a[15]/cont);
 a[16]=(a[16]/cont);
 a[17]=(a[17]/cont);
 a[18]=(a[18]/cont);
 a[19]=(a[19]/cont);

 b[15]=(b[15]/cont);
 b[16]=(b[16]/cont);
 b[17]=(b[17]/cont);
 b[18]=(b[18]/cont);
 b[19]=(b[19]/cont);

cont=a[23];//storing the value of a[23]
//part of computing ef

 a[20]=a[20]-(cont*a[15]);
 a[21]=a[21]-(cont*a[16]);
 a[22]=a[22]-(cont*a[17]);
 a[23]=a[23]-(cont*a[18]);
 a[24]=a[24]-(cont*a[19]);

 b[20]=b[20]-(cont*b[15]);
 b[21]=b[21]-(cont*b[16]);
 b[22]=b[22]-(cont*b[17]);
 b[23]=b[23]-(cont*b[18]);
 b[24]=b[24]-(cont*b[19]);

cont=a[24];//storing the value of a[24]
//part of computing ef
 a[20]=(a[20]/cont);
 a[21]=(a[21]/cont);
 a[22]=(a[22]/cont);
 a[23]=(a[23]/cont);
 a[24]=(a[24]/cont);

 b[20]=(b[20]/cont);
 b[21]=(b[21]/cont);
 b[22]=(b[22]/cont);
 b[23]=(b[23]/cont);
 b[24]=(b[24]/cont);

//THE FOLLOWING CODE COMPUTES THE RREF
cont=a[1];//storing the value of a[1]

 a[0]=a[0]-(cont*a[5]);
 a[1]=a[1]-(cont*a[6]);
 a[2]=a[2]-(cont*a[7]);
 a[3]=a[3]-(cont*a[8]);
 a[4]=a[4]-(cont*a[9]);

 b[0]=b[0]-(cont*b[5]);
 b[1]=b[1]-(cont*b[6]);
 b[2]=b[2]-(cont*b[7]);
 b[3]=b[3]-(cont*b[8]);
 b[4]=b[4]-(cont*b[9]);

cont=a[7];//storing the value of a[7]

 a[5]=a[5]-(cont*a[10]);
 a[6]=a[6]-(cont*a[11]);
 a[7]=a[7]-(cont*a[12]);
 a[8]=a[8]-(cont*a[13]);
 a[9]=a[9]-(cont*a[14]);

 b[5]=b[5]-(cont*b[10]);
 b[6]=b[6]-(cont*b[11]);
 b[7]=b[7]-(cont*b[12]);
 b[8]=b[8]-(cont*b[13]);
 b[9]=b[9]-(cont*b[14]);

cont=a[2];//storing the value of a[2]

 a[0]=a[0]-(cont*a[10]);
 a[1]=a[1]-(cont*a[11]);
 a[2]=a[2]-(cont*a[12]);
 a[3]=a[3]-(cont*a[13]);
 a[4]=a[4]-(cont*a[14]);

 b[0]=b[0]-(cont*b[10]);
 b[1]=b[1]-(cont*b[11]);
 b[2]=b[2]-(cont*b[12]);
 b[3]=b[3]-(cont*b[13]);
 b[4]=b[4]-(cont*b[14]);

cont=a[13];//storing the value of a[13]

 a[10]=a[10]-(cont*a[15]);
 a[11]=a[11]-(cont*a[16]);
 a[12]=a[12]-(cont*a[17]);
 a[13]=a[13]-(cont*a[18]);
 a[14]=a[14]-(cont*a[19]);

 b[10]=b[10]-(cont*b[15]);
 b[11]=b[11]-(cont*b[16]);
 b[12]=b[12]-(cont*b[17]);
 b[13]=b[13]-(cont*b[18]);
 b[14]=b[14]-(cont*b[19]);

cont=a[8];//storing the value of a[8]

 a[5]=a[5]-(cont*a[15]);
 a[6]=a[6]-(cont*a[16]);
 a[7]=a[7]-(cont*a[17]);
 a[8]=a[8]-(cont*a[18]);
 a[9]=a[9]-(cont*a[19]);

 b[5]=b[5]-(cont*b[15]);
 b[6]=b[6]-(cont*b[16]);
 b[7]=b[7]-(cont*b[17]);
 b[8]=b[8]-(cont*b[18]);
 b[9]=b[9]-(cont*b[19]);

cont=a[3];//storing the value of a[3]

 a[0]=a[0]-(cont*a[15]);
 a[1]=a[1]-(cont*a[16]);
 a[2]=a[2]-(cont*a[17]);
 a[3]=a[3]-(cont*a[18]);
 a[4]=a[4]-(cont*a[19]);

 b[0]=b[0]-(cont*b[15]);
 b[1]=b[1]-(cont*b[16]);
 b[2]=b[2]-(cont*b[17]);
 b[3]=b[3]-(cont*b[18]);
 b[4]=b[4]-(cont*b[19]);

//storing the values in output
out20=(b[20]/a[24]);
out21=(b[21]/a[24]);
out22=(b[22]/a[24]);
out23=(b[23]/a[24]);
out24=(b[24]/a[24]);


cont=a[19];//storing the value of a[19]


 a[15]=a[15]-(cont*a[20]);
 a[16]=a[16]-(cont*a[21]);
 a[17]=a[17]-(cont*a[22]);
 a[18]=a[18]-(cont*a[23]);
 a[19]=a[19]-(cont*a[24]);

//declaring the values of output
 out15=b[15]-(cont*b[20]);
 out16=b[16]-(cont*b[21]);
 out17=b[17]-(cont*b[22]);
 out18=b[18]-(cont*b[23]);
 out19=b[19]-(cont*b[24]);

//
cont=a[14];//storing the value of a[14]

 a[10]=a[10]-(cont*a[20]);
 a[11]=a[11]-(cont*a[21]);
 a[12]=a[12]-(cont*a[22]);
 a[13]=a[13]-(cont*a[23]);
 a[14]=a[14]-(cont*a[24]);

//declaring the values of output
 out10=b[10]-(cont*b[20]);
 out11=b[11]-(cont*b[21]);
 out12=b[12]-(cont*b[22]);
 out13=b[13]-(cont*b[23]);
 out14=b[14]-(cont*b[24]);

//
cont=a[9];//storing the value of a[9]

 a[5]=a[5]-(cont*a[20]);
 a[6]=a[6]-(cont*a[21]);
 a[7]=a[7]-(cont*a[22]);
 a[8]=a[8]-(cont*a[23]);
 a[9]=a[9]-(cont*a[24]);

//declaring the values of output
 out5=b[5]-(cont*b[20]);
 out6=b[6]-(cont*b[21]);
 out7=b[7]-(cont*b[22]);
 out8=b[8]-(cont*b[23]);
 out9=b[9]-(cont*b[24]);

//
cont=a[4];//storing the value of a[4]

 a[0]=a[0]-(cont*a[20]);
 a[1]=a[1]-(cont*a[21]);
 a[2]=a[2]-(cont*a[22]);
 a[3]=a[3]-(cont*a[23]);
 a[4]=a[4]-(cont*a[24]);

//declaring the values of output
 out0=b[0]-(cont*b[20]);
 out1=b[1]-(cont*b[21]);
 out2=b[2]-(cont*b[22]);
 out3=b[3]-(cont*b[23]);
 out4=b[4]-(cont*b[24]);
end
endmodule
