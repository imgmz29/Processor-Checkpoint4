module sign_extend(data, extended);
	input wire[15:0] data;
	output wire[31:0] extended;
	
	assign extended = {{16{data[15]}}, data};

endmodule
