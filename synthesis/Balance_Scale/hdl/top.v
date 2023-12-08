//weights: [[[-63, 101, -29, -7], [9, -16, 95, -85], [-11, -27, 27, 11]], [[1, 0, 3], [-8, 7, -44], [8, -6, 42]]]
//intercepts: [[-34, -30, 308], [-666, 13813, -13103]]
//act size: [4, 11, 18]
//pred num: 3
module top (inp, out);
input [15:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire signed [11:0] n_0_0_po_0;
    //weight -63: 8'sb11000001
    assign n_0_0_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11000001;

    wire signed [11:0] n_0_0_po_1;
    //weight 101: 8'sb01100101
    assign n_0_0_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb01100101;

    wire signed [11:0] n_0_0_po_2;
    //weight -29: 8'sb11100011
    assign n_0_0_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb11100011;

    wire signed [11:0] n_0_0_po_3;
    //weight -7: 8'sb11111001
    assign n_0_0_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb11111001;

    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = -34 + n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3;
    //relu
    wire [10:0] n_0_0;
    assign n_0_0 = (n_0_0_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_0_sum[10:0]);

// layer: 0 - neuron: 1
    wire signed [11:0] n_0_1_po_0;
    //weight 9: 8'sb00001001
    assign n_0_1_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb00001001;

    wire signed [11:0] n_0_1_po_1;
    //weight -16: 8'sb11110000
    assign n_0_1_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11110000;

    wire signed [11:0] n_0_1_po_2;
    //weight 95: 8'sb01011111
    assign n_0_1_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb01011111;

    wire signed [11:0] n_0_1_po_3;
    //weight -85: 8'sb10101011
    assign n_0_1_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb10101011;

    wire signed [11:0] n_0_1_sum;
    assign n_0_1_sum = -30 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3;
    //relu
    wire [10:0] n_0_1;
    assign n_0_1 = (n_0_1_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_1_sum[10:0]);

// layer: 0 - neuron: 2
    wire signed [11:0] n_0_2_po_0;
    //weight -11: 8'sb11110101
    assign n_0_2_po_0 = $signed({1'b0, inp[3:0]}) * 8'sb11110101;

    wire signed [11:0] n_0_2_po_1;
    //weight -27: 8'sb11100101
    assign n_0_2_po_1 = $signed({1'b0, inp[7:4]}) * 8'sb11100101;

    wire signed [11:0] n_0_2_po_2;
    //weight 27: 8'sb00011011
    assign n_0_2_po_2 = $signed({1'b0, inp[11:8]}) * 8'sb00011011;

    wire signed [11:0] n_0_2_po_3;
    //weight 11: 8'sb00001011
    assign n_0_2_po_3 = $signed({1'b0, inp[15:12]}) * 8'sb00001011;

    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = 308 + n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_2 + n_0_2_po_3;
    //relu
    wire [10:0] n_0_2;
    assign n_0_2 = (n_0_2_sum<0) ? $unsigned({11{1'b0}}) : $unsigned(n_0_2_sum[10:0]);

// layer: 1 - neuron: 0
    wire signed [18:0] n_1_0_po_0;
    //weight 1: 8'sb00000001
    assign n_1_0_po_0 = $signed({1'b0, n_0_0}) * 8'sb00000001;

    wire signed [18:0] n_1_0_po_1;
    //weight 0: 8'sb00000000
    assign n_1_0_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000000;

    wire signed [18:0] n_1_0_po_2;
    //weight 3: 8'sb00000011
    assign n_1_0_po_2 = $signed({1'b0, n_0_2}) * 8'sb00000011;

    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = -666 + n_1_0_po_0 + n_1_0_po_1 + n_1_0_po_2;
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum[17:0]);

// layer: 1 - neuron: 1
    wire signed [18:0] n_1_1_po_0;
    //weight -8: 8'sb11111000
    assign n_1_1_po_0 = $signed({1'b0, n_0_0}) * 8'sb11111000;

    wire signed [18:0] n_1_1_po_1;
    //weight 7: 8'sb00000111
    assign n_1_1_po_1 = $signed({1'b0, n_0_1}) * 8'sb00000111;

    wire signed [18:0] n_1_1_po_2;
    //weight -44: 8'sb11010100
    assign n_1_1_po_2 = $signed({1'b0, n_0_2}) * 8'sb11010100;

    wire signed [18:0] n_1_1_sum;
    assign n_1_1_sum = 13813 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_2;
    //relu
    wire [17:0] n_1_1;
    assign n_1_1 = (n_1_1_sum<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_1_sum[17:0]);

// layer: 1 - neuron: 2
    wire signed [18:0] n_1_2_po_0;
    //weight 8: 8'sb00001000
    assign n_1_2_po_0 = $signed({1'b0, n_0_0}) * 8'sb00001000;

    wire signed [18:0] n_1_2_po_1;
    //weight -6: 8'sb11111010
    assign n_1_2_po_1 = $signed({1'b0, n_0_1}) * 8'sb11111010;

    wire signed [18:0] n_1_2_po_2;
    //weight 42: 8'sb00101010
    assign n_1_2_po_2 = $signed({1'b0, n_0_2}) * 8'sb00101010;

    wire signed [18:0] n_1_2_sum;
    assign n_1_2_sum = -13103 + n_1_2_po_0 + n_1_2_po_1 + n_1_2_po_2;
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
