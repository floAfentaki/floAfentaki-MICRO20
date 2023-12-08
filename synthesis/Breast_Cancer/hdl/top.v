//weights: [[[-30, -13, 3, -8, 7, 7, 40, 10, 38], [33, 68, 79, 58, -17, 40, 42, 6, -20], [50, 27, -7, -13, 30, 74, 1, -20, 12]], [[-18, 86, 61]]]
//intercepts: [[662, -362, -441], [-110178]]
//act size: [4, 13, 21]
//pred num: 1
module top (inp, out);
input [35:0] inp;
output [21:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -30: 8'sb11100010
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11100010;

    wire signed [11:0] n_0_0_po_1;
    //weight -13: 8'sb11110011
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110011;

    wire signed [11:0] n_0_0_po_2;
    //weight 3: 8'sb00000011
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000011;

    wire signed [11:0] n_0_0_po_3;
    //weight -8: 8'sb11111000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_4;
    //weight 7: 8'sb00000111
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_5;
    //weight 7: 8'sb00000111
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_6;
    //weight 40: 8'sb00101000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00101000;

    wire signed [11:0] n_0_0_po_7;
    //weight 10: 8'sb00001010
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00001010;

    wire signed [11:0] n_0_0_po_8;
    //weight 38: 8'sb00100110
    assign n_0_0_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00100110;

    wire signed [13:0] n_0_0_sum;
    assign n_0_0_sum = 662 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_8;
    //relu
    wire [12:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_0_sum[12:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 33: 8'sb00100001
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00100001;

    wire signed [11:0] n_0_1_po_1;
    //weight 68: 8'sb01000100
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000100;

    wire signed [11:0] n_0_1_po_2;
    //weight 79: 8'sb01001111
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb01001111;

    wire signed [11:0] n_0_1_po_3;
    //weight 58: 8'sb00111010
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00111010;

    wire signed [11:0] n_0_1_po_4;
    //weight -17: 8'sb11101111
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11101111;

    wire signed [11:0] n_0_1_po_5;
    //weight 40: 8'sb00101000
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00101000;

    wire signed [11:0] n_0_1_po_6;
    //weight 42: 8'sb00101010
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00101010;

    wire signed [11:0] n_0_1_po_7;
    //weight 6: 8'sb00000110
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000110;

    wire signed [11:0] n_0_1_po_8;
    //weight -20: 8'sb11101100
    assign n_0_1_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb11101100;

    wire signed [13:0] n_0_1_sum;
    assign n_0_1_sum = -362 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8;
    //relu
    wire [12:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_1_sum[12:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 50: 8'sb00110010
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00110010;

    wire signed [11:0] n_0_2_po_1;
    //weight 27: 8'sb00011011
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00011011;

    wire signed [11:0] n_0_2_po_2;
    //weight -7: 8'sb11111001
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111001;

    wire signed [11:0] n_0_2_po_3;
    //weight -13: 8'sb11110011
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110011;

    wire signed [11:0] n_0_2_po_4;
    //weight 30: 8'sb00011110
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011110;

    wire signed [11:0] n_0_2_po_5;
    //weight 74: 8'sb01001010
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb01001010;

    wire signed [11:0] n_0_2_po_6;
    //weight 1: 8'sb00000001
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00000001;

    wire signed [11:0] n_0_2_po_7;
    //weight -20: 8'sb11101100
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11101100;

    wire signed [11:0] n_0_2_po_8;
    //weight 12: 8'sb00001100
    assign n_0_2_po_8 = $signed({1'b0, inp[35:32]}) * 8'sb00001100;

    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = -441 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8;
    //relu
    wire [12:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({13{1'b0}}) : $unsigned(n_0_2_sum[12:0]);

// layer: 1 - neuron: 0
    wire signed [20:0] n_1_0_po_0;
    //weight -18: 8'sb11101110
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11101110;

    wire signed [20:0] n_1_0_po_1;
    //weight 86: 8'sb01010110
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb01010110;

    wire signed [20:0] n_1_0_po_2;
    //weight 61: 8'sb00111101
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00111101;

    wire signed [21:0] n_1_0_sum;
    assign n_1_0_sum = -110178 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [20:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({21{1'b0}}) : $unsigned(n_1_0_sum[20:0]);


endmodule
