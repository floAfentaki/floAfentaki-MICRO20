//weights: [[[-7, -23, -32, 7, 43, -2, -20, -1], [-13, 70, -12, 108, -90, -3, -94, 5], [-4, -12, -4, -18, -1, -8, -7, -10]], [[12, 35, 11], [-5, 22, -5], [-8, -54, -6]]]
//intercepts: [[888, 607, -235], [-15686, 6334, 9301]]
//act size: [4, 12, 19]
//pred num: 3
module top (inp, out);
input [31:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -7: 8'sb11111001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_1;
    //weight -23: 8'sb11101001
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11101001;

    wire signed [11:0] n_0_0_po_2;
    //weight -32: 8'sb11100000
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11100000;

    wire signed [11:0] n_0_0_po_3;
    //weight 7: 8'sb00000111
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_4;
    //weight 43: 8'sb00101011
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00101011;

    wire signed [11:0] n_0_0_po_5;
    //weight -2: 8'sb11111110
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111110;

    wire signed [11:0] n_0_0_po_6;
    //weight -20: 8'sb11101100
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11101100;

    wire signed [11:0] n_0_0_po_7;
    //weight -1: 8'sb11111111
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111111;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = 888 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -13: 8'sb11110011
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110011;

    wire signed [11:0] n_0_1_po_1;
    //weight 70: 8'sb01000110
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01000110;

    wire signed [11:0] n_0_1_po_2;
    //weight -12: 8'sb11110100
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11110100;

    wire signed [11:0] n_0_1_po_3;
    //weight 108: 8'sb01101100
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01101100;

    wire signed [11:0] n_0_1_po_4;
    //weight -90: 8'sb10100110
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb10100110;

    wire signed [11:0] n_0_1_po_5;
    //weight -3: 8'sb11111101
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_po_6;
    //weight -94: 8'sb10100010
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb10100010;

    wire signed [11:0] n_0_1_po_7;
    //weight 5: 8'sb00000101
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000101;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = 607 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -4: 8'sb11111100
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111100;

    wire signed [11:0] n_0_2_po_1;
    //weight -12: 8'sb11110100
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110100;

    wire signed [11:0] n_0_2_po_2;
    //weight -4: 8'sb11111100
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111100;

    wire signed [11:0] n_0_2_po_3;
    //weight -18: 8'sb11101110
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11101110;

    wire signed [11:0] n_0_2_po_4;
    //weight -1: 8'sb11111111
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111111;

    wire signed [11:0] n_0_2_po_5;
    //weight -8: 8'sb11111000
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111000;

    wire signed [11:0] n_0_2_po_6;
    //weight -7: 8'sb11111001
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11111001;

    wire signed [11:0] n_0_2_po_7;
    //weight -10: 8'sb11110110
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11110110;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = -235 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight 12: 8'sb00001100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00001100;

    wire signed [19:0] n_1_0_po_1;
    //weight 35: 8'sb00100011
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00100011;

    wire signed [19:0] n_1_0_po_2;
    //weight 11: 8'sb00001011
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00001011;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = -15686 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight -5: 8'sb11111011
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111011;

    wire signed [19:0] n_1_1_po_1;
    //weight 22: 8'sb00010110
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00010110;

    wire signed [19:0] n_1_1_po_2;
    //weight -5: 8'sb11111011
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111011;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = 6334 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight -8: 8'sb11111000
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111000;

    wire signed [19:0] n_1_2_po_1;
    //weight -54: 8'sb11001010
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11001010;

    wire signed [19:0] n_1_2_po_2;
    //weight -6: 8'sb11111010
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb11111010;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = 9301 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [18:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_2_sum[18:0]);

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [19:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [19:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
