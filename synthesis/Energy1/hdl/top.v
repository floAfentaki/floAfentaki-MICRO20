//weights: [[[-5, -12, 7, -10, -8, -4, 8, -6], [-6, 13, 58, -37, 5, -5, 65, 4], [-18, 35, -42, 86, -81, 2, -14, 59]], [[-11, -21, 47], [14, 10, 32], [4, 31, -70]]]
//intercepts: [[-169, -219, 245], [1356, 3478, -5736]]
//act size: [4, 12, 19]
//pred num: 3
module top (inp, out);
input [31:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -5: 8'sb11111011
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111011;

    wire signed [11:0] n_0_0_po_1;
    //weight -12: 8'sb11110100
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_2;
    //weight 7: 8'sb00000111
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000111;

    wire signed [11:0] n_0_0_po_3;
    //weight -10: 8'sb11110110
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110110;

    wire signed [11:0] n_0_0_po_4;
    //weight -8: 8'sb11111000
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111000;

    wire signed [11:0] n_0_0_po_5;
    //weight -4: 8'sb11111100
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111100;

    wire signed [11:0] n_0_0_po_6;
    //weight 8: 8'sb00001000
    assign n_0_0_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb00001000;

    wire signed [11:0] n_0_0_po_7;
    //weight -6: 8'sb11111010
    assign n_0_0_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb11111010;

    wire signed [12:0] n_0_0_sum;
    assign n_0_0_sum = -169 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7;
    //relu
    wire [11:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_0_sum[11:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -6: 8'sb11111010
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_1;
    //weight 13: 8'sb00001101
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001101;

    wire signed [11:0] n_0_1_po_2;
    //weight 58: 8'sb00111010
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00111010;

    wire signed [11:0] n_0_1_po_3;
    //weight -37: 8'sb11011011
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11011011;

    wire signed [11:0] n_0_1_po_4;
    //weight 5: 8'sb00000101
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000101;

    wire signed [11:0] n_0_1_po_5;
    //weight -5: 8'sb11111011
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111011;

    wire signed [11:0] n_0_1_po_6;
    //weight 65: 8'sb01000001
    assign n_0_1_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb01000001;

    wire signed [11:0] n_0_1_po_7;
    //weight 4: 8'sb00000100
    assign n_0_1_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00000100;

    wire signed [12:0] n_0_1_sum;
    assign n_0_1_sum = -219 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7;
    //relu
    wire [11:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_1_sum[11:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -18: 8'sb11101110
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11101110;

    wire signed [11:0] n_0_2_po_1;
    //weight 35: 8'sb00100011
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00100011;

    wire signed [11:0] n_0_2_po_2;
    //weight -42: 8'sb11010110
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11010110;

    wire signed [11:0] n_0_2_po_3;
    //weight 86: 8'sb01010110
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb01010110;

    wire signed [11:0] n_0_2_po_4;
    //weight -81: 8'sb10101111
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb10101111;

    wire signed [11:0] n_0_2_po_5;
    //weight 2: 8'sb00000010
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00000010;

    wire signed [11:0] n_0_2_po_6;
    //weight -14: 8'sb11110010
    assign n_0_2_po_6 = $signed({1'b0, inp[27:24]}) * 8'sb11110010;

    wire signed [11:0] n_0_2_po_7;
    //weight 59: 8'sb00111011
    assign n_0_2_po_7 = $signed({1'b0, inp[31:28]}) * 8'sb00111011;

    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = 245 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7;
    //relu
    wire [11:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({12{1'b0}}) : $unsigned(n_0_2_sum[11:0]);

// layer: 1 - neuron: 0
    wire signed [19:0] n_1_0_po_0;
    //weight -11: 8'sb11110101
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11110101;

    wire signed [19:0] n_1_0_po_1;
    //weight -21: 8'sb11101011
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11101011;

    wire signed [19:0] n_1_0_po_2;
    //weight 47: 8'sb00101111
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00101111;

    wire signed [19:0] n_1_0_sum;
    assign n_1_0_sum = 1356 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [18:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_0_sum[18:0]);

// layer: 1 - neuron: 1
    wire signed [19:0] n_1_1_po_0;
    //weight 14: 8'sb00001110
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00001110;

    wire signed [19:0] n_1_1_po_1;
    //weight 10: 8'sb00001010
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001010;

    wire signed [19:0] n_1_1_po_2;
    //weight 32: 8'sb00100000
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00100000;

    wire signed [19:0] n_1_1_sum;
    assign n_1_1_sum = 3478 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [18:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({19{1'b0}}) : $unsigned(n_1_1_sum[18:0]);

// layer: 1 - neuron: 2
    wire signed [19:0] n_1_2_po_0;
    //weight 4: 8'sb00000100
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000100;

    wire signed [19:0] n_1_2_po_1;
    //weight 31: 8'sb00011111
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00011111;

    wire signed [19:0] n_1_2_po_2;
    //weight -70: 8'sb10111010
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb10111010;

    wire signed [19:0] n_1_2_sum;
    assign n_1_2_sum = -5736 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
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
