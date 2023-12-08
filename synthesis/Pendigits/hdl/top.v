//weights: [[[4, -7, 8, 34, -12, 5, -4, 7, -13, 20, 41, -6, 16, -29, -20, -20], [-38, 17, -1, 34, 53, 1, 14, -19, -8, 18, -20, -25, -6, -14, 26, 22], [-16, -19, -1, 6, 21, 7, 7, 11, 18, 3, -11, 16, 11, -49, 22, -48]], [[-5, -15, 3], [-46, -2, 23], [-40, 9, 17], [20, 19, -2], [-9, -26, 21], [30, 17, -18], [46, -11, -71], [0, 18, 2], [-2, 11, -11], [6, -14, 20]]]
//intercepts: [[-574, -253, 412], [7868, -275, -6441, -6760, 3084, -86, 3926, -4500, 4887, -2071]]
//act size: [4, 12, 19]
//pred num: 10
module top (inp, out);
input [63:0] inp;
output [3:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight 4: 8'sb00000100
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000100;

    wire signed [11:0] n_0_0_po_1;
    //weight -7: 8'sb11111001
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_2;
    //weight 8: 8'sb00001000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_3;
    //weight 34: 8'sb00100010
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100010;

    wire signed [11:0] n_0_0_po_4;
    //weight -12: 8'sb11110100
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_5;
    //weight 5: 8'sb00000101
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000101;

    wire signed [11:0] n_0_0_po_6;
    //weight -4: 8'sb11111100
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_7;
    //weight 7: 8'sb00000111
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_8;
    //weight -13: 8'sb11110011
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11110011;

    wire signed [11:0] n_0_0_po_9;
    //weight 20: 8'sb00010100
    assign n_0_0_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00010100;

    wire signed [11:0] n_0_0_po_10;
    //weight 41: 8'sb00101001
    assign n_0_0_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb00101001;

    wire signed [11:0] n_0_0_po_11;
    //weight -6: 8'sb11111010
    assign n_0_0_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11111010;

    wire signed [11:0] n_0_0_po_12;
    //weight 16: 8'sb00010000
    assign n_0_0_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00010000;

    wire signed [11:0] n_0_0_po_13;
    //weight -29: 8'sb11100011
    assign n_0_0_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11100011;

    wire signed [11:0] n_0_0_po_14;
    //weight -20: 8'sb11101100
    assign n_0_0_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb11101100;

    wire signed [11:0] n_0_0_po_15;
    //weight -20: 8'sb11101100
    assign n_0_0_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11101100;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -574 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -38: 8'sb11011010
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11011010;

    wire signed [11:0] n_0_1_po_1;
    //weight 17: 8'sb00010001
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010001;

    wire signed [11:0] n_0_1_po_2;
    //weight -1: 8'sb11111111
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_3;
    //weight 34: 8'sb00100010
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00100010;

    wire signed [11:0] n_0_1_po_4;
    //weight 53: 8'sb00110101
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00110101;

    wire signed [11:0] n_0_1_po_5;
    //weight 1: 8'sb00000001
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_6;
    //weight 14: 8'sb00001110
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001110;

    wire signed [11:0] n_0_1_po_7;
    //weight -19: 8'sb11101101
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101101;

    wire signed [11:0] n_0_1_po_8;
    //weight -8: 8'sb11111000
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_9;
    //weight 18: 8'sb00010010
    assign n_0_1_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00010010;

    wire signed [11:0] n_0_1_po_10;
    //weight -20: 8'sb11101100
    assign n_0_1_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11101100;

    wire signed [11:0] n_0_1_po_11;
    //weight -25: 8'sb11100111
    assign n_0_1_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb11100111;

    wire signed [11:0] n_0_1_po_12;
    //weight -6: 8'sb11111010
    assign n_0_1_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_13;
    //weight -14: 8'sb11110010
    assign n_0_1_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11110010;

    wire signed [11:0] n_0_1_po_14;
    //weight 26: 8'sb00011010
    assign n_0_1_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00011010;

    wire signed [11:0] n_0_1_po_15;
    //weight 22: 8'sb00010110
    assign n_0_1_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb00010110;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -253 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_12 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_15;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -16: 8'sb11110000
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110000;

    wire signed [11:0] n_0_2_po_1;
    //weight -19: 8'sb11101101
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11101101;

    wire signed [11:0] n_0_2_po_2;
    //weight -1: 8'sb11111111
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_3;
    //weight 6: 8'sb00000110
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000110;

    wire signed [11:0] n_0_2_po_4;
    //weight 21: 8'sb00010101
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00010101;

    wire signed [11:0] n_0_2_po_5;
    //weight 7: 8'sb00000111
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000111;

    wire signed [11:0] n_0_2_po_6;
    //weight 7: 8'sb00000111
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000111;

    wire signed [11:0] n_0_2_po_7;
    //weight 11: 8'sb00001011
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00001011;

    wire signed [11:0] n_0_2_po_8;
    //weight 18: 8'sb00010010
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00010010;

    wire signed [11:0] n_0_2_po_9;
    //weight 3: 8'sb00000011
    assign n_0_2_po_9 = $signed({1'b0, inp[39:36]}) * 8'sb00000011;

    wire signed [11:0] n_0_2_po_10;
    //weight -11: 8'sb11110101
    assign n_0_2_po_10 = $signed({1'b0, inp[43:40]}) * 8'sb11110101;

    wire signed [11:0] n_0_2_po_11;
    //weight 16: 8'sb00010000
    assign n_0_2_po_11 = $signed({1'b0, inp[47:44]}) * 8'sb00010000;

    wire signed [11:0] n_0_2_po_12;
    //weight 11: 8'sb00001011
    assign n_0_2_po_12 = $signed({1'b0, inp[51:48]}) * 8'sb00001011;

    wire signed [11:0] n_0_2_po_13;
    //weight -49: 8'sb11001111
    assign n_0_2_po_13 = $signed({1'b0, inp[55:52]}) * 8'sb11001111;

    wire signed [11:0] n_0_2_po_14;
    //weight 22: 8'sb00010110
    assign n_0_2_po_14 = $signed({1'b0, inp[59:56]}) * 8'sb00010110;

    wire signed [11:0] n_0_2_po_15;
    //weight -48: 8'sb11010000
    assign n_0_2_po_15 = $signed({1'b0, inp[63:60]}) * 8'sb11010000;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = 412 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_12 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight -5: 8'sb11111011
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111011;

    wire signed [19:0] n_1_0_po_1;
    //weight -15: 8'sb11110001
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11110001;

    wire signed [19:0] n_1_0_po_2;
    //weight 3: 8'sb00000011
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000011;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 7868 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight -46: 8'sb11010010
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11010010;

    wire signed [19:0] n_1_1_po_1;
    //weight -2: 8'sb11111110
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111110;

    wire signed [19:0] n_1_1_po_2;
    //weight 23: 8'sb00010111
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010111;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = -275 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight -40: 8'sb11011000
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb11011000;

    wire signed [19:0] n_1_2_po_1;
    //weight 9: 8'sb00001001
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001001;

    wire signed [19:0] n_1_2_po_2;
    //weight 17: 8'sb00010001
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010001;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = -6441 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [18:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_2_sum[18:0]);

// layer: 1 - neuron: 3
    wire signed [19:0] n_1_3_po_0;
    //weight 20: 8'sb00010100
    assign n_1_3_po_0 = $signed({1'b0, n_0_0}) * 8'sb00010100;

    wire signed [19:0] n_1_3_po_1;
    //weight 19: 8'sb00010011
    assign n_1_3_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010011;

    wire signed [19:0] n_1_3_po_2;
    //weight -2: 8'sb11111110
    assign n_1_3_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111110;

    wire signed [19:0] n_1_3_sum;
    assign n_1_3_sum = -6760 + n_1_3_po_0 + n_1_3_po_1 + n_1_3_po_2;
    //relu
    wire [18:0] n_1_3;
    assign n_1_3 = (n_1_3_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_3_sum[18:0]);

// layer: 1 - neuron: 4
    wire signed [19:0] n_1_4_po_0;
    //weight -9: 8'sb11110111
    assign n_1_4_po_0 = $signed({1'b0, n_0_0}) * 8'sb11110111;

    wire signed [19:0] n_1_4_po_1;
    //weight -26: 8'sb11100110
    assign n_1_4_po_1 = $signed({1'b0, n_0_1}) * 8'sb11100110;

    wire signed [19:0] n_1_4_po_2;
    //weight 21: 8'sb00010101
    assign n_1_4_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010101;

    wire signed [19:0] n_1_4_sum;
    assign n_1_4_sum = 3084 + n_1_4_po_0 + n_1_4_po_1 + n_1_4_po_2;
    //relu
    wire [18:0] n_1_4;
    assign n_1_4 = (n_1_4_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_4_sum[18:0]);

// layer: 1 - neuron: 5
    wire signed [19:0] n_1_5_po_0;
    //weight 30: 8'sb00011110
    assign n_1_5_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011110;

    wire signed [19:0] n_1_5_po_1;
    //weight 17: 8'sb00010001
    assign n_1_5_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010001;

    wire signed [19:0] n_1_5_po_2;
    //weight -18: 8'sb11101110
    assign n_1_5_po_2 = $signed({1'b0, n_0_2}) * 8'sb11101110;

    wire signed [19:0] n_1_5_sum;
    assign n_1_5_sum = -86 + n_1_5_po_0 + n_1_5_po_1 + n_1_5_po_2;
    //relu
    wire [18:0] n_1_5;
    assign n_1_5 = (n_1_5_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_5_sum[18:0]);

// layer: 1 - neuron: 6
    wire signed [19:0] n_1_6_po_0;
    //weight 46: 8'sb00101110
    assign n_1_6_po_0 = $signed({1'b0, n_0_0}) * 8'sb00101110;

    wire signed [19:0] n_1_6_po_1;
    //weight -11: 8'sb11110101
    assign n_1_6_po_1 = $signed({1'b0, n_0_1}) * 8'sb11110101;

    wire signed [19:0] n_1_6_po_2;
    //weight -71: 8'sb10111001
    assign n_1_6_po_2 = $signed({1'b0, n_0_2}) * 8'sb10111001;

    wire signed [19:0] n_1_6_sum;
    assign n_1_6_sum = 3926 + n_1_6_po_0 + n_1_6_po_1 + n_1_6_po_2;
    //relu
    wire [18:0] n_1_6;
    assign n_1_6 = (n_1_6_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_6_sum[18:0]);

// layer: 1 - neuron: 7
    wire signed [19:0] n_1_7_po_0;
    //weight 0: 8'sb00000000
    assign n_1_7_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000000;

    wire signed [19:0] n_1_7_po_1;
    //weight 18: 8'sb00010010
    assign n_1_7_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010010;

    wire signed [19:0] n_1_7_po_2;
    //weight 2: 8'sb00000010
    assign n_1_7_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000010;

    wire signed [19:0] n_1_7_sum;
    assign n_1_7_sum = -4500 + n_1_7_po_0 + n_1_7_po_1 + n_1_7_po_2;
    //relu
    wire [18:0] n_1_7;
    assign n_1_7 = (n_1_7_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_7_sum[18:0]);

// layer: 1 - neuron: 8
    wire signed [19:0] n_1_8_po_0;
    //weight -2: 8'sb11111110
    assign n_1_8_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111110;

    wire signed [19:0] n_1_8_po_1;
    //weight 11: 8'sb00001011
    assign n_1_8_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001011;

    wire signed [19:0] n_1_8_po_2;
    //weight -11: 8'sb11110101
    assign n_1_8_po_2 = $signed({1'b0, n_0_2}) * 8'sb11110101;

    wire signed [19:0] n_1_8_sum;
    assign n_1_8_sum = 4887 + n_1_8_po_0 + n_1_8_po_1 + n_1_8_po_2;
    //relu
    wire [18:0] n_1_8;
    assign n_1_8 = (n_1_8_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_8_sum[18:0]);

// layer: 1 - neuron: 9
    wire signed [19:0] n_1_9_po_0;
    //weight 6: 8'sb00000110
    assign n_1_9_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000110;

    wire signed [19:0] n_1_9_po_1;
    //weight -14: 8'sb11110010
    assign n_1_9_po_1 = $signed({1'b0, n_0_1}) * 8'sb11110010;

    wire signed [19:0] n_1_9_po_2;
    //weight 20: 8'sb00010100
    assign n_1_9_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010100;

    wire signed [19:0] n_1_9_sum;
    assign n_1_9_sum = -2071 + n_1_9_po_0 + n_1_9_po_1 + n_1_9_po_2;
    //relu
    wire [18:0] n_1_9;
    assign n_1_9 = (n_1_9_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_9_sum[18:0]);

// argmax: 10 classes, need 4 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6, n_1_7, n_1_8, n_1_9
    //comp level 0
    wire cmp_0_0;
    wire [19:0] argmax_val_0_0;
    wire [3:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 4'b0000 : 4'b0001;

    wire cmp_0_2;
    wire [19:0] argmax_val_0_2;
    wire [3:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 4'b0010 : 4'b0011;

    wire cmp_0_4;
    wire [19:0] argmax_val_0_4;
    wire [3:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 4'b0100 : 4'b0101;

    wire cmp_0_6;
    wire [19:0] argmax_val_0_6;
    wire [3:0] argmax_idx_0_6;
    assign {cmp_0_6} = ( n_1_6 >= n_1_7 );
    assign {argmax_val_0_6} = ( cmp_0_6 ) ? n_1_6 : n_1_7;
    assign {argmax_idx_0_6} = ( cmp_0_6 ) ? 4'b0110 : 4'b0111;

    wire cmp_0_8;
    wire [19:0] argmax_val_0_8;
    wire [3:0] argmax_idx_0_8;
    assign {cmp_0_8} = ( n_1_8 >= n_1_9 );
    assign {argmax_val_0_8} = ( cmp_0_8 ) ? n_1_8 : n_1_9;
    assign {argmax_idx_0_8} = ( cmp_0_8 ) ? 4'b1000 : 4'b1001;

    //comp level 1
    wire cmp_1_0;
    wire [19:0] argmax_val_1_0;
    wire [3:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [19:0] argmax_val_1_2;
    wire [3:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= argmax_val_0_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : argmax_val_0_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : argmax_idx_0_6;

    //comp level 2
    wire cmp_2_0;
    wire [19:0] argmax_val_2_0;
    wire [3:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    //comp level 3
    wire cmp_3_0;
    wire [19:0] argmax_val_3_0;
    wire [3:0] argmax_idx_3_0;
    assign {cmp_3_0} = ( argmax_val_2_0 >= argmax_val_0_8 );
    assign {argmax_val_3_0} = ( cmp_3_0 ) ? argmax_val_2_0 : argmax_val_0_8;
    assign {argmax_idx_3_0} = ( cmp_3_0 ) ? argmax_idx_2_0 : argmax_idx_0_8;

    assign out = argmax_idx_3_0;

endmodule
