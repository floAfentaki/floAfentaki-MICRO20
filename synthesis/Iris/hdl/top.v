//weights: [[[-16, -3, 78, 56], [-3, -6, 0, 0], [1, -3, -3, -3]], [[-60, -5, 2], [24, 1, 1], [34, 1, 3]]]
//intercepts: [[-664, -115, 14], [3747, 1040, -4732]]
//act size: [4, 11, 18]
//pred num: 3
module top (inp, out);
input [15:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -16: 8'sb11110000
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110000;

    wire signed [11:0] n_0_0_po_1;
    //weight -3: 8'sb11111101
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111101;

    wire signed [11:0] n_0_0_po_2;
    //weight 78: 8'sb01001110
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb01001110;

    wire signed [11:0] n_0_0_po_3;
    //weight 56: 8'sb00111000
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00111000;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -664 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight -3: 8'sb11111101
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11111101;

    wire signed [11:0] n_0_1_po_1;
    //weight -6: 8'sb11111010
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111010;

    wire signed [11:0] n_0_1_po_2;
    //weight 0: 8'sb00000000
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_po_3;
    //weight 0: 8'sb00000000
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00000000;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = -115 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight 1: 8'sb00000001
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00000001;

    wire signed [11:0] n_0_2_po_1;
    //weight -3: 8'sb11111101
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11111101;

    wire signed [11:0] n_0_2_po_2;
    //weight -3: 8'sb11111101
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11111101;

    wire signed [11:0] n_0_2_po_3;
    //weight -3: 8'sb11111101
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111101;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = 14 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight -60: 8'sb11000100
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb11000100;

    wire signed [18:0] n_1_0_po_1;
    //weight -5: 8'sb11111011
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111011;

    wire signed [18:0] n_1_0_po_2;
    //weight 2: 8'sb00000010
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000010;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = 3747 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

// layer: 1 - neuron: 1
    wire signed [18:0] n_1_1_po_0;
    //weight 24: 8'sb00011000
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb00011000;

    wire signed [18:0] n_1_1_po_1;
    //weight 1: 8'sb00000001
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000001;

    wire signed [18:0] n_1_1_po_2;
    //weight 1: 8'sb00000001
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000001;

    wire signed [18:0] n_1_1_sum;
    assign n_1_1_sum = 1040 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [17:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_1_sum[17:0]);

// layer: 1 - neuron: 2
    wire signed [18:0] n_1_2_po_0;
    //weight 34: 8'sb00100010
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00100010;

    wire signed [18:0] n_1_2_po_1;
    //weight 1: 8'sb00000001
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000001;

    wire signed [18:0] n_1_2_po_2;
    //weight 3: 8'sb00000011
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000011;

    wire signed [18:0] n_1_2_sum;
    assign n_1_2_sum = -4732 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
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
