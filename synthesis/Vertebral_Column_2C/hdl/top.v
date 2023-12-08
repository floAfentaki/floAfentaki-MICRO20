//weights: [[[-10, -32, -5, 17, 28, -45], [-8, 9, 5, -11, -47, 92], [14, 17, 10, 10, -5, -25]], [[7, -72, 6]]]
//intercepts: [[113, 171, 26], [-1950]]
//act size: [4, 11, 18]
//pred num: 1
module top (inp, out);
input [23:0] inp;
output [18:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -10: 8'sb11110110
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110110;

    wire signed [11:0] n_0_0_po_1;
    //weight -32: 8'sb11100000
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_2;
    //weight -5: 8'sb11111011
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111011;

    wire signed [11:0] n_0_0_po_3;
    //weight 17: 8'sb00010001
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00010001;

    wire signed [11:0] n_0_0_po_4;
    //weight 28: 8'sb00011100
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00011100;

    wire signed [11:0] n_0_0_po_5;
    //weight -45: 8'sb11010011
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11010011;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = 113 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -8: 8'sb11111000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111000;

    wire signed [11:0] n_0_1_po_1;
    //weight 9: 8'sb00001001
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001001;

    wire signed [11:0] n_0_1_po_2;
    //weight 5: 8'sb00000101
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000101;

    wire signed [11:0] n_0_1_po_3;
    //weight -11: 8'sb11110101
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110101;

    wire signed [11:0] n_0_1_po_4;
    //weight -47: 8'sb11010001
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11010001;

    wire signed [11:0] n_0_1_po_5;
    //weight 92: 8'sb01011100
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb01011100;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = 171 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 14: 8'sb00001110
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001110;

    wire signed [11:0] n_0_2_po_1;
    //weight 17: 8'sb00010001
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00010001;

    wire signed [11:0] n_0_2_po_2;
    //weight 10: 8'sb00001010
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001010;

    wire signed [11:0] n_0_2_po_3;
    //weight 10: 8'sb00001010
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001010;

    wire signed [11:0] n_0_2_po_4;
    //weight -5: 8'sb11111011
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111011;

    wire signed [11:0] n_0_2_po_5;
    //weight -25: 8'sb11100111
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11100111;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = 26 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight 7: 8'sb00000111
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000111;

    wire signed [18:0] n_1_0_po_1;
    //weight -72: 8'sb10111000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb10111000;

    wire signed [18:0] n_1_0_po_2;
    //weight 6: 8'sb00000110
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000110;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = -1950 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);


endmodule
