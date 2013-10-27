//Subject:     CO project 2 - Sign extend
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:
//----------------------------------------------
//Date:
//----------------------------------------------
//Description:
//--------------------------------------------------------------------------------

module Sign_Extend(
    data_i,
    data_o
    );

//I/O ports
input   [16-1:0] data_i;
output  [32-1:0] data_o;

//Internal Signals
reg     [32-1:0] data_o;

//Sign extended


always@(*) begin
// Ref. http://excamera.com/sphinx/fpga-verilog-sign.html
    // XXX: from ALU control,
    // i need to have a wire (one bit) to determine if the operation is ori,
    // if so, just insert 16'b zeros into data_i

    data_o <= {16{data_i[15]}, data_i};
end

endmodule
