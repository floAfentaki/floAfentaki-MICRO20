//weights: [[[-7, 12, 3, -12, -15, 35], [0, 1, 3, 1, -1, -3], [5, 4, 13, 3, 2, 81]], [[36, 1, -63], [-30, 8, 19], [-6, 0, 47]]]
//intercepts: [[204, -127, -251], [-3568, 4334, -2100]]
//act size: [4, 11, 18]
//pred num: 3
module top (inp, out);
input [23:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -7: 8'sb11111001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_po_1;
    //weight 12: 8'sb00001100
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00001100;

    wire signed [11:0] n_0_0_po_2;
    //weight 3: 8'sb00000011
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000011;

    wire signed [11:0] n_0_0_po_3;
    //weight -12: 8'sb11110100
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11110100;

    wire signed [11:0] n_0_0_po_4;
    //weight -15: 8'sb11110001
    assign n_0_0_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11110001;

    wire signed [11:0] n_0_0_po_5;
    //weight 35: 8'sb00100011
    assign n_0_0_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb00100011;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = 204 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_5;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 0: 8'sb00000000
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_1;
    //weight 1: 8'sb00000001
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_2;
    //weight 3: 8'sb00000011
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000011;

    wire signed [11:0] n_0_1_po_3;
    //weight 1: 8'sb00000001
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000001;

    wire signed [11:0] n_0_1_po_4;
    //weight -1: 8'sb11111111
    assign n_0_1_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb11111111;

    wire signed [11:0] n_0_1_po_5;
    //weight -3: 8'sb11111101
    assign n_0_1_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = -127 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 5: 8'sb00000101
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000101;

    wire signed [11:0] n_0_2_po_1;
    //weight 4: 8'sb00000100
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb00000100;

    wire signed [11:0] n_0_2_po_2;
    //weight 13: 8'sb00001101
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00001101;

    wire signed [11:0] n_0_2_po_3;
    //weight 3: 8'sb00000011
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000011;

    wire signed [11:0] n_0_2_po_4;
    //weight 2: 8'sb00000010
    assign n_0_2_po_4 = $signed({1'b0, inp[19:16]}) * 8'sb00000010;

    wire signed [11:0] n_0_2_po_5;
    //weight 81: 8'sb01010001
    assign n_0_2_po_5 = $signed({1'b0, inp[23:20]}) * 8'sb01010001;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = -251 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight 36: 8'sb00100100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00100100;

    wire signed [18:0] n_1_0_po_1;
    //weight 1: 8'sb00000001
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000001;

    wire signed [18:0] n_1_0_po_2;
    //weight -63: 8'sb11000001
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb11000001;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = -3568 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

// layer: 1 - neuron: 1
    wire signed [18:0] n_1_1_po_0;
    //weight -30: 8'sb11100010
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11100010;

    wire signed [18:0] n_1_1_po_1;
    //weight 8: 8'sb00001000
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00001000;

    wire signed [18:0] n_1_1_po_2;
    //weight 19: 8'sb00010011
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00010011;

    wire signed [18:0] n_1_1_sum;
    assign n_1_1_sum = 4334 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [17:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_1_sum[17:0]);

// layer: 1 - neuron: 2
    wire signed [18:0] n_1_2_po_0;
    //weight -6: 8'sb11111010
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111010;

    wire signed [18:0] n_1_2_po_1;
    //weight 0: 8'sb00000000
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000000;

    wire signed [18:0] n_1_2_po_2;
    //weight 47: 8'sb00101111
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00101111;

    wire signed [18:0] n_1_2_sum;
    assign n_1_2_sum = -2100 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
    //relu
    wire [17:0] n_1_2;
    assign n_1_2 = (n_1_2_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_2_sum[17:0]);

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [18:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [18:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
