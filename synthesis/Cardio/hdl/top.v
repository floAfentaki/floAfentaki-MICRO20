//weights: [[[4, -17, 5, 4, 5, -2, 38, 15, 32, 64, 16, 36, -67, -32, -51, 12, -75, -31, -37, 10, 18], [-4, 1, -4, 1, 0, 2, 0, -1, 1, -1, -2, -3, 0, 2, -4, 1, 2, -4, -1, -3, 0], [29, 65, -12, 18, -7, 24, 12, -48, -15, -1, 0, 23, 5, -10, -13, 4, 4, -80, -11, -22, 4]], [[-15, -2, 26], [-54, 6, 11], [65, -6, -21]]]
//intercepts: [[629, -55, 1440], [-5271, 913, 6033]]
//act size: [4, 13, 20]
//pred num: 3
module top (inp, out);
input [83:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 4: 8'sb00000100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000100;

    wire signed [11:0] n_0_0_po_1;
    //weight -17: 8'sb11101111
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11101111;

    wire signed [11:0] n_0_0_po_2;
    //weight 5: 8'sb00000101
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000101;

    wire signed [11:0] n_0_0_po_3;
    //weight 4: 8'sb00000100
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000100;

    wire signed [11:0] n_0_0_po_4;
    //weight 5: 8'sb00000101
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000101;

    wire signed [11:0] n_0_0_po_5;
    //weight -2: 8'sb11111110
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111110;

    wire signed [11:0] n_0_0_po_6;
    //weight 38: 8'sb00100110
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00100110;

    wire signed [11:0] n_0_0_po_7;
    //weight 15: 8'sb00001111
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00001111;

    wire signed [11:0] n_0_0_po_8;
    //weight 32: 8'sb00100000
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00100000;

    wire signed [11:0] n_0_0_po_9;
    //weight 64: 8'sb01000000
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb01000000;

    wire signed [11:0] n_0_0_po_10;
    //weight 16: 8'sb00010000
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_11;
    //weight 36: 8'sb00100100
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00100100;

    wire signed [11:0] n_0_0_po_12;
    //weight -67: 8'sb10111101
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb10111101;

    wire signed [11:0] n_0_0_po_13;
    //weight -32: 8'sb11100000
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_14;
    //weight -51: 8'sb11001101
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11001101;

    wire signed [11:0] n_0_0_po_15;
    //weight 12: 8'sb00001100
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_16;
    //weight -75: 8'sb10110101
    assign n_0_0_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb10110101;

    wire signed [11:0] n_0_0_po_17;
    //weight -31: 8'sb11100001
    assign n_0_0_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11100001;

    wire signed [11:0] n_0_0_po_18;
    //weight -37: 8'sb11011011
    assign n_0_0_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11011011;

    wire signed [11:0] n_0_0_po_19;
    //weight 10: 8'sb00001010
    assign n_0_0_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb00001010;

    wire signed [11:0] n_0_0_po_20;
    //weight 18: 8'sb00010010
    assign n_0_0_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00010010;

    wire signed [13:0] n_0_0_sum;
    assign n_0_0_sum = 629 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_19 + n_0_0_po_20;
    //relu
    wire [12:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_0_sum[12:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -4: 8'sb11111100
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_1;
    //weight 1: 8'sb00000001
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_2;
    //weight -4: 8'sb11111100
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_3;
    //weight 1: 8'sb00000001
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_4;
    //weight 0: 8'sb00000000
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_5;
    //weight 2: 8'sb00000010
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000010;

    wire signed [11:0] n_0_1_po_6;
    //weight 0: 8'sb00000000
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_7;
    //weight -1: 8'sb11111111
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_8;
    //weight 1: 8'sb00000001
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_9;
    //weight -1: 8'sb11111111
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_10;
    //weight -2: 8'sb11111110
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11111110;

    wire signed [11:0] n_0_1_po_11;
    //weight -3: 8'sb11111101
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_po_12;
    //weight 0: 8'sb00000000
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_13;
    //weight 2: 8'sb00000010
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb00000010;

    wire signed [11:0] n_0_1_po_14;
    //weight -4: 8'sb11111100
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_15;
    //weight 1: 8'sb00000001
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_16;
    //weight 2: 8'sb00000010
    assign n_0_1_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00000010;

    wire signed [11:0] n_0_1_po_17;
    //weight -4: 8'sb11111100
    assign n_0_1_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb11111100;

    wire signed [11:0] n_0_1_po_18;
    //weight -1: 8'sb11111111
    assign n_0_1_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_19;
    //weight -3: 8'sb11111101
    assign n_0_1_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_po_20;
    //weight 0: 8'sb00000000
    assign n_0_1_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000000;

    wire signed [13:0] n_0_1_sum;
    assign n_0_1_sum = -55 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19 + n_0_1_po_20;
    //relu
    wire [12:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_1_sum[12:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 29: 8'sb00011101
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00011101;

    wire signed [11:0] n_0_2_po_1;
    //weight 65: 8'sb01000001
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000001;

    wire signed [11:0] n_0_2_po_2;
    //weight -12: 8'sb11110100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110100;

    wire signed [11:0] n_0_2_po_3;
    //weight 18: 8'sb00010010
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00010010;

    wire signed [11:0] n_0_2_po_4;
    //weight -7: 8'sb11111001
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111001;

    wire signed [11:0] n_0_2_po_5;
    //weight 24: 8'sb00011000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00011000;

    wire signed [11:0] n_0_2_po_6;
    //weight 12: 8'sb00001100
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001100;

    wire signed [11:0] n_0_2_po_7;
    //weight -48: 8'sb11010000
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11010000;

    wire signed [11:0] n_0_2_po_8;
    //weight -15: 8'sb11110001
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110001;

    wire signed [11:0] n_0_2_po_9;
    //weight -1: 8'sb11111111
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_10;
    //weight 0: 8'sb00000000
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00000000;

    wire signed [11:0] n_0_2_po_11;
    //weight 23: 8'sb00010111
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00010111;

    wire signed [11:0] n_0_2_po_12;
    //weight 5: 8'sb00000101
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00000101;

    wire signed [11:0] n_0_2_po_13;
    //weight -10: 8'sb11110110
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11110110;

    wire signed [11:0] n_0_2_po_14;
    //weight -13: 8'sb11110011
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11110011;

    wire signed [11:0] n_0_2_po_15;
    //weight 4: 8'sb00000100
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00000100;

    wire signed [11:0] n_0_2_po_16;
    //weight 4: 8'sb00000100
    assign n_0_2_po_16 = $signed({1'b0, inp[67:64]}) * 8'sb00000100;

    wire signed [11:0] n_0_2_po_17;
    //weight -80: 8'sb10110000
    assign n_0_2_po_17 = $signed({1'b0, inp[71:68]}) * 8'sb10110000;

    wire signed [11:0] n_0_2_po_18;
    //weight -11: 8'sb11110101
    assign n_0_2_po_18 = $signed({1'b0, inp[75:72]}) * 8'sb11110101;

    wire signed [11:0] n_0_2_po_19;
    //weight -22: 8'sb11101010
    assign n_0_2_po_19 = $signed({1'b0, inp[79:76]}) * 8'sb11101010;

    wire signed [11:0] n_0_2_po_20;
    //weight 4: 8'sb00000100
    assign n_0_2_po_20 = $signed({1'b0, inp[83:80]}) * 8'sb00000100;

    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = 1440 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_19 + n_0_2_po_20;
    //relu
    wire [12:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_2_sum[12:0]);

// layer: 1 - neuron: 0
    wire signed [20:0] n_1_0_po_0;
    //weight -15: 8'sb11110001
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11110001;

    wire signed [20:0] n_1_0_po_1;
    //weight -2: 8'sb11111110
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111110;

    wire signed [20:0] n_1_0_po_2;
    //weight 26: 8'sb00011010
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00011010;

    wire signed [20:0] n_1_0_sum;
    assign n_1_0_sum = -5271 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [19:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_0_sum[19:0]);

// layer: 1 - neuron: 1
    wire signed [20:0] n_1_1_po_0;
    //weight -54: 8'sb11001010
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11001010;

    wire signed [20:0] n_1_1_po_1;
    //weight 6: 8'sb00000110
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000110;

    wire signed [20:0] n_1_1_po_2;
    //weight 11: 8'sb00001011
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00001011;

    wire signed [20:0] n_1_1_sum;
    assign n_1_1_sum = 913 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [19:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_1_sum[19:0]);

// layer: 1 - neuron: 2
    wire signed [20:0] n_1_2_po_0;
    //weight 65: 8'sb01000001
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb01000001;

    wire signed [20:0] n_1_2_po_1;
    //weight -6: 8'sb11111010
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111010;

    wire signed [20:0] n_1_2_po_2;
    //weight -21: 8'sb11101011
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb11101011;

    wire signed [20:0] n_1_2_sum;
    assign n_1_2_sum = 6033 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [19:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({20{1'b0}}) : $unsigned(n_1_2_sum[19:0]);

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [20:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [20:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
