/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`timescale 1ns / 1ps

module lab_3_q1b(
    input [3:0] x,
    input [3:0] y,
    input add_sub_select,
    output [3:0] z,
    output carry_out
    );
    
wire int_sig1, int_sig2, int_sig3;
   
adder instOne (x[0], y[0]^add_sub_select, z[0], int_sig1, add_sub_select);
adder instTwo (x[1], y[1]^add_sub_select, z[1], int_sig1, add_sub_select);
adder instThree (x[2], y[2]^add_sub_select, z[2], int_sig1, add_sub_select);
adder instFour (x[3], y[3]^add_sub_select, z[3], int_sig1, add_sub_select);

endmodule

module adder(
    input x,
    input y,
    output z,
    output carry_out,
    input carry
);

wire int_sig1, int_sig2, int_sig3, int_sig4, int_sig5, int_sig6, int_sig7, int_sig8;

assign int_sig1 = x & -y;
assign int_sig2 = -x & y;
assign int_sig3 = int_sig1 + int_sig2;

assign int_sig4 = int_sig3 & -carry;
assign int_sig5 = -int_sig3 & carry;
assign z = int_sig4 + int_sig5;

assign int_sig6 = x & y;
assign int_sig7 = y & carry;
assign int_sig8 = carry & x;

assign carry_out = int_sig6 + int_sig7 + int_sig8;

endmodule
