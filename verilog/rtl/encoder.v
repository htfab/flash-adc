`default_nettype none

`define majority_gate(x, a, b, c, name) sky130_fd_sc_hd__maj3_4 name(.A(a), .B(b), .C(c), .X(x))

module encoder (
    input wire [14:0] from_adc,
    input wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe
);

// when "encoder debug" bit is set, take input from digital pins instead of adc

wire debug_encoder = ui_in[0];

wire [14:0] unary_input = debug_encoder ? {uio_in, ui_in[7:1]} : from_adc;
assign uio_oe = debug_encoder ? 8'b00000000 : 8'b11111111;

// implement the encoder tree, see xschem/encoder_tree.sch for a visual representation

wire maj_level1 [6:0];
wire [1:0] enc_level1 [3:0];

`majority_gate(maj_level1[0], unary_input[0],  unary_input[1],  unary_input[2], mg10);
`majority_gate(maj_level1[1], unary_input[2],  unary_input[3],  unary_input[4], mg11);
`majority_gate(maj_level1[2], unary_input[4],  unary_input[5],  unary_input[6], mg12);
`majority_gate(maj_level1[3], unary_input[6],  unary_input[7],  unary_input[8], mg13);
`majority_gate(maj_level1[4], unary_input[8],  unary_input[9],  unary_input[10], mg14);
`majority_gate(maj_level1[5], unary_input[10], unary_input[11], unary_input[12], mg15);
`majority_gate(maj_level1[6], unary_input[12], unary_input[13], unary_input[14], mg16);

assign enc_level1[0] = {maj_level1[0], maj_level1[0] ? unary_input[2] : unary_input[0]};
assign enc_level1[1] = {maj_level1[2], maj_level1[2] ? unary_input[6] : unary_input[4]};
assign enc_level1[2] = {maj_level1[4], maj_level1[4] ? unary_input[10] : unary_input[8]};
assign enc_level1[3] = {maj_level1[6], maj_level1[6] ? unary_input[14] : unary_input[12]};

wire maj_level2 [2:0];
wire [2:0] enc_level2 [1:0];

`majority_gate(maj_level2[0], maj_level1[0], maj_level1[1], maj_level1[2], mg20);
`majority_gate(maj_level2[1], maj_level1[2], maj_level1[3], maj_level1[4], mg21);
`majority_gate(maj_level2[2], maj_level1[4], maj_level1[5], maj_level1[6], mg22);

assign enc_level2[0] = {maj_level2[0], maj_level2[0] ? enc_level1[1] : enc_level1[0]};
assign enc_level2[1] = {maj_level2[2], maj_level2[2] ? enc_level1[3] : enc_level1[2]};

wire maj_level3;
wire [3:0] enc_level3;

`majority_gate(maj_level3, maj_level2[0], maj_level2[1], maj_level2[2], mg30);

assign enc_level3 = {maj_level3, maj_level3 ? enc_level2[1] : enc_level2[0]};

wire [3:0] enc_output = enc_level3;

// when "adc debug" bit is set, output the raw data from the adc,
// otherwise return the value from the encoder on output pins [3:0]
// and some auxiliary data on the rest of the pins

wire debug_adc = ui_in[1] & ~debug_encoder;

wire [7:0] uo_out_nodebug;
wire [7:0] uio_out_nodebug;

assign uo_out_nodebug[3:0] = enc_output;
assign uo_out_nodebug[7:4] = {unary_input[13], unary_input[9], unary_input[5], unary_input[1]};
assign uio_out_nodebug[3:0] = unary_input[3:0] ^ unary_input[7:4] ^ unary_input[11:8] ^ {1'b0, unary_input[14:12]};
assign uio_out_nodebug[7:4] = ui_in[3] ? 
        (ui_in[2] ? {1'b0, unary_input[14:12]} : unary_input[11:8]) :
        (ui_in[2] ? unary_input[7:4] : unary_input[3:0]);

assign uo_out = debug_adc ? from_adc[7:0] : uo_out_nodebug;
assign uio_out = debug_adc ? {1'b0, from_adc[14:8]} : uio_out_nodebug;

endmodule
