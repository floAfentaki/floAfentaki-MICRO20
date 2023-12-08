`timescale 1ns/1ps
`define EOF 32'hFFFF_FFFF
`define NULL 0

module top_tb();

    parameter OUTWIDTH=2;
    parameter NUM_A=21;
    parameter WIDTH_A=4;

    localparam period = 200000000.0;


reg  [WIDTH_A-1:0] at[NUM_A-1:0];
wire [NUM_A*WIDTH_A-1:0] inp;
wire [OUTWIDTH-1:0] out;

wire [WIDTH_A:0] r;

top DUT(.inp(inp),
        .out(out)
        );


integer inFile,outFile,i;
initial
begin
    $display($time, " << Starting the Simulation >>");
        inFile = $fopen("./sim/sim.Xtest","r");
    if (inFile == `NULL) begin
            $display($time, " file not found");
            $finish;
    end
    outFile = $fopen("./sim/output.txt");
    while (!$feof(inFile)) begin
        for (i=0;i<NUM_A;i=i+1) begin
            $fscanf(inFile,"%d ",at[i]);
        end
        $fscanf(inFile,"\n");
        #(period)
        $fwrite(outFile,"%d\n", out);
    end
    #(period)
    $display($time, " << Finishing the Simulation >>");
    $fclose(outFile);
    $fclose(inFile);
    $finish;
end


genvar gi;
generate
for (gi=0;gi<NUM_A;gi=gi+1) begin : genbit
    assign inp[(gi+1)*WIDTH_A-1:gi*WIDTH_A] = at[gi];
end
endgenerate


endmodule
