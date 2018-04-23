// $Id: $
// File name:   controller.sv
// Created:     2/16/2018
// Author:      Qifan Chang
// Lab Section: 337-06
// Version:     1.0  Initial Design Entry
// Description: Controller unit
module controller
(
	input wire clk,
	input wire n_reset,
	input wire dr,
	input wire lc,
	input wire overflow,
	
	output reg cnt_up,
	output reg clear,
	output wire modwait,
	output reg [2:0] op,
	output reg [3:0] src1,
	output reg [3:0] src2,
	output reg [3:0] dest,
	output reg err
);

typedef enum bit [4:0] {IDLE,STORE,ZERO,SORT1,SORT2,SORT3,SORT4,MUL1,SUB1,MUL2,ADD1,MUL3,SUB2,MUL4,ADD2,LOAD1,LOAD2,LOAD3,LOAD4,MODWAIT1,MODWAIT2,MODWAIT3,IDLE2} stateType;
typedef enum bit [2:0] {NOP, COPY, LOADONE, LOADTWO, ADD, SUB, MUL} opType;

stateType state;
stateType n_state;
reg n_modwait;
reg temp;

always_ff@(negedge n_reset, posedge clk)
begin : REG_LOGIC
	if(n_reset == 1'b0)
	begin
		state <= IDLE;
		temp <= 0;
	end
	else
	begin
		state <= n_state;
		temp <= n_modwait;
	end
end

assign modwait = temp;

always_comb
begin : NXT_LOGIC
	n_state = state;
	
	case(state)
		IDLE: 
		begin
			if(lc)
				n_state = LOAD1;
			else if(dr)
				n_state = STORE;
			else
				n_state = IDLE;
		end
		STORE: n_state = dr ? ZERO : IDLE2;
		ZERO: n_state = SORT1;
		SORT1: n_state = SORT2;
		SORT2: n_state = SORT3;
		SORT3: n_state = SORT4;
		SORT4: n_state = MUL4;
		MUL1: n_state = SUB1;
		SUB1: n_state = overflow ? IDLE2 : IDLE;
		MUL2: n_state = ADD1;
		ADD1: n_state = overflow ? IDLE2: MUL1;
		MUL3: n_state = SUB2;
		SUB2: n_state = overflow ? IDLE2 : MUL2;
		MUL4: n_state = ADD2;
		ADD2: n_state = overflow ? IDLE2 : MUL3;
		LOAD1: n_state = MODWAIT1;
		MODWAIT1: n_state = lc ? LOAD2 : MODWAIT1;
		LOAD2: n_state = MODWAIT2;
		MODWAIT2: n_state = lc ? LOAD3 : MODWAIT2;
		LOAD3: n_state = MODWAIT3;
		MODWAIT3: n_state = lc ? LOAD4 : MODWAIT3;
		LOAD4: n_state = IDLE;
		IDLE2: n_state = lc ? LOAD1 : (dr ? STORE : IDLE2);
	endcase
end

always_comb begin	
	cnt_up = 0;
	clear = 0;
	op = NOP;
	n_modwait = 1;
	src1 = 0;
	src2 = 0;
	dest = 0;
	err = 0;
	
	if(state == IDLE) begin
		n_modwait = 0;
	end

	else if(state == STORE) begin
		op = LOADONE;
		dest = 5;
	end
	else if(state == ZERO) begin 
		cnt_up = 1;
		op = SUB;
	end
	else if(state == SORT1) begin
		op = COPY;
		src1 = 2;
		dest = 1;
	end
	else if(state == SORT2) begin
		op = COPY;
		src1 = 3;
		dest = 2;
	end
	else if(state == SORT3) begin
		op = COPY;
		src1 = 4;
		dest = 3;
	end
	else if(state == SORT4) begin
		op = COPY;
		src1 = 5;
		dest = 4;
	end
	else if(state == MUL1) begin
		op = MUL;
		src1 = 1;
		src2 = 6;
		dest = 10;
	end
	else if(state == SUB1) begin
		op = SUB;
		src1 = 0;
		src2 = 10;
		dest = 0;
	end
	else if(state == MUL2) begin
		op = MUL;
		src1 = 2;
		src2 = 7;
		dest = 10;
	end
	else if(state == ADD1) begin
		op = ADD;
		src1 = 0;
		src2 = 10;
		dest = 0;
	end
	else if(state == MUL3) begin
		op = MUL;
		src1 = 3;
		src2 = 8;
		dest = 10;
	end
	else if(state == SUB2) begin
		op = SUB;
		src1 = 0;
		src2 = 10;
		dest = 0;
	end
	else if(state == MUL4) begin
		op = MUL;
		src1 = 4;
		src2 = 9;
		dest = 10;
	end
	else if(state == ADD2) begin
		op = ADD;
		src2 = 10;
	end
	else if(state == LOAD1) begin
		op = LOADTWO;
		dest = 6;
		clear = 1;
	end
	else if(state == LOAD2) begin
		op = LOADTWO;
		dest = 7;
		clear = 1;
	end
	else if(state == LOAD3) begin
		op = LOADTWO;
		dest = 8;
		clear = 1;
	end
	else if(state == LOAD4) begin
		op = LOADTWO;
		dest = 9;
		clear = 1;
	end
	else if(state == MODWAIT1) begin
		n_modwait = 0;
	end
	else if(state == MODWAIT2) begin
		n_modwait = 0;
	end
	else if(state == MODWAIT3) begin
		n_modwait = 0;
	end
	else if(state == IDLE2) begin
		err = 1;
		n_modwait = 0;
	end
end

endmodule