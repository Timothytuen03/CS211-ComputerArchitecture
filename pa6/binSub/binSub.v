input [7:0] minuend;
input [7:0] subtrahend;
output [7:0] difference;

wire inv_subtrahend_7;
wire inv_subtrahend_6;
wire inv_subtrahend_5;
wire inv_subtrahend_4;
wire inv_subtrahend_3;
wire inv_subtrahend_2;
wire inv_subtrahend_1;
wire inv_subtrahend_0;

wire negator_carry_0;
wire negator_carry_1;
wire negator_carry_2;
wire negator_carry_3;
wire negator_carry_4;
wire negator_carry_5;
wire negator_carry_6;
wire negator_carry_7;

wire neg_subtrahend_7;
wire neg_subtrahend_6;
wire neg_subtrahend_5;
wire neg_subtrahend_4;
wire neg_subtrahend_3;
wire neg_subtrahend_2;
wire neg_subtrahend_1;
wire neg_subtrahend_0;

wire diff_carry_0;
wire diff_carry_1;
wire diff_carry_2;
wire diff_carry_3;
wire diff_carry_4;
wire diff_carry_5;
wire diff_carry_6;
wire diff_carry_7;

wire diff_temp_0;
wire diff_temp_1;
wire diff_temp_2;
wire diff_temp_3;
wire diff_temp_4;
wire diff_temp_5;
wire diff_temp_6;
wire diff_temp_7;

wire diff_xor_0;
wire diff_xor_1;
wire diff_xor_2;
wire diff_xor_3;
wire diff_xor_4;
wire diff_xor_5;
wire diff_xor_6;
wire diff_xor_7;

wire carry_in_diff_0;
wire carry_in_diff_1;
wire carry_in_diff_2;
wire carry_in_diff_3;
wire carry_in_diff_4;
wire carry_in_diff_5;
wire carry_in_diff_6;

wire carry_in_two_0;
wire carry_in_two_1;
wire carry_in_two_2;
wire carry_in_two_3;
wire carry_in_two_4;
wire carry_in_two_5;
wire carry_in_two_6;

assign inv_subtrahend_7 = ~ subtrahend[7];
assign inv_subtrahend_6 = ~ subtrahend[6];
assign inv_subtrahend_5 = ~ subtrahend[5];
assign inv_subtrahend_4 = ~ subtrahend[4];
assign inv_subtrahend_3 = ~ subtrahend[3];
assign inv_subtrahend_2 = ~ subtrahend[2];
assign inv_subtrahend_1 = ~ subtrahend[1];
assign inv_subtrahend_0 = ~ subtrahend[0];

assign negator_carry_0 = inv_subtrahend_0;
assign negator_carry_1 = negator_carry_0 & inv_subtrahend_1;
assign negator_carry_2 = negator_carry_1 & inv_subtrahend_2;
assign negator_carry_3 = negator_carry_2 & inv_subtrahend_3;
assign negator_carry_4 = negator_carry_3 & inv_subtrahend_4;
assign negator_carry_5 = negator_carry_4 & inv_subtrahend_5;
assign negator_carry_6 = negator_carry_5 & inv_subtrahend_6;
assign negator_carry_7 = negator_carry_6 & inv_subtrahend_7;

assign neg_subtrahend_0 = ~ inv_subtrahend_0;
assign neg_subtrahend_1 = negator_carry_0 ^ inv_subtrahend_1;
assign neg_subtrahend_2 = negator_carry_1 ^ inv_subtrahend_2;
assign neg_subtrahend_3 = negator_carry_2 ^ inv_subtrahend_3;
assign neg_subtrahend_4 = negator_carry_3 ^ inv_subtrahend_4;
assign neg_subtrahend_5 = negator_carry_4 ^ inv_subtrahend_5;
assign neg_subtrahend_6 = negator_carry_5 ^ inv_subtrahend_6;
assign neg_subtrahend_7 = negator_carry_6 ^ inv_subtrahend_7;


assign diff_temp_0 = minuend[0] ^ neg_subtrahend_0;
assign diff_temp_1 = minuend[1] ^ neg_subtrahend_1;
assign diff_temp_2 = minuend[2] ^ neg_subtrahend_2;
assign diff_temp_3 = minuend[3] ^ neg_subtrahend_3;
assign diff_temp_4 = minuend[4] ^ neg_subtrahend_4;
assign diff_temp_5 = minuend[5] ^ neg_subtrahend_5;
assign diff_temp_6 = minuend[6] ^ neg_subtrahend_6;
assign diff_temp_7 = minuend[7] ^ neg_subtrahend_7;

assign diff_carry_0 = neg_subtrahend_0 & minuend[0];
assign diff_carry_1 = neg_subtrahend_1 & minuend[1];
assign diff_carry_2 = neg_subtrahend_2 & minuend[2];
assign diff_carry_3 = neg_subtrahend_3 & minuend[3];
assign diff_carry_4 = neg_subtrahend_4 & minuend[4];
assign diff_carry_5 = neg_subtrahend_5 & minuend[5];
assign diff_carry_6 = neg_subtrahend_6 & minuend[6];
assign diff_carry_7 = neg_subtrahend_7 & minuend[7];

assign diff_xor_0 = minuend[0] ~| neg_subtrahend_0;
assign diff_xor_1 = minuend[1] ~| neg_subtrahend_1;
assign diff_xor_2 = minuend[2] ~| neg_subtrahend_2;
assign diff_xor_3 = minuend[3] ~| neg_subtrahend_3;
assign diff_xor_4 = minuend[4] ~| neg_subtrahend_4;
assign diff_xor_5 = minuend[5] ~| neg_subtrahend_5;
assign diff_xor_6 = minuend[6] ~| neg_subtrahend_6;
assign diff_xor_7 = minuend[7] ~| neg_subtrahend_7;

assign carry_in_diff_0 = diff_carry_0;
assign carry_in_two_1 = carry_in_diff_0 & diff_temp_1;
assign carry_in_diff_1 = diff_carry_1 | carry_in_two_1;
assign carry_in_two_2 = carry_in_diff_1 & diff_temp_2;
assign carry_in_diff_2 = diff_carry_2 | carry_in_two_2;
assign carry_in_two_3 = carry_in_diff_2 & diff_temp_3;
assign carry_in_diff_3 = diff_carry_3 | carry_in_two_3;
assign carry_in_two_4 = carry_in_diff_3 & diff_temp_4;
assign carry_in_diff_4 = diff_carry_4 | carry_in_two_4;
assign carry_in_two_5 = carry_in_diff_4 & diff_temp_5;
assign carry_in_diff_5 = diff_carry_5 | carry_in_two_5;
assign carry_in_two_6 = carry_in_diff_5 & diff_temp_6;
assign carry_in_diff_6 = diff_carry_6 | carry_in_two_6;

assign difference[0] = diff_temp_0;
assign difference[1] = diff_temp_1 ^ carry_in_diff_0;
assign difference[2] = diff_temp_2 ^ carry_in_diff_1;
assign difference[3] = diff_temp_3 ^ carry_in_diff_2;
assign difference[4] = diff_temp_4 ^ carry_in_diff_3;
assign difference[5] = diff_temp_5 ^ carry_in_diff_4;
assign difference[6] = diff_temp_6 ^ carry_in_diff_5;
assign difference[7] = diff_temp_7 ^ carry_in_diff_6;