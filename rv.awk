BEGIN {

	bits["0"] = "0000"
	bits["1"] = "0001"
	bits["2"] = "0010"
	bits["3"] = "0011"
	bits["4"] = "0100"
	bits["5"] = "0101"
	bits["6"] = "0110"
	bits["7"] = "0111"
	bits["8"] = "1000"
	bits["9"] = "1001"
	bits["a"] = "1010"
	bits["b"] = "1011"
	bits["c"] = "1100"
	bits["d"] = "1101"
	bits["e"] = "1110"
	bits["f"] = "1111"
	
	FRAG["UNSD"] = 1
	FRAG["CSR"] = 2
	FRAG["IMM"] = 3
	FRAG["OPC"] = 4
	FRAG["PRED"] = 5
	FRAG["RD"] = 6
	FRAG["RS1"] = 7
	FRAG["RS2"] = 8
	FRAG["RS3"] = 9
	FRAG["SUCC"] = 10

	valid_hex_len[4]=1
	valid_hex_len[6]=1
	valid_hex_len[8]=1
	valid_hex_len[10]=1
	valid_hex_len[16]=1
	valid_hex_len[18]=1
	valid_hex_len[32]=1
	valid_hex_len[34]=1

	for(x = 0; x < 32; x++) X_REGISTER["x"x]="x"x
	REGISTER["zero"]="x0"
	REGISTER["ra"]="x1"
	REGISTER["sp"]="x2"
	REGISTER["gp"]="x3"
	REGISTER["tp"]="x4"
	REGISTER["t0"]="x5"
	REGISTER["t1"]="x6"
	REGISTER["t2"]="x7"
	REGISTER["s0"]="x8"
	REGISTER["s1"]="x9"
	REGISTER["a0"]="x10"
	REGISTER["a1"]="x11"
	REGISTER["a2"]="x12"
	REGISTER["a3"]="x13"
	REGISTER["a4"]="x14"
	REGISTER["a5"]="x15"
	REGISTER["a6"]="x16"
	REGISTER["a7"]="x17"
	REGISTER["s2"]="x18"
	REGISTER["s3"]="x19"
	REGISTER["s4"]="x20"
	REGISTER["s5"]="x21"
	REGISTER["s6"]="x22"
	REGISTER["s7"]="x23"
	REGISTER["s8"]="x24"
	REGISTER["s9"]="x25"
	REGISTER["s10"]="x26"
	REGISTER["s11"]="x27"
	REGISTER["t3"]="x28"
	REGISTER["t4"]="x29"
	REGISTER["t5"]="x30"
	REGISTER["t6"]="x31"
	REGISTER["fp"]="x8"

	F_REGISTER["ft0"] = "f0"
	F_REGISTER["ft1"] = "f1"
	F_REGISTER["ft2"] = "f2"
	F_REGISTER["ft3"] = "f3"
	F_REGISTER["ft4"] = "f4"
	F_REGISTER["ft5"] = "f5"
	F_REGISTER["ft6"] = "f6"
	F_REGISTER["ft7"] = "f7"
	F_REGISTER["fs0"] = "f8"
	F_REGISTER["fs1"] = "f9"
	F_REGISTER["fa0"] = "f10"
	F_REGISTER["fa1"] = "f11"
	F_REGISTER["fa2"] = "f12"
	F_REGISTER["fa3"] = "f13"
	F_REGISTER["fa4"] = "f14"
	F_REGISTER["fa5"] = "f15"
	F_REGISTER["fa6"] = "f16"
	F_REGISTER["fa7"] = "f17"
	F_REGISTER["fs2"] = "f18"
	F_REGISTER["fs3"] = "f19"
	F_REGISTER["fs4"] = "f20"
	F_REGISTER["fs5"] = "f21"
	F_REGISTER["fs6"] = "f22"
	F_REGISTER["fs7"] = "f23"
	F_REGISTER["fs8"] = "f24"
	F_REGISTER["fs9"] = "f25"
	F_REGISTER["fs10"] = "f26"
	F_REGISTER["fs11"] = "f27"
	F_REGISTER["ft8"] = "f28"
	F_REGISTER["ft9"] = "f29"
	F_REGISTER["ft10"] = "f30"
	F_REGISTER["ft11"] = "f31"

	LOAD="0000011"
	LOAD_FP="0000111"
	MISC_MEM="0001111"
	OP_IMM="0010011"
	AUIPC="0010111"
	OP_IMM_32="0011011"
	STORE="0100011"
	STORE_FP="0100111"
	AMO="0101111"
	OP="0110011"
	OP_32="0111011"
	LUI="0110111"
	MADD="1000011"
	MSUB="1000111"
	NMSUB="1001011"
	NMADD="1001111"
	OP_FP="1010011"
	OP_IMM_64="1011011"
	BRANCH="1100011"
	JALR="1100111"
	JAL="1101111"
	SYSTEM="1110011"
	OP_64="1111011"
	
	C0="00"
	C1="01"
	C2="10"
	
	OPCODE["LOAD"]="0000011"
	OPCODE["LOAD_FP"]="0000111"
	OPCODE["MISC_MEM"]="0001111"
	OPCODE["OP_IMM"]="0010011"
	OPCODE["AUIPC"]="0010111"
	OPCODE["OP_IMM_32"]="0011011"
	OPCODE["STORE"]="0100011"
	OPCODE["STORE_FP"]="0100111"
	OPCODE["AMO"]="0101111"
	OPCODE["OP"]="0110011"
	OPCODE["OP_32"]="0111011"
	OPCODE["LUI"]="0110111"
	OPCODE["MADD"]="1000011"
	OPCODE["MSUB"]="1000111"
	OPCODE["NMSUB"]="1001011"
	OPCODE["NMADD"]="1001111"
	OPCODE["OP_FP"]="1010011"
	OPCODE["OP_IMM_64"]="1011011"
	OPCODE["BRANCH"]="1100011"
	OPCODE["JALR"]="1100111"
	OPCODE["JAL"]="1101111"
	OPCODE["SYSTEM"]="1110011"
	OPCODE["OP_64"]="1111011"

	OPCODE["C0"]="00"
	OPCODE["C1"]="01"
	OPCODE["C2"]="10"

	# RV32I instruction set
	isa["isa"]["lui"] = 	"RV32I"
	isa["isa"]["auipc"] = 	"RV32I"
	isa["isa"]["jal"] = 	"RV32I"
	isa["isa"]["jalr"] =	"RV32I"
	isa["isa"]["beq"] = 	"RV32I"
	isa["isa"]["bne"] = 	"RV32I"
	isa["isa"]["blt"] = 	"RV32I"
	isa["isa"]["bge"] = 	"RV32I"
	isa["isa"]["bltu"] = 	"RV32I"
	isa["isa"]["bgeu"] = 	"RV32I"
	isa["isa"]["lb"] = 	"RV32I"
	isa["isa"]["lh"] = 	"RV32I"
	isa["isa"]["lw"] = 	"RV32I"
	isa["isa"]["lbu"] = 	"RV32I"
	isa["isa"]["lhu"] = 	"RV32I"
	isa["isa"]["sb"] = 	"RV32I"
	isa["isa"]["sh"] = 	"RV32I"
	isa["isa"]["sw"] = 	"RV32I"
	isa["isa"]["addi"] = 	"RV32I"
	isa["isa"]["slti"] = 	"RV32I"
	isa["isa"]["sltiu"] = 	"RV32I"
	isa["isa"]["xori"] = 	"RV32I"
	isa["isa"]["ori"] = 	"RV32I"
	isa["isa"]["andi"] = 	"RV32I"
	isa["isa"]["slli"] = 	"RV32I"
	isa["isa"]["srli"] = 	"RV32I"
	isa["isa"]["srai"] = 	"RV32I"
	isa["isa"]["add"] = 	"RV32I"
	isa["isa"]["sub"] = 	"RV32I"
	isa["isa"]["sll"] = 	"RV32I"
	isa["isa"]["slt"] = 	"RV32I"
	isa["isa"]["sltu"] = 	"RV32I"
	isa["isa"]["xor"] = 	"RV32I"
	isa["isa"]["srl"] = 	"RV32I"
	isa["isa"]["sra"] = 	"RV32I"
	isa["isa"]["or"] = 	"RV32I"
	isa["isa"]["and"] = 	"RV32I"
	isa["isa"]["fence"] = 	"RV32I"
	isa["isa"]["ecall"] = 	"RV32I"
	isa["isa"]["ebreak"] =  "RV32I"

	isa["opcode"]["lui"] = 		OPCODE["LUI"]
	isa["opcode"]["auipc"] = 	OPCODE["AUIPC"]
	isa["opcode"]["jal"] =		OPCODE["JAL"]
	isa["opcode"]["jalr"] =		OPCODE["JALR"]
	isa["opcode"]["beq"] =		OPCODE["BRANCH"]
	isa["opcode"]["bne"] =		OPCODE["BRANCH"]
	isa["opcode"]["blt"] =		OPCODE["BRANCH"]
	isa["opcode"]["bge"] =		OPCODE["BRANCH"]
	isa["opcode"]["bltu"] = 	OPCODE["BRANCH"]
	isa["opcode"]["bgeu"] = 	OPCODE["BRANCH"]
	isa["opcode"]["lb"] =		OPCODE["LOAD"]
	isa["opcode"]["lh"] =		OPCODE["LOAD"]
	isa["opcode"]["lw"] =		OPCODE["LOAD"]
	isa["opcode"]["lbu"] =		OPCODE["LOAD"]
	isa["opcode"]["lhu"] =		OPCODE["LOAD"]
	isa["opcode"]["sb"] =		OPCODE["STORE"]
	isa["opcode"]["sh"] =		OPCODE["STORE"]
	isa["opcode"]["sw"] =		OPCODE["STORE"]
	isa["opcode"]["addi"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["slti"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["sltiu"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["xori"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["ori"] = 		OPCODE["OP_IMM"]
	isa["opcode"]["andi"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["slli"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["srli"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["srai"] = 	OPCODE["OP_IMM"]
	isa["opcode"]["add"] =		OPCODE["OP"]
	isa["opcode"]["sub"] =		OPCODE["OP"]
	isa["opcode"]["sll"] =		OPCODE["OP"]
	isa["opcode"]["slt"] =		OPCODE["OP"]
	isa["opcode"]["sltu"] = 	OPCODE["OP"]
	isa["opcode"]["xor"] =		OPCODE["OP"]
	isa["opcode"]["srl"] =		OPCODE["OP"]
	isa["opcode"]["sra"] =		OPCODE["OP"]
	isa["opcode"]["or"] =		OPCODE["OP"]
	isa["opcode"]["and"] =		OPCODE["OP"]
	isa["opcode"]["fence"] = 	OPCODE["MISC_MEM"]
	isa["opcode"]["ecall"] = 	OPCODE["SYSTEM"]
	isa["opcode"]["ebreak"] =	OPCODE["SYSTEM"]

	isa["fmt"]["lui"] = "U"
	isa["fmt"]["auipc"] = "U"
	isa["fmt"]["jal"] = "J"
	isa["fmt"]["jalr"] = "I"
	isa["fmt"]["beq"] = "B"
	isa["fmt"]["bne"] = "B"
	isa["fmt"]["blt"] = "B"
	isa["fmt"]["bge"] = "B"
	isa["fmt"]["bltu"] = "B"
	isa["fmt"]["bgeu"] = "B"
	isa["fmt"]["lb"] = "I"
	isa["fmt"]["lh"] = "I"
	isa["fmt"]["lw"] = "I"
	isa["fmt"]["lbu"] = "I"
	isa["fmt"]["lhu"] = "I"
	isa["fmt"]["sb"] = "S"
	isa["fmt"]["sh"] = "S"
	isa["fmt"]["sw"] = "S"
	isa["fmt"]["addi"] = "I"
	isa["fmt"]["slti"] = "I"
	isa["fmt"]["sltiu"] = "I"
	isa["fmt"]["xori"] = "I"
	isa["fmt"]["ori"] = "I"
	isa["fmt"]["andi"] = "I"
	isa["fmt"]["slli"] = "I"
	isa["fmt"]["srli"] = "I"
	isa["fmt"]["srai"] = "I"
	isa["fmt"]["add"] = "R"
	isa["fmt"]["sub"] = "R"
	isa["fmt"]["sll"] = "R"
	isa["fmt"]["slt"] = "R"
	isa["fmt"]["sltu"] = "R"
	isa["fmt"]["xor"] = "R"
	isa["fmt"]["srl"] = "R"
	isa["fmt"]["sra"] = "R"
	isa["fmt"]["or"] = "R"
	isa["fmt"]["and"] = "R"
	isa["fmt"]["fence"] = "I"
	isa["fmt"]["ecall"] = "I"
	isa["fmt"]["ebreak"] = "I"
	
	isa["funct3"]["jalr"] = "000"
	isa["funct3"]["beq"] = "000"
	isa["funct3"]["bne"] = "001"
	isa["funct3"]["blt"] = "100"
	isa["funct3"]["bge"] = "101"
	isa["funct3"]["bltu"] = "110"
	isa["funct3"]["bgeu"] = "111"

	isa["funct3"]["lb"] = "000"
	isa["funct3"]["lh"] = "001"
	isa["funct3"]["lw"] = "010"
	isa["funct3"]["lbu"] = "100"
	isa["funct3"]["lhu"] = "101"
	isa["funct3"]["lb"] = "000"

	isa["funct3"]["sb"] = "000"
	isa["funct3"]["sh"] = "001"
	isa["funct3"]["sw"] = "010"

	isa["funct3"]["addi"] = "000"
	isa["funct3"]["slti"] = "010"
	isa["funct3"]["sltiu"] = "011"
	isa["funct3"]["xori"] = "100"
	isa["funct3"]["ori"] = "110"
	isa["funct3"]["andi"] = "111"

	isa["funct3"]["slli"] = "001"
	isa["funct3"]["srli"] = "101"
	isa["funct3"]["srai"] = "101"

	isa["shtyp"]["slli"] = "0"
	isa["shtyp"]["srli"] = "0"
	isa["shtyp"]["srai"] = "1"

	isa["funct7"]["add"] = "0000000"
	isa["funct7"]["sub"] = "0100000"
	isa["funct7"]["sll"] = "0000000"
	isa["funct7"]["slt"] = "0000000"
	isa["funct7"]["sltu"] = "0000000"
	isa["funct7"]["xor"] = "0000000"
	isa["funct7"]["srl"] = "0000000"
	isa["funct7"]["sra"] = "0100000"
	isa["funct7"]["or"] = "0000000"
	isa["funct7"]["and"] = "0000000"

	isa["funct3"]["add"] = "000"
	isa["funct3"]["sub"] = "000"
	isa["funct3"]["sll"] = "001"
	isa["funct3"]["slt"] = "010"
	isa["funct3"]["sltu"] = "011"
	isa["funct3"]["xor"] = "100"
	isa["funct3"]["srl"] = "101"
	isa["funct3"]["sra"] = "101"
	isa["funct3"]["or"] = "110"
	isa["funct3"]["and"] = "111"

	isa["funct3"]["fence"] = "000"

	isa["funct3"]["ecall"] = "000"
	isa["funct3"]["ebreak"] = "000"
	isa["funct12"]["ecall"] = "000000000000"
	isa["funct12"]["ebreak"] = "000000000001"

	# C instruction set
	isa["fmt"]["c.add"] = "CR"
	isa["fmt"]["c.addi"] = "CI"
	isa["fmt"]["c.addi16sp"] = "CI"
	isa["fmt"]["c.addi4spn"] = "CIW"
	isa["fmt"]["c.addiw"] = "CI"
	isa["fmt"]["c.addw"] = "CA"
	isa["fmt"]["c.and"] = "CA"
	isa["fmt"]["c.andi"] = "CB"
	isa["fmt"]["c.beqz"] = "CB"
	isa["fmt"]["c.bnez"] = "CB"
	isa["fmt"]["c.ebreak"] = "CR"
	isa["fmt"]["c.fld"] = "CL"
	isa["fmt"]["c.fldsp"] = "CI"
	isa["fmt"]["c.flw"] = "CL"
	isa["fmt"]["c.flwsp"] = "CI"
	isa["fmt"]["c.fsd"] = "CS"
	isa["fmt"]["c.fsdsp"] = "CSS"
	isa["fmt"]["c.fsw"] = "CS"
	isa["fmt"]["c.fswsp"] = "CSS"
	isa["fmt"]["c.j"] = "CJ"
	isa["fmt"]["c.jal"] = "CJ"
	isa["fmt"]["c.jalr"] = "CR"
	isa["fmt"]["c.jr"] = "CR"
	isa["fmt"]["c.ld"] = "CL"
	isa["fmt"]["c.ldsp"] = "CI"
	isa["fmt"]["c.li"] = "CI"
	isa["fmt"]["c.lq"] = "CL"
	isa["fmt"]["c.lqsp"] = "CI"
	isa["fmt"]["c.lui"] = "CI"
	isa["fmt"]["c.lw"] = "CL"
	isa["fmt"]["c.lwsp"] = "CI"
	isa["fmt"]["c.mv"] = "CR"
	isa["fmt"]["c.nop"] = "CI"
	isa["fmt"]["c.or"] = "CA"
	isa["fmt"]["c.sd"] = "CS"
	isa["fmt"]["c.sdsp"] = "CSS"
	isa["fmt"]["c.slli"] = "CI"
	isa["fmt"]["c.slli64"] = "CI"
	isa["fmt"]["c.sq"] = "CS"
	isa["fmt"]["c.sqsp"] = "CSS"
	isa["fmt"]["c.srai"] = "CB"
	isa["fmt"]["c.srai64"] = "CB"
	isa["fmt"]["c.srli"] = "CB"
	isa["fmt"]["c.srli64"] = "CB"
	isa["fmt"]["c.sub"] = "CA"
	isa["fmt"]["c.subw"] = "CA"
	isa["fmt"]["c.sw"] = "CS"
	isa["fmt"]["c.swsp"] = "CSS"
	isa["fmt"]["c.xor"] = "CA"
	isa["funct2"]["c.addw"] = "01"
	isa["funct2"]["c.and"] = "11"
	isa["funct2"]["c.andi"] = "10"
	isa["funct2"]["c.or"] = "10"
	isa["funct2"]["c.srai"] = "01"
	isa["funct2"]["c.srai64"] = "01"
	isa["funct2"]["c.srli"] = "00"
	isa["funct2"]["c.srli64"] = "00"
	isa["funct2"]["c.sub"] = "00"
	isa["funct2"]["c.subw"] = "00"
	isa["funct2"]["c.xor"] = "01"
	isa["funct3"]["c.addi"] = "000"
	isa["funct3"]["c.addi16sp"] = "011"
	isa["funct3"]["c.addi4spn"] = "000"
	isa["funct3"]["c.addiw"] = "001"
	isa["funct3"]["c.andi"] = "100"
	isa["funct3"]["c.beqz"] = "110"
	isa["funct3"]["c.bnez"] = "111"
	isa["funct3"]["c.fld"] = "001"
	isa["funct3"]["c.fldsp"] = "001"
	isa["funct3"]["c.flw"] = "011"
	isa["funct3"]["c.flwsp"] = "011"
	isa["funct3"]["c.fsd"] = "101"
	isa["funct3"]["c.fsdsp"] = "101"
	isa["funct3"]["c.fsw"] = "111"
	isa["funct3"]["c.fswsp"] = "111"
	isa["funct3"]["c.j"] = "101"
	isa["funct3"]["c.jal"] = "001"
	isa["funct3"]["c.ld"] = "011"
	isa["funct3"]["c.ldsp"] = "011"
	isa["funct3"]["c.li"] = "010"
	isa["funct3"]["c.lq"] = "001"
	isa["funct3"]["c.lqsp"] = "001"
	isa["funct3"]["c.lui"] = "011"
	isa["funct3"]["c.lw"] = "010"
	isa["funct3"]["c.lwsp"] = "010"
	isa["funct3"]["c.nop"] = "000"
	isa["funct3"]["c.sd"] = "111"
	isa["funct3"]["c.sdsp"] = "111"
	isa["funct3"]["c.slli"] = "000"
	isa["funct3"]["c.slli64"] = "000"
	isa["funct3"]["c.sq"] = "101"
	isa["funct3"]["c.sqsp"] = "101"
	isa["funct3"]["c.srai"] = "100"
	isa["funct3"]["c.srai64"] = "100"
	isa["funct3"]["c.srli"] = "100"
	isa["funct3"]["c.srli64"] = "100"
	isa["funct3"]["c.sw"] = "110"
	isa["funct3"]["c.swsp"] = "110"
	isa["funct4"]["c.add"] = "1001"
	isa["funct4"]["c.ebreak"] = "1001"
	isa["funct4"]["c.jalr"] = "1001"
	isa["funct4"]["c.jr"] = "1000"
	isa["funct4"]["c.mv"] = "1000"
	isa["funct6"]["c.addw"] = "100111"
	isa["funct6"]["c.and"] = "100011"
	isa["funct6"]["c.or"] = "100011"
	isa["funct6"]["c.sub"] = "100011"
	isa["funct6"]["c.subw"] = "100111"
	isa["funct6"]["c.xor"] = "100011"
	isa["immBits"]["c.addi"] = "5 4-0"
	isa["immBits"]["c.addi16sp"] = "9 4,6,8-7,5"
	isa["immBits"]["c.addi4spn"] = "5-4,9-6,2,3"
	isa["immBits"]["c.addiw"] = "5 4-0"
	isa["immBits"]["c.andi"] = "5 4-0"
	isa["immBits"]["c.beqz"] = "8,4-3 7-6,2-1,5"
	isa["immBits"]["c.bnez"] = "8,4-3 7-6,2-1,5"
	isa["immBits"]["c.fld"] = "5-3 7-6"
	isa["immBits"]["c.fldsp"] = "5 4-3,8-6"
	isa["immBits"]["c.flw"] = "5-3 2-6"
	isa["immBits"]["c.flwsp"] = "5 4-2,7-6"
	isa["immBits"]["c.fsd"] = "5-3 7-6"
	isa["immBits"]["c.fsdsp"] = "5-3 8-6"
	isa["immBits"]["c.fsw"] = "5-3 2-6"
	isa["immBits"]["c.fswsp"] = "5-2 7-6"
	isa["immBits"]["c.j"] = "11,4,9-8,10,6,7,3-1,5"
	isa["immBits"]["c.jal"] = "11,4,9-8,10,6,7,3-1,5"
	isa["immBits"]["c.ld"] = "5-3 7-6"
	isa["immBits"]["c.ldsp"] = "5 4-3,8-6"
	isa["immBits"]["c.li"] = "5 4-0"
	isa["immBits"]["c.lq"] = "5,4,8 7-6"
	isa["immBits"]["c.lqsp"] = "5 4,9-6"
	isa["immBits"]["c.lui"] = "5 4-0"
	isa["immBits"]["c.lw"] = "5-3 2-6"
	isa["immBits"]["c.lwsp"] = "5 4-2,7-6" 
	isa["immBits"]["c.nop"] = "5 4-0"
	isa["immBits"]["c.sd"] = "5-3 7-6"
	isa["immBits"]["c.sdsp"] = "5-3 8-6"
	isa["immBits"]["c.slli"] = "5 4-0"
	isa["immBits"]["c.slli64"] = "5 4-0"
	isa["immBits"]["c.sq"] = "5,4,8 7-6"
	isa["immBits"]["c.sqsp"] = "5-4 9-6"
	isa["immBits"]["c.srai"] = "5 4-0"
	isa["immBits"]["c.srai64"] = "5 4-0"
	isa["immBits"]["c.srli"] = "5 4-0"
	isa["immBits"]["c.srli64"] = "5 4-0"
	isa["immBits"]["c.sw"] = "5-3 2-6"
	isa["immBits"]["c.swsp"] = "5-2 7-6"
	isa["immBitsLabels"]["c.lui"] = "[[17][[16,12]]]"
	isa["immVal"]["c.nop"] = "0"
	isa["immVal"]["c.slli64"] = "0"
	isa["immVal"]["c.srai64"] = "0"
	isa["immVal"]["c.srli64"] = "0"
	isa["isa"]["c.add"] = "C"
	isa["isa"]["c.addi"] = "C"
	isa["isa"]["c.addi16sp"] = "C"
	isa["isa"]["c.addi4spn"] = "C"
	isa["isa"]["c.addiw"] = "C"
	isa["isa"]["c.addw"] = "C"
	isa["isa"]["c.and"] = "C"
	isa["isa"]["c.andi"] = "C"
	isa["isa"]["c.beqz"] = "C"
	isa["isa"]["c.bnez"] = "C"
	isa["isa"]["c.ebreak"] = "C"
	isa["isa"]["c.fld"] = "DC"
	isa["isa"]["c.fldsp"] = "DC"
	isa["isa"]["c.flw"] = "FC"
	isa["isa"]["c.flwsp"] = "FC"
	isa["isa"]["c.fsd"] = "DC"
	isa["isa"]["c.fsdsp"] = "DC"
	isa["isa"]["c.fsw"] = "FC"
	isa["isa"]["c.fswsp"] = "FC"
	isa["isa"]["c.j"] = "C"
	isa["isa"]["c.jal"] = "C"
	isa["isa"]["c.jalr"] = "C"
	isa["isa"]["c.jr"] = "C"
	isa["isa"]["c.ld"] = "C"
	isa["isa"]["c.ldsp"] = "C"
	isa["isa"]["c.li"] = "C"
	isa["isa"]["c.lq"] = "C"
	isa["isa"]["c.lqsp"] = "C"
	isa["isa"]["c.lui"] = "C"
	isa["isa"]["c.lw"] = "C"
	isa["isa"]["c.lwsp"] = "C"
	isa["isa"]["c.mv"] = "C"
	isa["isa"]["c.nop"] = "C"
	isa["isa"]["c.or"] = "C"
	isa["isa"]["c.sd"] = "C"
	isa["isa"]["c.sdsp"] = "C"
	isa["isa"]["c.slli"] = "C"
	isa["isa"]["c.slli64"] = "C"
	isa["isa"]["c.sq"] = "C"
	isa["isa"]["c.sqsp"] = "C"
	isa["isa"]["c.srai"] = "C"
	isa["isa"]["c.srai64"] = "C"
	isa["isa"]["c.srli"] = "C"
	isa["isa"]["c.srli64"] = "C"
	isa["isa"]["c.sub"] = "C"
	isa["isa"]["c.subw"] = "C"
	isa["isa"]["c.sw"] = "C"
	isa["isa"]["c.swsp"] = "C"
	isa["isa"]["c.xor"] = "C"
	isa["nzimm"]["c.addi"] = 1
	isa["nzimm"]["c.addi16sp"] = 1
	isa["nzimm"]["c.addi4spn"] = 1
	isa["nzimm"]["c.lui"] = 1
	isa["nzimm"]["c.slli"] = 1
	isa["nzimm"]["c.srai"] = 1
	isa["nzimm"]["c.srli"] = 1
	isa["opcode"]["c.add"] = C2
	isa["opcode"]["c.addi"] = C1
	isa["opcode"]["c.addi16sp"] = C1
	isa["opcode"]["c.addi4spn"] = C0
	isa["opcode"]["c.addiw"] = C1
	isa["opcode"]["c.addw"] = C1
	isa["opcode"]["c.and"] = C1
	isa["opcode"]["c.andi"] = C1
	isa["opcode"]["c.beqz"] = C1
	isa["opcode"]["c.bnez"] = C1
	isa["opcode"]["c.ebreak"] = C2
	isa["opcode"]["c.fld"] = C0
	isa["opcode"]["c.fldsp"] = C2
	isa["opcode"]["c.flw"] = C0
	isa["opcode"]["c.flwsp"] = C2
	isa["opcode"]["c.fsd"] = C0
	isa["opcode"]["c.fsdsp"] = C2
	isa["opcode"]["c.fsw"] = C0
	isa["opcode"]["c.fswsp"] = C2
	isa["opcode"]["c.j"] = C1
	isa["opcode"]["c.jal"] = C1
	isa["opcode"]["c.jalr"] = C2
	isa["opcode"]["c.jr"] = C2
	isa["opcode"]["c.ld"] = C0
	isa["opcode"]["c.ldsp"] = C2
	isa["opcode"]["c.li"] = C1
	isa["opcode"]["c.lq"] = C0
	isa["opcode"]["c.lqsp"] = C2
	isa["opcode"]["c.lui"] = C1
	isa["opcode"]["c.lw"] = C0
	isa["opcode"]["c.lwsp"] = C2
	isa["opcode"]["c.mv"] = C2
	isa["opcode"]["c.nop"] = C1
	isa["opcode"]["c.or"] = C1
	isa["opcode"]["c.sd"] = C0
	isa["opcode"]["c.sdsp"] = C2
	isa["opcode"]["c.slli"] = C2
	isa["opcode"]["c.slli64"] = C2
	isa["opcode"]["c.sq"] = C0
	isa["opcode"]["c.sqsp"] = C2
	isa["opcode"]["c.srai"] = C1
	isa["opcode"]["c.srai64"] = C1
	isa["opcode"]["c.srli"] = C1
	isa["opcode"]["c.srli64"] = C1
	isa["opcode"]["c.sub"] = C1
	isa["opcode"]["c.subw"] = C1
	isa["opcode"]["c.sw"] = C0
	isa["opcode"]["c.swsp"] = C2
	isa["opcode"]["c.xor"] = C1
	isa["rdRs1Excl"]["c.add"] = "[0]"
	isa["rdRs1Excl"]["c.addi"] = "[0]"
	isa["rdRs1Excl"]["c.addiw"] = "[0]"
	isa["rdRs1Excl"]["c.jalr"] = "[0]"
	isa["rdRs1Excl"]["c.jr"] = "[0]"
	isa["rdRs1Excl"]["c.ldsp"] = "[0]"
	isa["rdRs1Excl"]["c.li"] = "[0]"
	isa["rdRs1Excl"]["c.lqsp"] = "[0]"
	isa["rdRs1Excl"]["c.lui"] = "[0,2]"
	isa["rdRs1Excl"]["c.lwsp"] = "[0]"
	isa["rdRs1Excl"]["c.mv"] = "[0]"
	isa["rdRs1Excl"]["c.slli"] = "[0]"
	isa["rdRs1Excl"]["c.slli64"] = "[0]"
	isa["rdRs1Mask"]["c.add"] = "11"
	isa["rdRs1Mask"]["c.addi"] = "11"
	isa["rdRs1Mask"]["c.addi16sp"] = "00"
	isa["rdRs1Mask"]["c.addiw"] = "11"
	isa["rdRs1Mask"]["c.ebreak"] = "00"
	isa["rdRs1Mask"]["c.fldsp"] = "10"
	isa["rdRs1Mask"]["c.flwsp"] = "10"
	isa["rdRs1Mask"]["c.jalr"] = "01"
	isa["rdRs1Mask"]["c.jr"] = "01"
	isa["rdRs1Mask"]["c.ldsp"] = "10"
	isa["rdRs1Mask"]["c.li"] = "10"
	isa["rdRs1Mask"]["c.lqsp"] = "10"
	isa["rdRs1Mask"]["c.lui"] = "10"
	isa["rdRs1Mask"]["c.lwsp"] = "10"
	isa["rdRs1Mask"]["c.mv"] = "10"
	isa["rdRs1Mask"]["c.nop"] = "00"
	isa["rdRs1Mask"]["c.slli"] = "11"
	isa["rdRs1Mask"]["c.slli64"] = "11"
	isa["rdRs1Val"]["c.addi16sp"] = 2
	isa["rdRs1Val"]["c.ebreak"] = "0"
	isa["rdRs1Val"]["c.nop"] = "0"
	isa["rs2Excl"]["c.add"] = "[0]"
	isa["rs2Excl"]["c.mv"] = "[0]"
	isa["rs2Val"]["c.ebreak"] = "0"
	isa["rs2Val"]["c.jalr"] = "0"
	isa["rs2Val"]["c.jr"] = "0"
	isa["uimm"]["c.addi4spn"] = 1
	isa["uimm"]["c.fld"] = 1
	isa["uimm"]["c.fldsp"] = 1
	isa["uimm"]["c.flw"] = 1
	isa["uimm"]["c.flwsp"] = 1
	isa["uimm"]["c.fsd"] = 1
	isa["uimm"]["c.fsdsp"] = 1
	isa["uimm"]["c.fsw"] = 1
	isa["uimm"]["c.fswsp"] = 1
	isa["uimm"]["c.ld"] = 1
	isa["uimm"]["c.ldsp"] = 1
	isa["uimm"]["c.lq"] = 1
	isa["uimm"]["c.lqsp"] = 1
	isa["uimm"]["c.lw"] = 1
	isa["uimm"]["c.lwsp"] = 1
	isa["uimm"]["c.sd"] = 1
	isa["uimm"]["c.sdsp"] = 1
	isa["uimm"]["c.slli"] = 1
	isa["uimm"]["c.sq"] = 1
	isa["uimm"]["c.sqsp"] = 1
	isa["uimm"]["c.srai"] = 1
	isa["uimm"]["c.srli"] = 1
	isa["uimm"]["c.sw"] = 1
	isa["uimm"]["c.swsp"] = 1
	isa["xlens"]["c.add"] = "111"
	isa["xlens"]["c.addi"] = "111"
	isa["xlens"]["c.addi16sp"] = "111"
	isa["xlens"]["c.addi4spn"] = "111"
	isa["xlens"]["c.addiw"] = "110"
	isa["xlens"]["c.addw"] = "110"
	isa["xlens"]["c.and"] = "111"
	isa["xlens"]["c.andi"] = "111"
	isa["xlens"]["c.beqz"] = "111"
	isa["xlens"]["c.bnez"] = "111"
	isa["xlens"]["c.ebreak"] = "111"
	isa["xlens"]["c.fld"] = "011"
	isa["xlens"]["c.fldsp"] = "011"
	isa["xlens"]["c.flw"] = "001"
	isa["xlens"]["c.flwsp"] = "001"
	isa["xlens"]["c.fsd"] = "011"
	isa["xlens"]["c.fsdsp"] = "011"
	isa["xlens"]["c.fsw"] = "001"
	isa["xlens"]["c.fswsp"] = "001"
	isa["xlens"]["c.j"] = "101"
	isa["xlens"]["c.jal"] = "001"
	isa["xlens"]["c.jalr"] = "111"
	isa["xlens"]["c.jr"] = "111"
	isa["xlens"]["c.ld"] = "110"
	isa["xlens"]["c.ldsp"] = "110"
	isa["xlens"]["c.li"] = "111"
	isa["xlens"]["c.lq"] = "100"
	isa["xlens"]["c.lqsp"] = "100"
	isa["xlens"]["c.lui"] = "111"
	isa["xlens"]["c.lw"] = "111"
	isa["xlens"]["c.lwsp"] = "111"
	isa["xlens"]["c.mv"] = "111"
	isa["xlens"]["c.nop"] = "111"
	isa["xlens"]["c.or"] = "111"
	isa["xlens"]["c.sd"] = "110"
	isa["xlens"]["c.sdsp"] = "110"
	isa["xlens"]["c.slli"] = "111"
	isa["xlens"]["c.slli64"] = "100"
	isa["xlens"]["c.sq"] = "100"
	isa["xlens"]["c.sqsp"] = "100"
	isa["xlens"]["c.srai"] = "111"
	isa["xlens"]["c.srai64"] = "100"
	isa["xlens"]["c.srli"] = "111"
	isa["xlens"]["c.srli64"] = "100"
	isa["xlens"]["c.sub"] = "111"
	isa["xlens"]["c.subw"] = "110"
	isa["xlens"]["c.sw"] = "111"
	isa["xlens"]["c.swsp"] = "111"
	isa["xlens"]["c.xor"] = "111"

	# RV64I instruction set
	isa["fmt"]["addiw"] = "I"
	isa["fmt"]["addw"] = "R"
	isa["fmt"]["ld"] = "I"
	isa["fmt"]["lwu"] = "I"
	isa["fmt"]["sd"] = "S"
	isa["fmt"]["slliw"] = "I"
	isa["fmt"]["sllw"] = "R"
	isa["fmt"]["sraiw"] = "I"
	isa["fmt"]["sraw"] = "R"
	isa["fmt"]["srliw"] = "I"
	isa["fmt"]["srlw"] = "R"
	isa["fmt"]["subw"] = "R"
	isa["funct3"]["addiw"] = "000"
	isa["funct3"]["addw"] = "000"
	isa["funct3"]["ld"] = "011"
	isa["funct3"]["lwu"] = "110"
	isa["funct3"]["sd"] = "011"
	isa["funct3"]["slliw"] = "001"
	isa["funct3"]["sllw"] = "001"
	isa["funct3"]["sraiw"] = "101"
	isa["funct3"]["sraw"] = "101"
	isa["funct3"]["srliw"] = "101"
	isa["funct3"]["srlw"] = "101"
	isa["funct3"]["subw"] = "000"
	isa["funct7"]["addw"] = "0000000"
	isa["funct7"]["sllw"] = "0000000"
	isa["funct7"]["sraw"] = "0100000"
	isa["funct7"]["srlw"] = "0000000"
	isa["funct7"]["subw"] = "0100000"
	isa["isa"]["addiw"] = "RV64I"
	isa["isa"]["addw"] = "RV64I"
	isa["isa"]["ld"] = "RV64I"
	isa["isa"]["lwu"] = "RV64I"
	isa["isa"]["sd"] = "RV64I"
	isa["isa"]["slliw"] = "RV64I"
	isa["isa"]["sllw"] = "RV64I"
	isa["isa"]["sraiw"] = "RV64I"
	isa["isa"]["sraw"] = "RV64I"
	isa["isa"]["srliw"] = "RV64I"
	isa["isa"]["srlw"] = "RV64I"
	isa["isa"]["subw"] = "RV64I"
	isa["opcode"]["addiw"] = OPCODE["OP_IMM_32"]
	isa["opcode"]["addw"] = OPCODE["OP_32"]
	isa["opcode"]["ld"] = OPCODE["LOAD"]
	isa["opcode"]["lwu"] = OPCODE["LOAD"]
	isa["opcode"]["sd"] = OPCODE["STORE"]
	isa["opcode"]["slliw"] = OPCODE["OP_IMM_32"]
	isa["opcode"]["sllw"] = OPCODE["OP_32"]
	isa["opcode"]["sraiw"] = OPCODE["OP_IMM_32"]
	isa["opcode"]["sraw"] = OPCODE["OP_32"]
	isa["opcode"]["srliw"] = OPCODE["OP_IMM_32"]
	isa["opcode"]["srlw"] = OPCODE["OP_32"]
	isa["opcode"]["subw"] = OPCODE["OP_32"]
	isa["shtyp"]["slliw"] = "0"
	isa["shtyp"]["sraiw"] = "1"
	isa["shtyp"]["srliw"] = "0"

	# RV6128I instruction set
 	isa["isa"]["addid"] = "RV128I" 
 	isa["isa"]["sllid"] = "RV128I" 
 	isa["isa"]["srlid"] = "RV128I" 
 	isa["isa"]["sraid"] = "RV128I" 
 	isa["isa"]["addd"] = "RV128I" 
 	isa["isa"]["subd"] = "RV128I" 
 	isa["isa"]["slld"] = "RV128I" 
 	isa["isa"]["srld"] = "RV128I" 
 	isa["isa"]["srad"] = "RV128I" 
 	isa["isa"]["lq"] = "RV128I" 
 	isa["isa"]["ldu"] = "RV128I" 
 	isa["isa"]["sq"] = "RV128I" 
 	isa["fmt"]["addid"] = "I" 
 	isa["fmt"]["sllid"] = "I" 
 	isa["fmt"]["srlid"] = "I" 
 	isa["fmt"]["sraid"] = "I" 
 	isa["fmt"]["addd"] = "R" 
 	isa["fmt"]["subd"] = "R" 
 	isa["fmt"]["slld"] = "R" 
 	isa["fmt"]["srld"] = "R" 
 	isa["fmt"]["srad"] = "R" 
 	isa["fmt"]["lq"] = "I" 
 	isa["fmt"]["ldu"] = "I" 
 	isa["fmt"]["sq"] = "S" 
 	isa["shtyp"]["sllid"] = "0" 
 	isa["shtyp"]["srlid"] = "0" 
 	isa["shtyp"]["sraid"] = "1" 
 	isa["funct3"]["addid"] = "000" 
 	isa["funct3"]["sllid"] = "001" 
 	isa["funct3"]["srlid"] = "101" 
 	isa["funct3"]["sraid"] = "101" 
 	isa["funct3"]["addd"] = "000" 
 	isa["funct3"]["subd"] = "000" 
 	isa["funct3"]["slld"] = "001" 
 	isa["funct3"]["srld"] = "101" 
 	isa["funct3"]["srad"] = "101" 
 	isa["funct3"]["lq"] = "010" 
 	isa["funct3"]["ldu"] = "111" 
 	isa["funct3"]["sq"] = "100" 
 	isa["funct7"]["addd"] = "0000000" 
 	isa["funct7"]["subd"] = "0100000" 
 	isa["funct7"]["slld"] = "0000000" 
 	isa["funct7"]["srld"] = "0000000" 
 	isa["funct7"]["srad"] = "0100000" 
 	isa["opcode"]["addid"] = OPCODE["OP_IMM_64"]
 	isa["opcode"]["sllid"] = OPCODE["OP_IMM_64"]
 	isa["opcode"]["srlid"] = OPCODE["OP_IMM_64"]
 	isa["opcode"]["sraid"] = OPCODE["OP_IMM_64"]
 	isa["opcode"]["addd"] = OPCODE["OP_64"]
 	isa["opcode"]["subd"] = OPCODE["OP_64"]
 	isa["opcode"]["slld"] = OPCODE["OP_64"]
 	isa["opcode"]["srld"] = OPCODE["OP_64"]
 	isa["opcode"]["srad"] = OPCODE["OP_64"]
 	isa["opcode"]["lq"] = OPCODE["MISC_MEM"]
 	isa["opcode"]["ldu"] = OPCODE["LOAD"]
 	isa["opcode"]["sq"] = OPCODE["STORE"]

	# Zifence instruction set
	isa["isa"]["fence.i"] = "Zifencei"
	isa["fmt"]["fence.i"] = "I"
	isa["funct3"]["fence.i"] = "001"
	isa["opcode"]["fence.i"] = OPCODE["MISC_MEM"]

	# Zicsr instruction set
	isa["fmt"]["csrrs"] = "I"
	isa["fmt"]["csrrw"] = "I"
	isa["fmt"]["csrrc"] = "I"
	isa["fmt"]["csrrwi"] = "I"
	isa["fmt"]["csrrsi"] = "I"
	isa["fmt"]["csrrci"] = "I"
	isa["funct3"]["csrrs"] = "001"
	isa["funct3"]["csrrw"] = "010"
	isa["funct3"]["csrrc"] = "011"
	isa["funct3"]["csrrwi"] = "101"
	isa["funct3"]["csrrsi"] = "110"
	isa["funct3"]["csrrci"] = "111"
	isa["isa"]["csrrs"] = "Zicsr"
	isa["isa"]["csrrw"] = "Zicsr"
	isa["isa"]["csrrc"] = "Zicsr"
	isa["isa"]["csrrwi"] = "Zicsr"
	isa["isa"]["csrrsi"] = "Zicsr"
	isa["isa"]["csrrci"] = "Zicsr"
	isa["opcode"]["csrrs"] = OPCODE["SYSTEM"]
	isa["opcode"]["csrrw"] = OPCODE["SYSTEM"]
	isa["opcode"]["csrrc"] = OPCODE["SYSTEM"]
	isa["opcode"]["csrrwi"] = OPCODE["SYSTEM"]
	isa["opcode"]["csrrsi"] = OPCODE["SYSTEM"]
	isa["opcode"]["csrrci"] = OPCODE["SYSTEM"]

	# M instruction set
	isa["fmt"]["div"] = "R"
	isa["fmt"]["divd"] = "R"
	isa["fmt"]["divu"] = "R"
	isa["fmt"]["divud"] = "R"
	isa["fmt"]["divuw"] = "R"
	isa["fmt"]["divw"] = "R"
	isa["fmt"]["mul"] = "R"
	isa["fmt"]["muld"] = "R"
	isa["fmt"]["mulh"] = "R"
	isa["fmt"]["mulhsu"] = "R"
	isa["fmt"]["mulhu"] = "R"
	isa["fmt"]["mulw"] = "R"
	isa["fmt"]["rem"] = "R"
	isa["fmt"]["remd"] = "R"
	isa["fmt"]["remu"] = "R"
	isa["fmt"]["remud"] = "R"
	isa["fmt"]["remuw"] = "R"
	isa["fmt"]["remw"] = "R"
	isa["funct3"]["div"] = "100"
	isa["funct3"]["divd"] = "100"
	isa["funct3"]["divu"] = "101"
	isa["funct3"]["divud"] = "101"
	isa["funct3"]["divuw"] = "101"
	isa["funct3"]["divw"] = "100"
	isa["funct3"]["mul"] = "000"
	isa["funct3"]["muld"] = "000"
	isa["funct3"]["mulh"] = "001"
	isa["funct3"]["mulhsu"] = "010"
	isa["funct3"]["mulhu"] = "011"
	isa["funct3"]["mulw"] = "000"
	isa["funct3"]["rem"] = "110"
	isa["funct3"]["remd"] = "110"
	isa["funct3"]["remu"] = "111"
	isa["funct3"]["remud"] = "111"
	isa["funct3"]["remuw"] = "111"
	isa["funct3"]["remw"] = "110"
	isa["funct7"]["div"] = "0000001"
	isa["funct7"]["divd"] = "0000001"
	isa["funct7"]["divu"] = "0000001"
	isa["funct7"]["divud"] = "0000001"
	isa["funct7"]["divuw"] = "0000001"
	isa["funct7"]["divw"] = "0000001"
	isa["funct7"]["mul"] = "0000001"
	isa["funct7"]["muld"] = "0000001"
	isa["funct7"]["mulh"] = "0000001"
	isa["funct7"]["mulhsu"] = "0000001"
	isa["funct7"]["mulhu"] = "0000001"
	isa["funct7"]["mulw"] = "0000001"
	isa["funct7"]["rem"] = "0000001"
	isa["funct7"]["remd"] = "0000001"
	isa["funct7"]["remu"] = "0000001"
	isa["funct7"]["remud"] = "0000001"
	isa["funct7"]["remuw"] = "0000001"
	isa["funct7"]["remw"] = "0000001"
	isa["isa"]["div"] = "RV32M"
	isa["isa"]["divd"] = "RV128M"
	isa["isa"]["divu"] = "RV32M"
	isa["isa"]["divud"] = "RV128M"
	isa["isa"]["divuw"] = "RV64M"
	isa["isa"]["divw"] = "RV64M"
	isa["isa"]["mul"] = "RV32M"
	isa["isa"]["muld"] = "RV128M"
	isa["isa"]["mulh"] = "RV32M"
	isa["isa"]["mulhsu"] = "RV32M"
	isa["isa"]["mulhu"] = "RV32M"
	isa["isa"]["mulw"] = "RV64M"
	isa["isa"]["rem"] = "RV32M"
	isa["isa"]["remd"] = "RV128M"
	isa["isa"]["remu"] = "RV32M"
	isa["isa"]["remud"] = "RV128M"
	isa["isa"]["remuw"] = "RV64M"
	isa["isa"]["remw"] = "RV64M"
	isa["opcode"]["div"] = OPCODE["OP"]
	isa["opcode"]["divd"] = OPCODE["OP_64"]
	isa["opcode"]["divu"] = OPCODE["OP"]
	isa["opcode"]["divud"] = OPCODE["OP_64"]
	isa["opcode"]["divuw"] = OPCODE["OP_32"]
	isa["opcode"]["divw"] = OPCODE["OP_32"]
	isa["opcode"]["mul"] = OPCODE["OP"]
	isa["opcode"]["muld"] = OPCODE["OP_64"]
	isa["opcode"]["mulh"] = OPCODE["OP"]
	isa["opcode"]["mulhsu"] = OPCODE["OP"]
	isa["opcode"]["mulhu"] = OPCODE["OP"]
	isa["opcode"]["mulw"] = OPCODE["OP_32"]
	isa["opcode"]["rem"] = OPCODE["OP"]
	isa["opcode"]["remd"] = OPCODE["OP_64"]
	isa["opcode"]["remu"] = OPCODE["OP"]
	isa["opcode"]["remud"] = OPCODE["OP_64"]
	isa["opcode"]["remuw"] = OPCODE["OP_32"]
	isa["opcode"]["remw"] = OPCODE["OP_32"]

	# A instruction set
	isa["fmt"]["amoadd.d"] = "R"
	isa["fmt"]["amoadd.q"] = "R"
	isa["fmt"]["amoadd.w"] = "R"
	isa["fmt"]["amoand.d"] = "R"
	isa["fmt"]["amoand.q"] = "R"
	isa["fmt"]["amoand.w"] = "R"
	isa["fmt"]["amomax.d"] = "R"
	isa["fmt"]["amomax.q"] = "R"
	isa["fmt"]["amomax.w"] = "R"
	isa["fmt"]["amomaxu.d"] = "R"
	isa["fmt"]["amomaxu.q"] = "R"
	isa["fmt"]["amomaxu.w"] = "R"
	isa["fmt"]["amomin.d"] = "R"
	isa["fmt"]["amomin.q"] = "R"
	isa["fmt"]["amomin.w"] = "R"
	isa["fmt"]["amominu.d"] = "R"
	isa["fmt"]["amominu.q"] = "R"
	isa["fmt"]["amominu.w"] = "R"
	isa["fmt"]["amoor.d"] = "R"
	isa["fmt"]["amoor.q"] = "R"
	isa["fmt"]["amoor.w"] = "R"
	isa["fmt"]["amoswap.d"] = "R"
	isa["fmt"]["amoswap.q"] = "R"
	isa["fmt"]["amoswap.w"] = "R"
	isa["fmt"]["amoxor.d"] = "R"
	isa["fmt"]["amoxor.q"] = "R"
	isa["fmt"]["amoxor.w"] = "R"
	isa["fmt"]["lr.d"] = "R"
	isa["fmt"]["lr.q"] = "R"
	isa["fmt"]["lr.w"] = "R"
	isa["fmt"]["sc.d"] = "R"
	isa["fmt"]["sc.q"] = "R"
	isa["fmt"]["sc.w"] = "R"
	isa["funct3"]["amoadd.d"] = "011"
	isa["funct3"]["amoadd.q"] = "100"
	isa["funct3"]["amoadd.w"] = "010"
	isa["funct3"]["amoand.d"] = "011"
	isa["funct3"]["amoand.q"] = "100"
	isa["funct3"]["amoand.w"] = "010"
	isa["funct3"]["amomax.d"] = "011"
	isa["funct3"]["amomax.q"] = "100"
	isa["funct3"]["amomax.w"] = "010"
	isa["funct3"]["amomaxu.d"] = "011"
	isa["funct3"]["amomaxu.q"] = "100"
	isa["funct3"]["amomaxu.w"] = "010"
	isa["funct3"]["amomin.d"] = "011"
	isa["funct3"]["amomin.q"] = "100"
	isa["funct3"]["amomin.w"] = "010"
	isa["funct3"]["amominu.d"] = "011"
	isa["funct3"]["amominu.q"] = "100"
	isa["funct3"]["amominu.w"] = "010"
	isa["funct3"]["amoor.d"] = "011"
	isa["funct3"]["amoor.q"] = "100"
	isa["funct3"]["amoor.w"] = "010"
	isa["funct3"]["amoswap.d"] = "011"
	isa["funct3"]["amoswap.q"] = "100"
	isa["funct3"]["amoswap.w"] = "010"
	isa["funct3"]["amoxor.d"] = "011"
	isa["funct3"]["amoxor.q"] = "100"
	isa["funct3"]["amoxor.w"] = "010"
	isa["funct3"]["lr.d"] = "011"
	isa["funct3"]["lr.q"] = "100"
	isa["funct3"]["lr.w"] = "010"
	isa["funct3"]["sc.d"] = "011"
	isa["funct3"]["sc.q"] = "100"
	isa["funct3"]["sc.w"] = "010"
	isa["funct5"]["amoadd.d"] = "00000"
	isa["funct5"]["amoadd.q"] = "00000"
	isa["funct5"]["amoadd.w"] = "00000"
	isa["funct5"]["amoand.d"] = "01100"
	isa["funct5"]["amoand.q"] = "01100"
	isa["funct5"]["amoand.w"] = "01100"
	isa["funct5"]["amomax.d"] = "10100"
	isa["funct5"]["amomax.q"] = "10100"
	isa["funct5"]["amomax.w"] = "10100"
	isa["funct5"]["amomaxu.d"] = "11100"
	isa["funct5"]["amomaxu.q"] = "11100"
	isa["funct5"]["amomaxu.w"] = "11100"
	isa["funct5"]["amomin.d"] = "10000"
	isa["funct5"]["amomin.q"] = "10000"
	isa["funct5"]["amomin.w"] = "10000"
	isa["funct5"]["amominu.d"] = "11000"
	isa["funct5"]["amominu.q"] = "11000"
	isa["funct5"]["amominu.w"] = "11000"
	isa["funct5"]["amoor.d"] = "01000"
	isa["funct5"]["amoor.q"] = "01000"
	isa["funct5"]["amoor.w"] = "01000"
	isa["funct5"]["amoswap.d"] = "00001"
	isa["funct5"]["amoswap.q"] = "00001"
	isa["funct5"]["amoswap.w"] = "00001"
	isa["funct5"]["amoxor.d"] = "00100"
	isa["funct5"]["amoxor.q"] = "00100"
	isa["funct5"]["amoxor.w"] = "00100"
	isa["funct5"]["lr.d"] = "00010"
	isa["funct5"]["lr.q"] = "00010"
	isa["funct5"]["lr.w"] = "00010"
	isa["funct5"]["sc.d"] = "00011"
	isa["funct5"]["sc.q"] = "00011"
	isa["funct5"]["sc.w"] = "00011"
	isa["isa"]["amoadd.d"] = "RV64A"
	isa["isa"]["amoadd.q"] = "RV128A"
	isa["isa"]["amoadd.w"] = "RV32A"
	isa["isa"]["amoand.d"] = "RV64A"
	isa["isa"]["amoand.q"] = "RV128A"
	isa["isa"]["amoand.w"] = "RV32A"
	isa["isa"]["amomax.d"] = "RV64A"
	isa["isa"]["amomax.q"] = "RV128A"
	isa["isa"]["amomax.w"] = "RV32A"
	isa["isa"]["amomaxu.d"] = "RV64A"
	isa["isa"]["amomaxu.q"] = "RV128A"
	isa["isa"]["amomaxu.w"] = "RV32A"
	isa["isa"]["amomin.d"] = "RV64A"
	isa["isa"]["amomin.q"] = "RV128A"
	isa["isa"]["amomin.w"] = "RV32A"
	isa["isa"]["amominu.d"] = "RV64A"
	isa["isa"]["amominu.q"] = "RV128A"
	isa["isa"]["amominu.w"] = "RV32A"
	isa["isa"]["amoor.d"] = "RV64A"
	isa["isa"]["amoor.q"] = "RV128A"
	isa["isa"]["amoor.w"] = "RV32A"
	isa["isa"]["amoswap.d"] = "RV64A"
	isa["isa"]["amoswap.q"] = "RV128A"
	isa["isa"]["amoswap.w"] = "RV32A"
	isa["isa"]["amoxor.d"] = "RV64A"
	isa["isa"]["amoxor.q"] = "RV128A"
	isa["isa"]["amoxor.w"] = "RV32A"
	isa["isa"]["lr.d"] = "RV64A"
	isa["isa"]["lr.q"] = "RV128A"
	isa["isa"]["lr.w"] = "RV32A"
	isa["isa"]["sc.d"] = "RV64A"
	isa["isa"]["sc.q"] = "RV128A"
	isa["isa"]["sc.w"] = "RV32A"
	isa["opcode"]["amoadd.d"] = OPCODE["AMO"]
	isa["opcode"]["amoadd.q"] = OPCODE["AMO"]
	isa["opcode"]["amoadd.w"] = OPCODE["AMO"]
	isa["opcode"]["amoand.d"] = OPCODE["AMO"]
	isa["opcode"]["amoand.q"] = OPCODE["AMO"]
	isa["opcode"]["amoand.w"] = OPCODE["AMO"]
	isa["opcode"]["amomax.d"] = OPCODE["AMO"]
	isa["opcode"]["amomax.q"] = OPCODE["AMO"]
	isa["opcode"]["amomax.w"] = OPCODE["AMO"]
	isa["opcode"]["amomaxu.d"] = OPCODE["AMO"]
	isa["opcode"]["amomaxu.q"] = OPCODE["AMO"]
	isa["opcode"]["amomaxu.w"] = OPCODE["AMO"]
	isa["opcode"]["amomin.d"] = OPCODE["AMO"]
	isa["opcode"]["amomin.q"] = OPCODE["AMO"]
	isa["opcode"]["amomin.w"] = OPCODE["AMO"]
	isa["opcode"]["amominu.d"] = OPCODE["AMO"]
	isa["opcode"]["amominu.q"] = OPCODE["AMO"]
	isa["opcode"]["amominu.w"] = OPCODE["AMO"]
	isa["opcode"]["amoor.d"] = OPCODE["AMO"]
	isa["opcode"]["amoor.q"] = OPCODE["AMO"]
	isa["opcode"]["amoor.w"] = OPCODE["AMO"]
	isa["opcode"]["amoswap.d"] = OPCODE["AMO"]
	isa["opcode"]["amoswap.q"] = OPCODE["AMO"]
	isa["opcode"]["amoswap.w"] = OPCODE["AMO"]
	isa["opcode"]["amoxor.d"] = OPCODE["AMO"]
	isa["opcode"]["amoxor.q"] = OPCODE["AMO"]
	isa["opcode"]["amoxor.w"] = OPCODE["AMO"]
	isa["opcode"]["lr.d"] = OPCODE["AMO"]
	isa["opcode"]["lr.q"] = OPCODE["AMO"]
	isa["opcode"]["lr.w"] = OPCODE["AMO"]
	isa["opcode"]["sc.d"] = OPCODE["AMO"]
	isa["opcode"]["sc.q"] = OPCODE["AMO"]
	isa["opcode"]["sc.w"] = OPCODE["AMO"]

	# F instruction set
	isa["fmt"]["fadd.s"] = "R"
	isa["fmt"]["fclass.s"] = "R"
	isa["fmt"]["fcvt.l.s"] = "R"
	isa["fmt"]["fcvt.lu.s"] = "R"
	isa["fmt"]["fcvt.s.l"] = "R"
	isa["fmt"]["fcvt.s.lu"] = "R"
	isa["fmt"]["fcvt.s.t"] = "R"
	isa["fmt"]["fcvt.s.tu"] = "R"
	isa["fmt"]["fcvt.s.w"] = "R"
	isa["fmt"]["fcvt.s.wu"] = "R"
	isa["fmt"]["fcvt.t.s"] = "R"
	isa["fmt"]["fcvt.tu.s"] = "R"
	isa["fmt"]["fcvt.w.s"] = "R"
	isa["fmt"]["fcvt.wu.s"] = "R"
	isa["fmt"]["fdiv.s"] = "R"
	isa["fmt"]["feq.s"] = "R"
	isa["fmt"]["fle.s"] = "R"
	isa["fmt"]["flt.s"] = "R"
	isa["fmt"]["flw"] = "I"
	isa["fmt"]["fmadd.s"] = "R4"
	isa["fmt"]["fmax.s"] = "R"
	isa["fmt"]["fmin.s"] = "R"
	isa["fmt"]["fmsub.s"] = "R4"
	isa["fmt"]["fmul.s"] = "R"
	isa["fmt"]["fmv.w.x"] = "R"
	isa["fmt"]["fmv.x.w"] = "R"
	isa["fmt"]["fnmadd.s"] = "R4"
	isa["fmt"]["fnmsub.s"] = "R4"
	isa["fmt"]["fsgnj.s"] = "R"
	isa["fmt"]["fsgnjn.s"] = "R"
	isa["fmt"]["fsgnjx.s"] = "R"
	isa["fmt"]["fsqrt.s"] = "R"
	isa["fmt"]["fsub.s"] = "R"
	isa["fmt"]["fsw"] = "S"
	isa["fp_fmt"]["fadd.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fclass.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.l.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.lu.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.l"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.lu"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.t"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.tu"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.w"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.s.wu"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.t.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.tu.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.w.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.wu.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fdiv.s"] = FP_FMT["S"]
	isa["fp_fmt"]["feq.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fle.s"] = FP_FMT["S"]
	isa["fp_fmt"]["flt.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmadd.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmax.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmin.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmsub.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmul.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fmv.w.x"] = FP_FMT["S"]
	isa["fp_fmt"]["fmv.x.w"] = FP_FMT["S"]
	isa["fp_fmt"]["fnmadd.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fnmsub.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fsgnj.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fsgnjn.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fsgnjx.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fsqrt.s"] = FP_FMT["S"]
	isa["fp_fmt"]["fsub.s"] = FP_FMT["S"]
	isa["funct3"]["fclass.s"] = "001"
	isa["funct3"]["feq.s"] = "010"
	isa["funct3"]["fle.s"] = "000"
	isa["funct3"]["flt.s"] = "001"
	isa["funct3"]["flw"] = FP_WIDTH["S"]
	isa["funct3"]["fmax.s"] = "001"
	isa["funct3"]["fmin.s"] = "000"
	isa["funct3"]["fmv.w.x"] = "000"
	isa["funct3"]["fmv.x.w"] = "000"
	isa["funct3"]["fsgnj.s"] = "000"
	isa["funct3"]["fsgnjn.s"] = "001"
	isa["funct3"]["fsgnjx.s"] = "010"
	isa["funct3"]["fsw"] = FP_WIDTH["S"]
	isa["funct5"]["fadd.s"] = "00000"
	isa["funct5"]["fclass.s"] = "11100"
	isa["funct5"]["fcvt.l.s"] = "11000"
	isa["funct5"]["fcvt.lu.s"] = "11000"
	isa["funct5"]["fcvt.s.l"] = "11010"
	isa["funct5"]["fcvt.s.lu"] = "11010"
	isa["funct5"]["fcvt.s.t"] = "11010"
	isa["funct5"]["fcvt.s.tu"] = "11010"
	isa["funct5"]["fcvt.s.w"] = "11010"
	isa["funct5"]["fcvt.s.wu"] = "11010"
	isa["funct5"]["fcvt.t.s"] = "11000"
	isa["funct5"]["fcvt.tu.s"] = "11000"
	isa["funct5"]["fcvt.w.s"] = "11000"
	isa["funct5"]["fcvt.wu.s"] = "11000"
	isa["funct5"]["fdiv.s"] = "00011"
	isa["funct5"]["feq.s"] = "10100"
	isa["funct5"]["fle.s"] = "10100"
	isa["funct5"]["flt.s"] = "10100"
	isa["funct5"]["fmax.s"] = "00101"
	isa["funct5"]["fmin.s"] = "00101"
	isa["funct5"]["fmul.s"] = "00010"
	isa["funct5"]["fmv.w.x"] = "11110"
	isa["funct5"]["fmv.x.w"] = "11100"
	isa["funct5"]["fsgnj.s"] = "00100"
	isa["funct5"]["fsgnjn.s"] = "00100"
	isa["funct5"]["fsgnjx.s"] = "00100"
	isa["funct5"]["fsqrt.s"] = "01011"
	isa["funct5"]["fsub.s"] = "00001"
	isa["isa"]["fadd.s"] = "RV32F"
	isa["isa"]["fclass.s"] = "RV32F"
	isa["isa"]["fcvt.l.s"] = "RV64F"
	isa["isa"]["fcvt.lu.s"] = "RV64F"
	isa["isa"]["fcvt.s.l"] = "RV64F"
	isa["isa"]["fcvt.s.lu"] = "RV64F"
	isa["isa"]["fcvt.s.t"] = "RV128F"
	isa["isa"]["fcvt.s.tu"] = "RV128F"
	isa["isa"]["fcvt.s.w"] = "RV32F"
	isa["isa"]["fcvt.s.wu"] = "RV32F"
	isa["isa"]["fcvt.t.s"] = "RV128F"
	isa["isa"]["fcvt.tu.s"] = "RV128F"
	isa["isa"]["fcvt.w.s"] = "RV32F"
	isa["isa"]["fcvt.wu.s"] = "RV32F"
	isa["isa"]["fdiv.s"] = "RV32F"
	isa["isa"]["feq.s"] = "RV32F"
	isa["isa"]["fle.s"] = "RV32F"
	isa["isa"]["flt.s"] = "RV32F"
	isa["isa"]["flw"] = "RV32F"
	isa["isa"]["fmadd.s"] = "RV32F"
	isa["isa"]["fmax.s"] = "RV32F"
	isa["isa"]["fmin.s"] = "RV32F"
	isa["isa"]["fmsub.s"] = "RV32F"
	isa["isa"]["fmul.s"] = "RV32F"
	isa["isa"]["fmv.w.x"] = "RV32F"
	isa["isa"]["fmv.x.w"] = "RV32F"
	isa["isa"]["fnmadd.s"] = "RV32F"
	isa["isa"]["fnmsub.s"] = "RV32F"
	isa["isa"]["fsgnj.s"] = "RV32F"
	isa["isa"]["fsgnjn.s"] = "RV32F"
	isa["isa"]["fsgnjx.s"] = "RV32F"
	isa["isa"]["fsqrt.s"] = "RV32F"
	isa["isa"]["fsub.s"] = "RV32F"
	isa["isa"]["fsw"] = "RV32F"
	isa["opcode"]["fadd.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fclass.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.l.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.lu.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.l"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.lu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.t"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.tu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.w"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.wu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.t.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.tu.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.w.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.wu.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fdiv.s"] = OPCODE["OP_FP"]
	isa["opcode"]["feq.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fle.s"] = OPCODE["OP_FP"]
	isa["opcode"]["flt.s"] = OPCODE["OP_FP"]
	isa["opcode"]["flw"] = OPCODE["LOAD_FP"]
	isa["opcode"]["fmadd.s"] = OPCODE["MADD"]
	isa["opcode"]["fmax.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fmin.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fmsub.s"] = OPCODE["MSUB"]
	isa["opcode"]["fmul.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.w.x"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.x.w"] = OPCODE["OP_FP"]
	isa["opcode"]["fnmadd.s"] = OPCODE["NMADD"]
	isa["opcode"]["fnmsub.s"] = OPCODE["NMSUB"]
	isa["opcode"]["fsgnj.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjn.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjx.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fsqrt.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fsub.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fsw"] = OPCODE["STORE_FP"]
	isa["rs2"]["fclass.s"] = "00000"
	isa["rs2"]["fcvt.l.s"] = "00010"
	isa["rs2"]["fcvt.lu.s"] = "00011"
	isa["rs2"]["fcvt.s.l"] = "00010"
	isa["rs2"]["fcvt.s.lu"] = "00011"
	isa["rs2"]["fcvt.s.t"] = "00100"
	isa["rs2"]["fcvt.s.tu"] = "00101"
	isa["rs2"]["fcvt.s.w"] = "00000"
	isa["rs2"]["fcvt.s.wu"] = "00001"
	isa["rs2"]["fcvt.t.s"] = "00100"
	isa["rs2"]["fcvt.tu.s"] = "00101"
	isa["rs2"]["fcvt.w.s"] = "00000"
	isa["rs2"]["fcvt.wu.s"] = "00001"
	isa["rs2"]["fmv.w.x"] = "00000"
	isa["rs2"]["fmv.x.w"] = "00000"
	isa["rs2"]["fsqrt.s"] = "00000"

	# D instruction set
	isa["fmt"]["fadd.d"] = "R"
	isa["fmt"]["fclass.d"] = "R"
	isa["fmt"]["fcvt.d.l"] = "R"
	isa["fmt"]["fcvt.d.lu"] = "R"
	isa["fmt"]["fcvt.d.s"] = "R"
	isa["fmt"]["fcvt.d.t"] = "R"
	isa["fmt"]["fcvt.d.tu"] = "R"
	isa["fmt"]["fcvt.d.w"] = "R"
	isa["fmt"]["fcvt.d.wu"] = "R"
	isa["fmt"]["fcvt.l.d"] = "R"
	isa["fmt"]["fcvt.lu.d"] = "R"
	isa["fmt"]["fcvt.s.d"] = "R"
	isa["fmt"]["fcvt.t.d"] = "R"
	isa["fmt"]["fcvt.tu.d"] = "R"
	isa["fmt"]["fcvt.w.d"] = "R"
	isa["fmt"]["fcvt.wu.d"] = "R"
	isa["fmt"]["fdiv.d"] = "R"
	isa["fmt"]["feq.d"] = "R"
	isa["fmt"]["fld"] = "I"
	isa["fmt"]["fle.d"] = "R"
	isa["fmt"]["flt.d"] = "R"
	isa["fmt"]["fmadd.d"] = "R4"
	isa["fmt"]["fmax.d"] = "R"
	isa["fmt"]["fmin.d"] = "R"
	isa["fmt"]["fmsub.d"] = "R4"
	isa["fmt"]["fmul.d"] = "R"
	isa["fmt"]["fmv.d.x"] = "R"
	isa["fmt"]["fmv.x.d"] = "R"
	isa["fmt"]["fnmadd.d"] = "R4"
	isa["fmt"]["fnmsub.d"] = "R4"
	isa["fmt"]["fsd"] = "S"
	isa["fmt"]["fsgnj.d"] = "R"
	isa["fmt"]["fsgnjn.d"] = "R"
	isa["fmt"]["fsgnjx.d"] = "R"
	isa["fmt"]["fsqrt.d"] = "R"
	isa["fmt"]["fsub.d"] = "R"
	isa["fp_fmt"]["fadd.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fclass.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.l"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.lu"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.s"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.t"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.tu"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.w"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.d.wu"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.l.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.lu.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.s.d"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.t.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.tu.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.w.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.wu.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fdiv.d"] = FP_FMT["D"]
	isa["fp_fmt"]["feq.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fle.d"] = FP_FMT["D"]
	isa["fp_fmt"]["flt.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmadd.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmax.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmin.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmsub.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmul.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fmv.d.x"] = FP_FMT["D"]
	isa["fp_fmt"]["fmv.x.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fnmadd.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fnmsub.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fsgnj.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fsgnjn.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fsgnjx.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fsqrt.d"] = FP_FMT["D"]
	isa["fp_fmt"]["fsub.d"] = FP_FMT["D"]
	isa["funct3"]["fclass.d"] = "001"
	isa["funct3"]["feq.d"] = "010"
	isa["funct3"]["fld"] = FP_WIDTH["D"]
	isa["funct3"]["fle.d"] = "000"
	isa["funct3"]["flt.d"] = "001"
	isa["funct3"]["fmax.d"] = "001"
	isa["funct3"]["fmin.d"] = "000"
	isa["funct3"]["fmv.d.x"] = "000"
	isa["funct3"]["fmv.x.d"] = "000"
	isa["funct3"]["fsd"] = FP_WIDTH["D"]
	isa["funct3"]["fsgnj.d"] = "000"
	isa["funct3"]["fsgnjn.d"] = "001"
	isa["funct3"]["fsgnjx.d"] = "010"
	isa["funct5"]["fadd.d"] = "00000"
	isa["funct5"]["fclass.d"] = "11100"
	isa["funct5"]["fcvt.d.l"] = "11010"
	isa["funct5"]["fcvt.d.lu"] = "11010"
	isa["funct5"]["fcvt.d.s"] = "01000"
	isa["funct5"]["fcvt.d.t"] = "11010"
	isa["funct5"]["fcvt.d.tu"] = "11010"
	isa["funct5"]["fcvt.d.w"] = "11010"
	isa["funct5"]["fcvt.d.wu"] = "11010"
	isa["funct5"]["fcvt.l.d"] = "11000"
	isa["funct5"]["fcvt.lu.d"] = "11000"
	isa["funct5"]["fcvt.s.d"] = "01000"
	isa["funct5"]["fcvt.t.d"] = "11000"
	isa["funct5"]["fcvt.tu.d"] = "11000"
	isa["funct5"]["fcvt.w.d"] = "11000"
	isa["funct5"]["fcvt.wu.d"] = "11000"
	isa["funct5"]["fdiv.d"] = "00011"
	isa["funct5"]["feq.d"] = "10100"
	isa["funct5"]["fle.d"] = "10100"
	isa["funct5"]["flt.d"] = "10100"
	isa["funct5"]["fmax.d"] = "00101"
	isa["funct5"]["fmin.d"] = "00101"
	isa["funct5"]["fmul.d"] = "00010"
	isa["funct5"]["fmv.d.x"] = "11110"
	isa["funct5"]["fmv.x.d"] = "11100"
	isa["funct5"]["fsgnj.d"] = "00100"
	isa["funct5"]["fsgnjn.d"] = "00100"
	isa["funct5"]["fsgnjx.d"] = "00100"
	isa["funct5"]["fsqrt.d"] = "01011"
	isa["funct5"]["fsub.d"] = "00001"
	isa["isa"]["fadd.d"] = "RV32D"
	isa["isa"]["fclass.d"] = "RV32D"
	isa["isa"]["fcvt.d.l"] = "RV64D"
	isa["isa"]["fcvt.d.lu"] = "RV64D"
	isa["isa"]["fcvt.d.s"] = "RV32D"
	isa["isa"]["fcvt.d.t"] = "RV128D"
	isa["isa"]["fcvt.d.tu"] = "RV128D"
	isa["isa"]["fcvt.d.w"] = "RV32D"
	isa["isa"]["fcvt.d.wu"] = "RV32D"
	isa["isa"]["fcvt.l.d"] = "RV64D"
	isa["isa"]["fcvt.lu.d"] = "RV64D"
	isa["isa"]["fcvt.s.d"] = "RV32D"
	isa["isa"]["fcvt.t.d"] = "RV128D"
	isa["isa"]["fcvt.tu.d"] = "RV128D"
	isa["isa"]["fcvt.w.d"] = "RV32D"
	isa["isa"]["fcvt.wu.d"] = "RV32D"
	isa["isa"]["fdiv.d"] = "RV32D"
	isa["isa"]["feq.d"] = "RV32D"
	isa["isa"]["fld"] = "RV32D"
	isa["isa"]["fle.d"] = "RV32D"
	isa["isa"]["flt.d"] = "RV32D"
	isa["isa"]["fmadd.d"] = "RV32D"
	isa["isa"]["fmax.d"] = "RV32D"
	isa["isa"]["fmin.d"] = "RV32D"
	isa["isa"]["fmsub.d"] = "RV32D"
	isa["isa"]["fmul.d"] = "RV32D"
	isa["isa"]["fmv.d.x"] = "RV64D"
	isa["isa"]["fmv.x.d"] = "RV64D"
	isa["isa"]["fnmadd.d"] = "RV32D"
	isa["isa"]["fnmsub.d"] = "RV32D"
	isa["isa"]["fsd"] = "RV32D"
	isa["isa"]["fsgnj.d"] = "RV32D"
	isa["isa"]["fsgnjn.d"] = "RV32D"
	isa["isa"]["fsgnjx.d"] = "RV32D"
	isa["isa"]["fsqrt.d"] = "RV32D"
	isa["isa"]["fsub.d"] = "RV32D"
	isa["opcode"]["fadd.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fclass.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.l"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.lu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.t"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.tu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.w"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.wu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.l.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.lu.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.t.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.tu.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.w.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.wu.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fdiv.d"] = OPCODE["OP_FP"]
	isa["opcode"]["feq.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fld"] = OPCODE["LOAD_FP"]
	isa["opcode"]["fle.d"] = OPCODE["OP_FP"]
	isa["opcode"]["flt.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fmadd.d"] = OPCODE["MADD"]
	isa["opcode"]["fmax.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fmin.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fmsub.d"] = OPCODE["MSUB"]
	isa["opcode"]["fmul.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.d.x"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.x.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fnmadd.d"] = OPCODE["NMADD"]
	isa["opcode"]["fnmsub.d"] = OPCODE["NMSUB"]
	isa["opcode"]["fsd"] = OPCODE["STORE_FP"]
	isa["opcode"]["fsgnj.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjn.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjx.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fsqrt.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fsub.d"] = OPCODE["OP_FP"]
	isa["rs2"]["fclass.d"] = "00000"
	isa["rs2"]["fcvt.d.l"] = "00010"
	isa["rs2"]["fcvt.d.lu"] = "00011"
	isa["rs2"]["fcvt.d.s"] = "000" FP_FMT["S"]
	isa["rs2"]["fcvt.d.t"] = "00100"
	isa["rs2"]["fcvt.d.tu"] = "00101"
	isa["rs2"]["fcvt.d.w"] = "00000"
	isa["rs2"]["fcvt.d.wu"] = "00001"
	isa["rs2"]["fcvt.l.d"] = "00010"
	isa["rs2"]["fcvt.lu.d"] = "00011"
	isa["rs2"]["fcvt.s.d"] = "000" FP_FMT["D"]
	isa["rs2"]["fcvt.t.d"] = "00100"
	isa["rs2"]["fcvt.tu.d"] = "00101"
	isa["rs2"]["fcvt.w.d"] = "00000"
	isa["rs2"]["fcvt.wu.d"] = "00001"
	isa["rs2"]["fmv.d.x"] = "00000"
	isa["rs2"]["fmv.x.d"] = "00000"
	isa["rs2"]["fsqrt.d"] = "00000"

	# Q instruction set
	isa["fmt"]["fadd.q"] = "R"
	isa["fmt"]["fclass.q"] = "R"
	isa["fmt"]["fcvt.d.q"] = "R"
	isa["fmt"]["fcvt.l.q"] = "R"
	isa["fmt"]["fcvt.lu.q"] = "R"
	isa["fmt"]["fcvt.q.d"] = "R"
	isa["fmt"]["fcvt.q.l"] = "R"
	isa["fmt"]["fcvt.q.lu"] = "R"
	isa["fmt"]["fcvt.q.s"] = "R"
	isa["fmt"]["fcvt.q.t"] = "R"
	isa["fmt"]["fcvt.q.tu"] = "R"
	isa["fmt"]["fcvt.q.w"] = "R"
	isa["fmt"]["fcvt.q.wu"] = "R"
	isa["fmt"]["fcvt.s.q"] = "R"
	isa["fmt"]["fcvt.t.q"] = "R"
	isa["fmt"]["fcvt.tu.q"] = "R"
	isa["fmt"]["fcvt.w.q"] = "R"
	isa["fmt"]["fcvt.wu.q"] = "R"
	isa["fmt"]["fdiv.q"] = "R"
	isa["fmt"]["feq.q"] = "R"
	isa["fmt"]["fle.q"] = "R"
	isa["fmt"]["flq"] = "I"
	isa["fmt"]["flt.q"] = "R"
	isa["fmt"]["fmadd.q"] = "R4"
	isa["fmt"]["fmax.q"] = "R"
	isa["fmt"]["fmin.q"] = "R"
	isa["fmt"]["fmsub.q"] = "R4"
	isa["fmt"]["fmul.q"] = "R"
	isa["fmt"]["fmv.q.x"] = "R"
	isa["fmt"]["fmv.x.q"] = "R"
	isa["fmt"]["fnmadd.q"] = "R4"
	isa["fmt"]["fnmsub.q"] = "R4"
	isa["fmt"]["fsgnj.q"] = "R"
	isa["fmt"]["fsgnjn.q"] = "R"
	isa["fmt"]["fsgnjx.q"] = "R"
	isa["fmt"]["fsq"] = "S"
	isa["fmt"]["fsqrt.q"] = "R"
	isa["fmt"]["fsub.q"] = "R"
	isa["fp_fmt"]["fadd.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fclass.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.d.q"] = FP_FMT["D"]
	isa["fp_fmt"]["fcvt.l.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.lu.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.d"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.l"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.lu"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.s"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.t"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.tu"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.w"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.q.wu"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.s.q"] = FP_FMT["S"]
	isa["fp_fmt"]["fcvt.t.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.tu.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.w.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fcvt.wu.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fdiv.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["feq.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fle.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["flt.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmadd.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmax.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmin.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmsub.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmul.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmv.q.x"] = FP_FMT["Q"]
	isa["fp_fmt"]["fmv.x.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fnmadd.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fnmsub.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fsgnj.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fsgnjn.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fsgnjx.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fsqrt.q"] = FP_FMT["Q"]
	isa["fp_fmt"]["fsub.q"] = FP_FMT["Q"]
	isa["funct3"]["fclass.q"] = "001"
	isa["funct3"]["feq.q"] = "010"
	isa["funct3"]["fle.q"] = "000"
	isa["funct3"]["flq"] = FP_WIDTH["Q"]
	isa["funct3"]["flt.q"] = "001"
	isa["funct3"]["fmax.q"] = "001"
	isa["funct3"]["fmin.q"] = "000"
	isa["funct3"]["fmv.q.x"] = "000"
	isa["funct3"]["fmv.x.q"] = "000"
	isa["funct3"]["fsgnj.q"] = "000"
	isa["funct3"]["fsgnjn.q"] = "001"
	isa["funct3"]["fsgnjx.q"] = "010"
	isa["funct3"]["fsq"] = FP_WIDTH["Q"]
	isa["funct5"]["fadd.q"] = "00000"
	isa["funct5"]["fclass.q"] = "11100"
	isa["funct5"]["fcvt.d.q"] = "01000"
	isa["funct5"]["fcvt.l.q"] = "11000"
	isa["funct5"]["fcvt.lu.q"] = "11000"
	isa["funct5"]["fcvt.q.d"] = "01000"
	isa["funct5"]["fcvt.q.l"] = "11010"
	isa["funct5"]["fcvt.q.lu"] = "11010"
	isa["funct5"]["fcvt.q.s"] = "01000"
	isa["funct5"]["fcvt.q.t"] = "11010"
	isa["funct5"]["fcvt.q.tu"] = "11010"
	isa["funct5"]["fcvt.q.w"] = "11010"
	isa["funct5"]["fcvt.q.wu"] = "11010"
	isa["funct5"]["fcvt.s.q"] = "01000"
	isa["funct5"]["fcvt.t.q"] = "11000"
	isa["funct5"]["fcvt.tu.q"] = "11000"
	isa["funct5"]["fcvt.w.q"] = "11000"
	isa["funct5"]["fcvt.wu.q"] = "11000"
	isa["funct5"]["fdiv.q"] = "00011"
	isa["funct5"]["feq.q"] = "10100"
	isa["funct5"]["fle.q"] = "10100"
	isa["funct5"]["flt.q"] = "10100"
	isa["funct5"]["fmax.q"] = "00101"
	isa["funct5"]["fmin.q"] = "00101"
	isa["funct5"]["fmul.q"] = "00010"
	isa["funct5"]["fmv.q.x"] = "11110"
	isa["funct5"]["fmv.x.q"] = "11100"
	isa["funct5"]["fsgnj.q"] = "00100"
	isa["funct5"]["fsgnjn.q"] = "00100"
	isa["funct5"]["fsgnjx.q"] = "00100"
	isa["funct5"]["fsqrt.q"] = "01011"
	isa["funct5"]["fsub.q"] = "00001"
	isa["isa"]["fadd.q"] = "RV32Q"
	isa["isa"]["fclass.q"] = "RV32Q"
	isa["isa"]["fcvt.d.q"] = "RV32Q"
	isa["isa"]["fcvt.l.q"] = "RV64Q"
	isa["isa"]["fcvt.lu.q"] = "RV64Q"
	isa["isa"]["fcvt.q.d"] = "RV32Q"
	isa["isa"]["fcvt.q.l"] = "RV64Q"
	isa["isa"]["fcvt.q.lu"] = "RV64Q"
	isa["isa"]["fcvt.q.s"] = "RV32Q"
	isa["isa"]["fcvt.q.t"] = "RV128Q"
	isa["isa"]["fcvt.q.tu"] = "RV128Q"
	isa["isa"]["fcvt.q.w"] = "RV32Q"
	isa["isa"]["fcvt.q.wu"] = "RV32Q"
	isa["isa"]["fcvt.s.q"] = "RV32Q"
	isa["isa"]["fcvt.t.q"] = "RV128Q"
	isa["isa"]["fcvt.tu.q"] = "RV128Q"
	isa["isa"]["fcvt.w.q"] = "RV32Q"
	isa["isa"]["fcvt.wu.q"] = "RV32Q"
	isa["isa"]["fdiv.q"] = "RV32Q"
	isa["isa"]["feq.q"] = "RV32Q"
	isa["isa"]["fle.q"] = "RV32Q"
	isa["isa"]["flq"] = "RV32Q"
	isa["isa"]["flt.q"] = "RV32Q"
	isa["isa"]["fmadd.q"] = "RV32Q"
	isa["isa"]["fmax.q"] = "RV32Q"
	isa["isa"]["fmin.q"] = "RV32Q"
	isa["isa"]["fmsub.q"] = "RV32Q"
	isa["isa"]["fmul.q"] = "RV32Q"
	isa["isa"]["fmv.q.x"] = "RV128Q"
	isa["isa"]["fmv.x.q"] = "RV128Q"
	isa["isa"]["fnmadd.q"] = "RV32Q"
	isa["isa"]["fnmsub.q"] = "RV32Q"
	isa["isa"]["fsgnj.q"] = "RV32Q"
	isa["isa"]["fsgnjn.q"] = "RV32Q"
	isa["isa"]["fsgnjx.q"] = "RV32Q"
	isa["isa"]["fsq"] = "RV32Q"
	isa["isa"]["fsqrt.q"] = "RV32Q"
	isa["isa"]["fsub.q"] = "RV32Q"
	isa["opcode"]["fadd.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fclass.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.d.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.l.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.lu.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.d"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.l"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.lu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.s"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.t"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.tu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.w"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.q.wu"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.s.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.t.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.tu.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.w.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fcvt.wu.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fdiv.q"] = OPCODE["OP_FP"]
	isa["opcode"]["feq.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fle.q"] = OPCODE["OP_FP"]
	isa["opcode"]["flq"] = OPCODE["LOAD_FP"]
	isa["opcode"]["flt.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fmadd.q"] = OPCODE["MADD"]
	isa["opcode"]["fmax.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fmin.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fmsub.q"] = OPCODE["MSUB"]
	isa["opcode"]["fmul.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.q.x"] = OPCODE["OP_FP"]
	isa["opcode"]["fmv.x.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fnmadd.q"] = OPCODE["NMADD"]
	isa["opcode"]["fnmsub.q"] = OPCODE["NMSUB"]
	isa["opcode"]["fsgnj.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjn.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fsgnjx.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fsq"] = OPCODE["STORE_FP"]
	isa["opcode"]["fsqrt.q"] = OPCODE["OP_FP"]
	isa["opcode"]["fsub.q"] = OPCODE["OP_FP"]
	isa["rs2"]["fclass.q"] = "00000"
	isa["rs2"]["fcvt.d.q"] = "000" FP_FMT["Q"]
	isa["rs2"]["fcvt.l.q"] = "00010"
	isa["rs2"]["fcvt.lu.q"] = "00011"
	isa["rs2"]["fcvt.q.d"] = "000" FP_FMT["D"]
	isa["rs2"]["fcvt.q.l"] = "00010"
	isa["rs2"]["fcvt.q.lu"] = "00011"
	isa["rs2"]["fcvt.q.s"] = "000" FP_FMT["S"]
	isa["rs2"]["fcvt.q.t"] = "00100"
	isa["rs2"]["fcvt.q.tu"] = "00101"
	isa["rs2"]["fcvt.q.w"] = "00000"
	isa["rs2"]["fcvt.q.wu"] = "00001"
	isa["rs2"]["fcvt.s.q"] = "000" FP_FMT["Q"]
	isa["rs2"]["fcvt.t.q"] = "00100"
	isa["rs2"]["fcvt.tu.q"] = "00101"
	isa["rs2"]["fcvt.w.q"] = "00000"
	isa["rs2"]["fcvt.wu.q"] = "00001"
	isa["rs2"]["fmv.q.x"] = "00000"
	isa["rs2"]["fmv.x.q"] = "00000"
	isa["rs2"]["fsqrt.q"] = "00000"




	# :%!tr -d '{:,}' | grep . 
	# :%s/'/"/g
	# :%!awk '{ n=$1; for(i=2; i<=NF;i+=2) printf "isa[_\%s_][_\%s_] = \%s\n", $(i), n, $(i+1) }'
	# :%s/_/"/g

	CSR["cycle"] = 0xc00
	CSR["cycleh"] = 0xc80
	CSR["dcsr"] = 0x7b0
	CSR["dpc"] = 0x7b1
	CSR["dscratch0"] = 0x7b2
	CSR["dscratch1"] = 0x7b3
	CSR["fcsr"] = 0x003
	CSR["fflags"] = 0x001
	CSR["frm"] = 0x002
	CSR["hcounteren"] = 0x606
	CSR["hedeleg"] = 0x602
	CSR["hgatp"] = 0x680
	CSR["hgeie"] = 0x607
	CSR["hgeip"] = 0xe07
	CSR["hideleg"] = 0x603
	CSR["hie"] = 0x604
	CSR["hip"] = 0x644
	CSR["hpmcounter3"] = 0xc03
	CSR["hpmcounter4"] = 0xc04
	CSR["hpmcounter5"] = 0xc05
	CSR["hpmcounter6"] = 0xc06
	CSR["hpmcounter7"] = 0xc07
	CSR["hpmcounter8"] = 0xc08
	CSR["hpmcounter9"] = 0xc09
	CSR["hpmcounter10"] = 0xc0a
	CSR["hpmcounter11"] = 0xc0b
	CSR["hpmcounter12"] = 0xc0c
	CSR["hpmcounter13"] = 0xc0d
	CSR["hpmcounter14"] = 0xc0e
	CSR["hpmcounter15"] = 0xc0f
	CSR["hpmcounter16"] = 0xc10
	CSR["hpmcounter17"] = 0xc11
	CSR["hpmcounter18"] = 0xc12
	CSR["hpmcounter19"] = 0xc13
	CSR["hpmcounter20"] = 0xc14
	CSR["hpmcounter21"] = 0xc15
	CSR["hpmcounter22"] = 0xc16
	CSR["hpmcounter23"] = 0xc17
	CSR["hpmcounter24"] = 0xc18
	CSR["hpmcounter25"] = 0xc19
	CSR["hpmcounter26"] = 0xc1a
	CSR["hpmcounter27"] = 0xc1b
	CSR["hpmcounter28"] = 0xc1c
	CSR["hpmcounter29"] = 0xc1d
	CSR["hpmcounter30"] = 0xc1e
	CSR["hpmcounter31"] = 0xc1f
	CSR["hpmcounter3h"] = 0xc83
	CSR["hpmcounter4h"] = 0xc84
	CSR["hpmcounter5h"] = 0xc85
	CSR["hpmcounter6h"] = 0xc86
	CSR["hpmcounter7h"] = 0xc87
	CSR["hpmcounter8h"] = 0xc88
	CSR["hpmcounter9h"] = 0xc89
	CSR["hpmcounter10h"] = 0xc8a
	CSR["hpmcounter11h"] = 0xc8b
	CSR["hpmcounter12h"] = 0xc8c
	CSR["hpmcounter13h"] = 0xc8d
	CSR["hpmcounter14h"] = 0xc8e
	CSR["hpmcounter15h"] = 0xc8f
	CSR["hpmcounter16h"] = 0xc90
	CSR["hpmcounter17h"] = 0xc91
	CSR["hpmcounter18h"] = 0xc92
	CSR["hpmcounter19h"] = 0xc93
	CSR["hpmcounter20h"] = 0xc94
	CSR["hpmcounter21h"] = 0xc95
	CSR["hpmcounter22h"] = 0xc96
	CSR["hpmcounter23h"] = 0xc97
	CSR["hpmcounter24h"] = 0xc98
	CSR["hpmcounter25h"] = 0xc99
	CSR["hpmcounter26h"] = 0xc9a
	CSR["hpmcounter27h"] = 0xc9b
	CSR["hpmcounter28h"] = 0xc9c
	CSR["hpmcounter29h"] = 0xc9d
	CSR["hpmcounter30h"] = 0xc9e
	CSR["hpmcounter31h"] = 0xc9f
	CSR["hstatus"] = 0x600
	CSR["htimedelta"] = 0x605
	CSR["htimedeltah"] = 0x615
	CSR["htinst"] = 0x64a
	CSR["htval"] = 0x643
	CSR["instret"] = 0xc02
	CSR["instreth"] = 0xc82
	CSR["marchid"] = 0xf12
	CSR["mbase"] = 0x380
	CSR["mbound"] = 0x381
	CSR["mcause"] = 0x342
	CSR["mcounteren"] = 0x306
	CSR["mcountinhibit"] = 0x320
	CSR["mcycle"] = 0xb00
	CSR["mcycleh"] = 0xb80
	CSR["mdbase"] = 0x384
	CSR["mdbound"] = 0x385
	CSR["medeleg"] = 0x302
	CSR["mepc"] = 0x341
	CSR["mhartid"] = 0xf14
	CSR["mhpmcounter3"] = 0xb03
	CSR["mhpmcounter4"] = 0xb04
	CSR["mhpmcounter5"] = 0xb05
	CSR["mhpmcounter6"] = 0xb06
	CSR["mhpmcounter7"] = 0xb07
	CSR["mhpmcounter8"] = 0xb08
	CSR["mhpmcounter9"] = 0xb09
	CSR["mhpmcounter10"] = 0xb0a
	CSR["mhpmcounter11"] = 0xb0b
	CSR["mhpmcounter12"] = 0xb0c
	CSR["mhpmcounter13"] = 0xb0d
	CSR["mhpmcounter14"] = 0xb0e
	CSR["mhpmcounter15"] = 0xb0f
	CSR["mhpmcounter16"] = 0xb10
	CSR["mhpmcounter17"] = 0xb11
	CSR["mhpmcounter18"] = 0xb12
	CSR["mhpmcounter19"] = 0xb13
	CSR["mhpmcounter20"] = 0xb14
	CSR["mhpmcounter21"] = 0xb15
	CSR["mhpmcounter22"] = 0xb16
	CSR["mhpmcounter23"] = 0xb17
	CSR["mhpmcounter24"] = 0xb18
	CSR["mhpmcounter25"] = 0xb19
	CSR["mhpmcounter26"] = 0xb1a
	CSR["mhpmcounter27"] = 0xb1b
	CSR["mhpmcounter28"] = 0xb1c
	CSR["mhpmcounter29"] = 0xb1d
	CSR["mhpmcounter30"] = 0xb1e
	CSR["mhpmcounter31"] = 0xb1f
	CSR["mhpmcounter3h"] = 0xb83
	CSR["mhpmcounter4h"] = 0xb84
	CSR["mhpmcounter5h"] = 0xb85
	CSR["mhpmcounter6h"] = 0xb86
	CSR["mhpmcounter7h"] = 0xb87
	CSR["mhpmcounter8h"] = 0xb88
	CSR["mhpmcounter9h"] = 0xb89
	CSR["mhpmcounter10h"] = 0xb8a
	CSR["mhpmcounter11h"] = 0xb8b
	CSR["mhpmcounter12h"] = 0xb8c
	CSR["mhpmcounter13h"] = 0xb8d
	CSR["mhpmcounter14h"] = 0xb8e
	CSR["mhpmcounter15h"] = 0xb8f
	CSR["mhpmcounter16h"] = 0xb90
	CSR["mhpmcounter17h"] = 0xb91
	CSR["mhpmcounter18h"] = 0xb92
	CSR["mhpmcounter19h"] = 0xb93
	CSR["mhpmcounter20h"] = 0xb94
	CSR["mhpmcounter21h"] = 0xb95
	CSR["mhpmcounter22h"] = 0xb96
	CSR["mhpmcounter23h"] = 0xb97
	CSR["mhpmcounter24h"] = 0xb98
	CSR["mhpmcounter25h"] = 0xb99
	CSR["mhpmcounter26h"] = 0xb9a
	CSR["mhpmcounter27h"] = 0xb9b
	CSR["mhpmcounter28h"] = 0xb9c
	CSR["mhpmcounter29h"] = 0xb9d
	CSR["mhpmcounter30h"] = 0xb9e
	CSR["mhpmcounter31h"] = 0xb9f
	CSR["mhpmevent3"] = 0x323
	CSR["mhpmevent4"] = 0x324
	CSR["mhpmevent5"] = 0x325
	CSR["mhpmevent6"] = 0x326
	CSR["mhpmevent7"] = 0x327
	CSR["mhpmevent8"] = 0x328
	CSR["mhpmevent9"] = 0x329
	CSR["mhpmevent10"] = 0x32a
	CSR["mhpmevent11"] = 0x32b
	CSR["mhpmevent12"] = 0x32c
	CSR["mhpmevent13"] = 0x32d
	CSR["mhpmevent14"] = 0x32e
	CSR["mhpmevent15"] = 0x32f
	CSR["mhpmevent16"] = 0x330
	CSR["mhpmevent17"] = 0x331
	CSR["mhpmevent18"] = 0x332
	CSR["mhpmevent19"] = 0x333
	CSR["mhpmevent20"] = 0x334
	CSR["mhpmevent21"] = 0x335
	CSR["mhpmevent22"] = 0x336
	CSR["mhpmevent23"] = 0x337
	CSR["mhpmevent24"] = 0x338
	CSR["mhpmevent25"] = 0x339
	CSR["mhpmevent26"] = 0x33a
	CSR["mhpmevent27"] = 0x33b
	CSR["mhpmevent28"] = 0x33c
	CSR["mhpmevent29"] = 0x33d
	CSR["mhpmevent30"] = 0x33e
	CSR["mhpmevent31"] = 0x33f
	CSR["mibase"] = 0x382
	CSR["mibound"] = 0x383
	CSR["mideleg"] = 0x303
	CSR["mie"] = 0x304
	CSR["mimpid"] = 0xf13
	CSR["minstret"] = 0xb02
	CSR["minstreth"] = 0xb82
	CSR["mip"] = 0x344
	CSR["misa"] = 0x301
	CSR["mscratch"] = 0x340
	CSR["mstatus"] = 0x300
	CSR["mstatush"] = 0x310
	CSR["mtinst"] = 0x34a
	CSR["mtval"] = 0x343
	CSR["mtval2"] = 0x34b
	CSR["mtvec"] = 0x305
	CSR["mvendorid"] = 0xf11
	CSR["pmpaddr0"] = 0x3b0
	CSR["pmpaddr1"] = 0x3b1
	CSR["pmpaddr2"] = 0x3b2
	CSR["pmpaddr3"] = 0x3b3
	CSR["pmpaddr4"] = 0x3b4
	CSR["pmpaddr5"] = 0x3b5
	CSR["pmpaddr6"] = 0x3b6
	CSR["pmpaddr7"] = 0x3b7
	CSR["pmpaddr8"] = 0x3b8
	CSR["pmpaddr9"] = 0x3b9
	CSR["pmpaddr10"] = 0x3ba
	CSR["pmpaddr11"] = 0x3bb
	CSR["pmpaddr12"] = 0x3bc
	CSR["pmpaddr13"] = 0x3bd
	CSR["pmpaddr14"] = 0x3be
	CSR["pmpaddr15"] = 0x3bf
	CSR["pmpaddr16"] = 0x3c0
	CSR["pmpaddr17"] = 0x3c1
	CSR["pmpaddr18"] = 0x3c2
	CSR["pmpaddr19"] = 0x3c3
	CSR["pmpaddr20"] = 0x3c4
	CSR["pmpaddr21"] = 0x3c5
	CSR["pmpaddr22"] = 0x3c6
	CSR["pmpaddr23"] = 0x3c7
	CSR["pmpaddr24"] = 0x3c8
	CSR["pmpaddr25"] = 0x3c9
	CSR["pmpaddr26"] = 0x3ca
	CSR["pmpaddr27"] = 0x3cb
	CSR["pmpaddr28"] = 0x3cc
	CSR["pmpaddr29"] = 0x3cd
	CSR["pmpaddr30"] = 0x3ce
	CSR["pmpaddr31"] = 0x3cf
	CSR["pmpaddr32"] = 0x3d0
	CSR["pmpaddr33"] = 0x3d1
	CSR["pmpaddr34"] = 0x3d2
	CSR["pmpaddr35"] = 0x3d3
	CSR["pmpaddr36"] = 0x3d4
	CSR["pmpaddr37"] = 0x3d5
	CSR["pmpaddr38"] = 0x3d6
	CSR["pmpaddr39"] = 0x3d7
	CSR["pmpaddr40"] = 0x3d8
	CSR["pmpaddr41"] = 0x3d9
	CSR["pmpaddr42"] = 0x3da
	CSR["pmpaddr43"] = 0x3db
	CSR["pmpaddr44"] = 0x3dc
	CSR["pmpaddr45"] = 0x3dd
	CSR["pmpaddr46"] = 0x3de
	CSR["pmpaddr47"] = 0x3df
	CSR["pmpaddr48"] = 0x3e0
	CSR["pmpaddr49"] = 0x3e1
	CSR["pmpaddr50"] = 0x3e2
	CSR["pmpaddr51"] = 0x3e3
	CSR["pmpaddr52"] = 0x3e4
	CSR["pmpaddr53"] = 0x3e5
	CSR["pmpaddr54"] = 0x3e6
	CSR["pmpaddr55"] = 0x3e7
	CSR["pmpaddr56"] = 0x3e8
	CSR["pmpaddr57"] = 0x3e9
	CSR["pmpaddr58"] = 0x3ea
	CSR["pmpaddr59"] = 0x3eb
	CSR["pmpaddr60"] = 0x3ec
	CSR["pmpaddr61"] = 0x3ed
	CSR["pmpaddr62"] = 0x3ee
	CSR["pmpaddr63"] = 0x3ef
	CSR["pmpcfg0"] = 0x3a0
	CSR["pmpcfg1"] = 0x3a1
	CSR["pmpcfg2"] = 0x3a2
	CSR["pmpcfg3"] = 0x3a3
	CSR["pmpcfg4"] = 0x3a4
	CSR["pmpcfg5"] = 0x3a5
	CSR["pmpcfg6"] = 0x3a6
	CSR["pmpcfg7"] = 0x3a7
	CSR["pmpcfg8"] = 0x3a8
	CSR["pmpcfg9"] = 0x3a9
	CSR["pmpcfg10"] = 0x3aa
	CSR["pmpcfg11"] = 0x3ab
	CSR["pmpcfg12"] = 0x3ac
	CSR["pmpcfg13"] = 0x3ad
	CSR["pmpcfg14"] = 0x3ae
	CSR["pmpcfg15"] = 0x3af
	CSR["satp"] = 0x180
	CSR["scause"] = 0x142
	CSR["scounteren"] = 0x106
	CSR["sedeleg"] = 0x102
	CSR["sepc"] = 0x141
	CSR["sideleg"] = 0x103
	CSR["sie"] = 0x104
	CSR["sip"] = 0x144
	CSR["sscratch"] = 0x140
	CSR["sstatus"] = 0x100
	CSR["stval"] = 0x143
	CSR["stvec"] = 0x105
	CSR["tdata1"] = 0x7a1
	CSR["tdata2"] = 0x7a2
	CSR["tdata3"] = 0x7a3
	CSR["time"] = 0xc01
	CSR["timeh"] = 0xc81
	CSR["tselect"] = 0x7a0
	CSR["ucause"] = 0x042
	CSR["uepc"] = 0x041
	CSR["uie"] = 0x004
	CSR["uip"] = 0x044
	CSR["uscratch"] = 0x040
	CSR["ustatus"] = 0x000
	CSR["utval"] = 0x043
	CSR["utvec"] = 0x005
	CSR["vsatp"] = 0x280
	CSR["vscause"] = 0x242
	CSR["vsepc"] = 0x241
	CSR["vsie"] = 0x204
	CSR["vsip"] = 0x244
	CSR["vsscratch"] = 0x240
	CSR["vsstatus"] = 0x200
	CSR["vstval"] = 0x243
	CSR["vstvec"] = 0x205

	FIELD["opcode"]["pos"] = "6,7"
	FIELD["rd"]["pos"] = "11,5"
	FIELD["funct3"]["pos"] = "14,3"
	FIELD["rs1"]["pos"] = "19,5"
	FIELD["rs2"]["pos"] = "24,5"

	FIELD["r_funct5"]["pos"] = "31,5"
	FIELD["r_funct7"]["pos"] = "31,7"

	FIELD["r_aq"]["pos"] = "26,1"
	FIELD["r_rl"]["pos"] = "25,1"

	FIELD["r_fp_fmt"]["pos"] = "26,2"

	FIELD["i_imm_11_0"]["pos"] = "31,12"

	FIELD["i_shtyp_11_7"]["pos"] = "31,5"
	FIELD["i_shtyp_11_6"]["pos"] = "31,6"
	FIELD["i_shtyp_11_5"]["pos"] = "31,7"
	FIELD["i_shtyp"]["pos"] = "30,1"
	FIELD["i_shamt_6"]["pos"] = "26,1"
	FIELD["i_shamt_6_0"]["pos"] = "26,7"
	FIELD["i_shamt_5"]["pos"] = "25,1"
	FIELD["i_shamt_5_0"]["pos"] = "25,6"
	FIELD["i_shamt"]["pos"] = "24,5"

	FIELD["i_funct12"]["pos"] = "31,12"

	FIELD["i_csr"]["pos"] = "31,12"
	FIELD["i_imm_4_0"]["pos"] = "19,5"

	FIELD["i_fm"]["pos"] = "31,4"
	FIELD["i_pred"]["pos"] = "27,4"
	FIELD["i_succ"]["pos"] = "23,4"

	FIELD["s_imm_4_0"]["pos"] = "11,5"
	FIELD["s_imm_11_5"]["pos"] = "31,7"

	FIELD["b_imm_4_1"]["pos"] = "11,4"
	FIELD["b_imm_11"]["pos"] = "7,1"
	FIELD["b_imm_10_5"]["pos"] = "30,6"
	FIELD["b_imm_12"]["pos"] = "31,1"

	FIELD["u_imm_31_12"]["pos"] = "31,20"

	FIELD["j_imm_20"]["pos"] = "31,1"
	FIELD["j_imm_10_1"]["pos"] = "30,10"
	FIELD["j_imm_11"]["pos"] = "20,1"
	FIELD["j_imm_19_12"]["pos"] = "19,8"

	FIELD["c_opcode"]["pos"] = "1,2"
	FIELD["c_funct6"]["pos"] = "15,6"
	FIELD["c_funct4"]["pos"] = "15,4"
	FIELD["c_funct3"]["pos"] = "15,3"
	FIELD["c_funct2"]["pos"] = "6,2"
	FIELD["c_funct2_cb"]["pos"] = "11,2"

	FIELD["c_rd"]["pos"] = "11,5"
	FIELD["c_rs1"]["pos"] = "11,5"
	FIELD["c_rd_rs1"]["pos"] = "11,5"
	FIELD["c_rs2"]["pos"] = "6,5"
	FIELD["c_rd_prime"]["pos"] = "4,3"
	FIELD["c_rs2_prime"]["pos"] = "4,3"
	FIELD["c_rs1_prime"]["pos"] = "9,3"
	FIELD["c_rs_rs1_prime"]["pos"] = "9,3"

	FIELD["c_imm_ci_0"]["pos"] = "12,1"
	FIELD["c_imm_ci_1"]["pos"] = "6,5"
	FIELD["c_imm_css"]["pos"] = "12,6"
	FIELD["c_imm_ciw"]["pos"] = "12,8"
	FIELD["c_imm_cl_0"]["pos"] = "12,3"
	FIELD["c_imm_cl_1"]["pos"] = "6,2"
	FIELD["c_imm_cs_0"]["pos"] = "12,3"
	FIELD["c_imm_cs_1"]["pos"] = "6,2"
	FIELD["c_imm_cb_0"]["pos"] = "12,3"
	FIELD["c_imm_cb_1"]["pos"] = "6,5"
	FIELD["c_imm_cj"]["pos"] = "12,11"
	FIELD["c_shamt_0"]["pos"] = "12,1"
	FIELD["c_shamt_1"]["pos"] = "6,5"

	# RV32I 
	ISA_OP[isa["funct7"]["add"] isa["funct3"]["add"]] = "add"
	ISA_OP[isa["funct7"]["sub"] isa["funct3"]["sub"]] = "sub"
	ISA_OP[isa["funct7"]["sll"] isa["funct3"]["sll"]] = "sll"
	ISA_OP[isa["funct7"]["slt"] isa["funct3"]["slt"]] = "slt"
	ISA_OP[isa["funct7"]["sltu"] isa["funct3"]["sltu"]] = "sltu"
	ISA_OP[isa["funct7"]["xor"] isa["funct3"]["xor"]] = "xor"
	ISA_OP[isa["funct7"]["srl"] isa["funct3"]["srl"]] = "srl"
	ISA_OP[isa["funct7"]["sra"] isa["funct3"]["sra"]] = "sra"
	ISA_OP[isa["funct7"]["or"] isa["funct3"]["or"]] = "or"
	ISA_OP[isa["funct7"]["and"] isa["funct3"]["and"]] = "and"
	# RV32M
	ISA_OP[isa["funct7"]["mul"] isa["funct3"]["mul"]] = "mul"
	ISA_OP[isa["funct7"]["mulh"] isa["funct3"]["mulh"]] = "mulh"
	ISA_OP[isa["funct7"]["mulhsu"] isa["funct3"]["mulhsu"]] = "mulhsu"
	ISA_OP[isa["funct7"]["mulhu"] isa["funct3"]["mulhu"]] = "mulhu"
	ISA_OP[isa["funct7"]["div"] isa["funct3"]["div"]] = "div"
	ISA_OP[isa["funct7"]["divu"] isa["funct3"]["divu"]] = "divu"
	ISA_OP[isa["funct7"]["rem"] isa["funct3"]["rem"]] = "rem"
	ISA_OP[isa["funct7"]["remu"] isa["funct3"]["remu"]] = "remu"

	# RV64I
	ISA_OP_32[isa["funct7"]["addw"] isa["funct3"]["addw"]] = "addw"
	ISA_OP_32[isa["funct7"]["subw"] isa["funct3"]["subw"]] = "subw"
	ISA_OP_32[isa["funct7"]["sllw"] isa["funct3"]["sllw"]] = "sllw"
	ISA_OP_32[isa["funct7"]["srlw"] isa["funct3"]["srlw"]] = "srlw"
	ISA_OP_32[isa["funct7"]["sraw"] isa["funct3"]["sraw"]] = "sraw"
	# RV64M
	ISA_OP_32[isa["funct7"]["mulw"] isa["funct3"]["mulw"]] = "mulw"
	ISA_OP_32[isa["funct7"]["divw"] isa["funct3"]["divw"]] = "divw"
	ISA_OP_32[isa["funct7"]["divuw"] isa["funct3"]["divuw"]] = "divuw"
	ISA_OP_32[isa["funct7"]["remw"] isa["funct3"]["remw"]] = "remw"
	ISA_OP_32[isa["funct7"]["remuw"] isa["funct3"]["remuw"]] = "remuw"

	# RV128I
	ISA_OP_64[isa["funct7"]["addd"] isa["funct3"]["addd"]] = "addd"
	ISA_OP_64[isa["funct7"]["subd"] isa["funct3"]["subd"]] = "subd"
	ISA_OP_64[isa["funct7"]["slld"] isa["funct3"]["slld"]] = "slld"
	ISA_OP_64[isa["funct7"]["srld"] isa["funct3"]["srld"]] = "srld"
	ISA_OP_64[isa["funct7"]["srad"] isa["funct3"]["srad"]] = "srad"
	# RV128M
	ISA_OP_64[isa["funct7"]["muld"] isa["funct3"]["muld"]] = "muld"
	ISA_OP_64[isa["funct7"]["divd"] isa["funct3"]["divd"]] = "divd"
	ISA_OP_64[isa["funct7"]["divud"] isa["funct3"]["divud"]] = "divud"
	ISA_OP_64[isa["funct7"]["remd"] isa["funct3"]["remd"]] = "remd"
	ISA_OP_64[isa["funct7"]["remud"] isa["funct3"]["remud"]] = "remud"

	ISA_LOAD[isa["funct3"]["lb"]] = "lb"
	ISA_LOAD[isa["funct3"]["lh"]] = "lh"
	ISA_LOAD[isa["funct3"]["lw"]] = "lw"
	ISA_LOAD[isa["funct3"]["ld"]] = "ld"
	ISA_LOAD[isa["funct3"]["lbu"]] = "lbu"
	ISA_LOAD[isa["funct3"]["lhu"]] = "lhu"
	ISA_LOAD[isa["funct3"]["lwu"]] = "lwu"
	ISA_LOAD[isa["funct3"]["ldu"]] = "ldu"

	ISA_STORE[isa["funct3"]["sb"]] = "sb"
	ISA_STORE[isa["funct3"]["sh"]] = "sh"
	ISA_STORE[isa["funct3"]["sw"]] = "sw"
	ISA_STORE[isa["funct3"]["sd"]] = "sd"
	ISA_STORE[isa["funct3"]["sq"]] = "sq"

	ISA_OP_IMM[isa["funct3"]["addi"]] = "addi"
	ISA_OP_IMM[isa["funct3"]["slti"]] = "slti"
	ISA_OP_IMM[isa["funct3"]["sltiu"]] = "sltiu"
	ISA_OP_IMM[isa["funct3"]["xori"]] = "xori"
	ISA_OP_IMM[isa["funct3"]["ori"]] = "ori"
	ISA_OP_IMM[isa["funct3"]["andi"]] = "andi"


	
}
{
	input=$0
}
END {
	print "end", input

	# is it 0xCAFEBABE
	try = strtonum(input)
	if (sprintf( "0x%04x", try) == input || sprintf( "0x%04X", try) == input) {
		num_ok=1
	}
	if (sprintf( "0x%08x", try) == input || sprintf( "0x%08X", try) == input) {
		num_ok=1
	}
	if (sprintf( "0x%016x", try) == input || sprintf( "0x%016X", try) == input) {
		num_ok=1
	}
	# is it CAFEBABE
	try = strtonum("0x" input)
	if (sprintf( "%04x", try ) == input || sprintf( "%04X", try) == input) {
		num_ok=1
	}
	if (sprintf( "%08x", try ) == input || sprintf( "%08X", try) == input) {
		num_ok=1
	}
	if (sprintf( "%016x", try ) == input || sprintf( "%016X", try) == input) {
		num_ok=1
	}
	if (num_ok && valid_hex_len[length(input)]) {
		print "decode", try
		decode(n2b(try,32))
	} else {
		print "encode", input
		encode(tolower(input))
	}
}
function str2str(str) {
	op[0] = "["; op[1] = "{"; op[2] = "<";
        cl[0] = "]"; cl[1] = "}"; cl[2] = ">";
        sep[0] = ","; sep[1] = ","; sep[2] = "_"; sep[3] = ".";

	len = length(str)
        p = 0
        lvl = 0
	res = ""
        while (p++ < len) {
                c= substr(str, p, 1)
                if (c == "[") {
                        res = res op[lvl]
                        lvl++
                } else if (c == "]") {
                        lvl--
                        res = res cl[lvl]
                } else if (c == ",") {
                        res = res sep[lvl]
                } else {
                        res = res c
                }
        }
	return res
}
function conv_num(num) {
	prefix = tolower(substr(num, 1,2))
	val = 0
	if (prefix == "0x") 
		val = strtonum(num)
	else if (prefix == "0b") {
		num = substr(num, 3)
		len = length(num)
		for(i = 1; i<= len; i++) {
			if (substr(num, i, 1) == "1") val = or(val, lshift(1, len-i))
		}
	} else {
		val = strtonum(num)
	}
	return val
}
function n2b(val, width) {
	if (!width) width=16
	str = ""
	for(i = 0; i < width; i++) {
		if (and(val, lshift(1, i))) {
			str= "1"str; 
		} else {
			str = "0"str
		}
	}
	return str
}
function b2n(b, 	hex) {
	hex=0
	binlen = length(b)
        for(i = 0 ;i < binlen; i++) {
                if (substr(b, binlen-i, 1) == "1") hex = or(hex, lshift(1, i))
        }
	return hex
}
function encreg(reg, flt) {
	oreg = reg
	if (substr(reg, 1, 1) != "x") {
	 	reg = REGISTER[reg]
		if (!reg || length(reg) == 0) {
			return "00000"
		}
	}
	if (reg in X_REGISTER) {
		id = substr(reg, 2) 
		resp = n2b(id, 5)
	} else {
		print "bad reg", oreg, id
		exit
	}
	return resp
}
function encimm(inp, len) {
	inp = conv_num(inp)
	hex = sprintf("%08x", inp)
	str = ""
	for(i = 1; i < length(hex)+1; i++) {
		str = str bits[substr(hex, i, 1)]
	}
	return substr(str, length(str)-len+1)
}
function encmem(data, 	bits) {
	bits = ""
	access[0] = "i"
	access[1] = "o"
	access[2] = "r"
	access[3] = "w"
	one_count = 0
	for(i = 0; i<4; i++) {
		if (index(data, access[i])) {
			bits = bits "1"
			one_count++
		} else {
			bits = bits "0"
		}
	}
	if (one_count != length(data) || bits == "0000") {
		print "Invalid IO/Mem field", data, "expected some combination of iorw"
		exit
	}
	return bits
}
function encRegPrime(reg, floatReg) {
	if (reg == "") {
		return "000"
	}

	encoded = encreg(reg, floatReg)
	if (substr(encoded, 1, 2) != "01") {
		regFile = floatReg ? "f" : "x"
		printf "Invalid register \"%s\", rd' field expects compressable register from %s8 to %s15\n", reg, regFile, regFile
		exit
	}
	return substr(encoded, 3)
}
function minImmFromBits(ib) {
	split(ib, aa, /[- ,]/)
	minv = 10000
	for (i in aa) {
		if (aa[i] < minv) minv = aa[i]
	}
	return lshift(1, minv)
}
function encImmBits(imm, bits) {
        print "encImmBits:"
        print "  immediate = ", imm
        printf "  bits = --%s--\n", bits
        len = 18
        binFull = encimm(imm, len)
        print " binFull = ", binFull
        bin = ""
        print "bits", bits
	split(bits, a0, " ")
	for(d0 in a0) {
		split(a0[d0], a1, ",")
		for(d1 in a1) {
			n = split(a1[d1], a2, "-")
			if (n == 1) {
				pos = len -  a1[d1]
				print "add pos", pos
				print "add", substr(binFull, pos, 1), "since abits[0] =", a1[d1]
				bin = bin substr(binFull, pos, 1)
			} else {
				start = len - a2[1]
				count = a2[1] - a2[2] + 1
				print "add", substr(binFull, start, count), "since abits[1] =", a2[1], "and abits[2] =", a2[2]
				print "pos", start
				print "len", count
				bin = bin substr(binFull, start, count)
			}
		}
	}
	print "computed bin", bin
        return bin
}

function encImmBits2(imm, bits) {
	len = 18
	binFull = encimm(imm, len)
	bin = ""

	if (substr(bits, 1,1) == "{") {
		bits = substr(bits, 2, length(bits)-2)
	}
	if (substr(bits, 1,1) == "<") {
		bits = substr(bits, 2, length(bits)-2)
	}
	n = split(bits, abits, ".")
	if (n == 1) {
		bin = bin substr(binFull, len - abits[1], 1)
	} else {
		bin = bin substr(binFull, len - abits[1], len - abits[2])
	}
	return bin
}
function encCSR(csr) {
	csrval = CSR[csr]
	if (!csrval) {
		csrval = conv_num(csr)
		if (csrval == 0 && csr != 0) {
			print "Invalid or unknown CSR name:", csr
			exit
		}
	}
	return encImm(csrVal, 12)
}

function encodeOP() { 
	print "in encodeOP" 
	dest = tokens[2]
	src1 = tokens[3]
	src2 = tokens[4]
	rd = encreg(dest)
	rs1 = encreg(src1)
	rs2 = encreg(src2)
	bin = isa["funct7"][mne] rs2 rs1 isa["funct3"][mne] rd opcode
	print bin
	hex = 0
	printf "hex %08x\n", b2n(bin)
}
function encodeOP_FP() { print "in encodeOP_FP" }
function encodeJALR() { 
	print "in encodeJALR" 
	dest = tokens[2]
	base = tokens[3]
	offset = tokens[4]
	rd = encreg(dest)
	rs1 = encreg(base)
	print "rs1", rs1
  #i_imm_11_0: { pos: [31, 12], name: 'imm[11:0]' },
	imm = encimm(offset, 12)
	bin = imm rs1 isa["funct3"][mne] rd opcode
	print "bin", bin
	printf "hex %08x\n", b2n(bin)
	
}
function encodeLOAD() { 
	print "in encodeLOAD" 
	dest = tokens[2]
	offset = tokens[3]
	base = tokens[4]
	rd = encreg(dest)
	rs1 = encreg(base)
	imm = encimm(offset, 12)
	bin = imm rs1 isa["funct3"][mne] rd opcode
	print "bin", bin                                                                                                                      
        printf "hex %08x\n", b2n(bin)                                                                                                         
}
function encodeOP_IMM() { 
	print "in encodeOP_IMM" 
	dest = tokens[2]
	src = tokens[3]
	immediate = tokens[4]
	rd = encreg(dest)
	rs1 = encreg(src)
	imm =  "000000000000"
	if ( mne ~ /^s[lr][la]i/ ) {
		print "shift instruction", mne
		shamtwidth = 5

		if (immediate < 0 || immediate >= lshift(1, shamtwidth)) {
			print "error, invalid shamt field (out of range):", immediate
			exit
		}
		imm_11_7 = "0" isa["shtyp"][mne] "000"
		imm_6_0 = encimm(immediate, 7)
		
		imm = imm_11_7 imm_6_0
	} else {
		imm = encimm(immediate, 12)
	}
	bin = imm rs1 isa["funct3"][mne] rd opcode
        print "bin", bin
        printf "hex %08x\n", b2n(bin)
	
}
function encodeMISC_MEM() { 
	print "in encodeMISC_MEM" 
	rs1 = "00000"
	rd =  "00000"
	imm = "000000000000"
	loadExt = (mne == "lq")
	if (loadExt) {
		dest = tokens[2]
		offset = tokens[3]
		base = tokens[4]

		rd = encreg(dest)
		imm = encimm(offset, 12)
		rs1 = encreg(base)
	} else if (mne == "fence") {
		predecessor = tokens[2]
		successor = tokens[3]
		pred = encmem(predecessor)
		succ = encmem(successor)
		imm = "0000" pred succ
	}
	bin = imm rs1 isa["funct3"][mne] rd opcode
        print "bin", bin
        printf "hex %08x\n", b2n(bin)
}

function encodeSYSTEM() { 
	print "in encodeSYSTEM" 
	if (isa["isa"][mne] == "Zicsr") {
		dest = tokens[2]
		csr = tokens[3]
		src = tokens[4]
		rd = encreg(dest)
		imm = encCSR(csr)

		rs1 = (substr(isa["funct3"][mne],1,1) == "0") ? encreg(src) : encimm(src, 5)
	} else {
		rs1 = "00000"
		rd = "00000"
		imm = isa["funct12"][mne]
	}
	bin = imm rs1 isa["funct3"][mne] rd opcode
        print "bin", bin
        printf "hex %08x\n", b2n(bin)
}
function encodeSTORE() { 
	print "in encodeSTORE" 
	src = tokens[2]
	offset = tokens[3]
	base = tokens[4]
	len_11_5 = 7
	len_4_0 = 5
	floatInst = (isa["opcode"][mne] == STORE_FP)
	rs2 = encreg(src)
	rs1 = encreg(base)
	imm = encimm(offset, len_4_0 + len_11_5)
	imm_11_5 = substr(imm, 0, len_11_5)
	imm_4_0 = substr(imm, len_11_5+1, len_11_5+len_4_0)
	bin = imm_11_5 rs2 rs1 isa["funct3"][mne] imm_4_0 opcode
	print "bin", bin
	printf "hex %08x\n", b2n(bin)
}
function encodeBRANCH() { 
	print "in encodeBRANCH" 
	src1 = tokens[2]
	src2 = tokens[3]
	offset = tokens[4]
	len_12 = 1
	len_11 = 1
	len_10_5 = 6
	len_4_1 = 4
	
	rs1 = encreg(src1)
	rs2 = encreg(src2)
	imm = encimm(offset, len_12 + len_11 + len_10_5 + len_4_1 + 1)
	imm_12 = substr(imm, 1, len_12)
	imm_11 = substr(imm, len_12+1, len_11)
	imm_10_5 = substr(imm, len_12 + len_11 + 1, len_10_5)
	imm_4_1 = substr(imm, len_12 + len_11 + len_10_5 + 1, len_4_1)

	bin = imm_12 imm_10_5 rs2 rs1 isa["funct3"][mne] imm_4_1 imm_11 opcode
	print "bin", bin
	printf "hex %08x\n", b2n(bin)
}
function encodeUType() { 
	print "in encodeUType" 
	dest = tokens[2]
	immediate = tokens[3]
	rd = encreg(dest)
	imm_31_12 = encimm(immediate, 20)
	bin = imm_31_12 rd opcode
	print "bin", bin
	printf "hex %08x\n", b2n(bin)
}
function encodeJAL() { 
	print "in encodeJAL"
	dest = tokens[2]
	offset = tokens[3]
	
	len_20 = 1
	len_10_1 = 10
	len_11 = 1
	len_19_12 = 8

	rd = encreg(dest)
	imm = encimm(offset, len_20 + len_19_12 + len_11 + len_10_1 + 1)
	imm_20 = substr(imm, 1, len_20)
	imm_19_12 = substr(imm, len_20+1, len_19_12)
	imm_11 = substr(imm, len_20+len_19_12+1, len_11)
	imm_10_1 = substr(imm, len_20+len_19_12+len_11+1, len_10_1)

	bin = imm_20 imm_10_1 imm_11 imm_19_12 rd opcode
        print "bin", bin
        printf "hex %08x\n", b2n(bin)
}
function encodeR4() { 
	print "in encodeR4" 
	
}
function encodeCR() { 
	print "in encodeCR" 
	src1 = tokens[2]
	src2 = tokens[3]
	print "- src1", src1
	print "- src2", src2
	rdRs1Val = isa["rdRs1Val"][mne]
	print "- rdRs1Val", rdRs1Val
	if (rdRs1Val) {
		rdRs1 = encimm(rdRs1Val, 5)
	} else {
		rdRs1 = src1 ? encreg(src1) : "01000"
	}
	print "- rdRs1", rdRs1

	rs2Val = isa["rs2Val"][mne]
	print "- rs2Val", rs2Val
	if (rs2Val) rs2 = encimm(rs2Val, 5)
	else rs2 = src2 ? encreg(src2) : "01000"
	print "- rs2", rs2
	rdRs1Excl = isa["rdRs1Excl"][mne]
	if (rdRs1Excl) {
		val = b2n(rdRs1)
		split(substr(rdRs1Excl,2, length(rdRs1Excl)-2), arrExcl, ",")
		for(excl in arrExcl) {
			print "---check for excl",excl,"with", val
			if (val == excl) {
				print "Illegal value",src1,"in rd/rs1 field for instruction",mne
				exit
			}
		}
	}
	rs2Excl = isa["rs2Excl"][mne]
	if (rs2Excl) {
		val = b2n(rs2)
		split(substr(rs2Excl,2, length(rs2Excl)-2), arrExcl, ",")
		for(excl in arrExcl) {
			print "---check for excl",excl,"with", val
			if (val == excl) {
				print "Illegal value",src2,"in rs2 field for instruction",mne
				exit
			}
		}
	}

	bin = isa["funct4"][mne] rdRs1 rs2 opcode
	print "bin", bin
	printf "hex %04x\n", b2n(bin)
}
function encodeCI() { 
	print "in encodeCI" 
	skipRdRs1 = (isa["rdRs1Val"][mne])
	src1 = tokens[2]
	immediate = tokens[skipRdRs1 ? 2 : 3]
	floatRdRs1 = ( mne ~ /^c\.f/ )
	
	rdRs1 = skipRdRs1 ? encimm(isa["rdRs1Val"][mne], 5) : (src1) ? encreg(src1, floatRdRs1) : "01000"
	immVal = isa["immVal"][mne] ? strtonum(isa["immVal"][mne]) : immediate # FIXME number

	if (isa["rdRs1Excl"][mne]) {
		val = b2n(rdRs1)
		split(substr(rdRs1Excl,2, length(rdRs1Excl)-2), arrExcl, ",")
		for(excl in arrExcl) {
			                        if (val == excl) {
                                print "Illegal value",src2,"in rs2 field for instruction",mne
                                exit
                        }
                }
        }
	if (isa["nzimm"][mne] && ( immVal == 0 || !immVal)) {
		if (immediate == "") {
			immVal = minImmFromBits(isa["immBits"][mne])
		} else {
			print "Invalid immediate", immediate, ",", mne, "instruction expects non-zero value"
			exit
		}
	}
	if (isa["uimm"][mne] && immVal < 0) {
		print "Invalid immediate", immediate, ",", mne, "instruction expects non-negative value"
		exit
	}
	immBits = isa["immBits"][mne]
	split(immBits, immBitsArr, " ")
	imm0 = encImmBits(immVal, immBitsArr[1])
	imm1 = encImmBits(immVal, immBitsArr[2])

        bin = isa["funct3"][mne] imm0 rdRs1 imm1 opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)

}
function encodeCSS() { 
	print "in encodeCSS" 
	src = tokens[2]
	offset = tokens[3]
	floatRs2 = ( mne ~ /^c\.f/ )

	print "input offset", offset
	rs2 = encreg(src, floatRs2)
	immVal = conv_num(offset)
	print "compted immVal", immVal

	if (isa["uimm"][mne] && immVal < 0) {
		print "Invalid immediate", offset, ", this", mne, "instruction expects non-negative value"
		exit
	}

	immBits = isa["immBits"][mne]
	print "freaking immBits", immBits
	imm = encImmBits(immVal, immBits)

	bin = isa["funct3"][mne] imm rs2 opcode
	print "bin", bin
	printf "hex %04x\n", b2n(bin)
}
function encodeCIW() { 
	print "in encodeCIW" 
	dest = tokens[2]
	immediate = tokens[3]
	rdPrime = encRegPrime(dest)
	immVal = conv_num(immediate)
	
	immBits = isa["immBits"][mne]
	if (isa["nzimm"][mne] && (immVal == 0 || immediate == "")) {
		if (immediate == "") {
			immVal = minImmFromBits(immBits)
		} else {
			print "Invalid immediate", immediate, ", this", mne, "instruction expects non-zero value"
			exit
		}
	}

	if (isa["uimm"][mne] && immVal < 0 ) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
		exit
	}

	imm = encImmBits(immVal, immBits)

	bin = isa["funct3"][mne] imm rdPrime opcode
	print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCL() { 
	print "in encodeCL" 
	dest = tokens[2]
	offset = tokens[3]
	base = tokens[4]
	
	floatRd = ( mne ~ /^c\.f/ )
	
	rdPrime = encRegPrime(dest, floatRd)
	rs1Prime = encRegPrime(base)
	
	immVal = conv_num(offset)

        if (isa["uimm"][mne] && immVal < 0 ) {
		print "Invalid immediate", offset, ", this", mne, "instruction expects non-negative value"
                exit
        }

	immBits = isa["immBits"][mne]
	split(immBits, abits, " ")
	imm0 = encImmBits(immVal, abits[1])
	imm1 = encImmBits(immVal, abits[2])

	bin = isa["funct3"][mne] imm0 rs1Prime imm1 rdPrime opcode
	print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCS() { 
	print "in encodeCS" 
	src = tokens[2]
        immediate = tokens[3]
        base = tokens[4]

	floatRs2 = ( mne ~ /^c\.f/ )
	rs2Prime = encRegPrime(src, floatRs2)
	rs1Prime = encRegPrime(base)
	immVal = conv_num(immediate)

        if (isa["uimm"][mne] && immVal < 0 ) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
                exit
        }

	immBits = isa["immBits"][mne]
	split(immBits, abits, " ")
	imm0 = encImmBits(immVal, abits[1])
	imm1 = encImmBits(immVal, abits[2])

	bin = isa["funct3"][mne] imm0 rs1Prime imm1 rs2Prime opcode
	print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCA() { 
	print "in encodeCA" 
	destSrc1 = tokens[2]
	src2 = tokens[3]

	rdRs1Prime = encRegPrime(destSrc1)
	rs2Prime = encRegPrime(src2)

	bin = isa["funct6"][mne] rdRs1Prime isa["funct2"][mne] rs2Prime opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCB() { 
	print "in encodeCB" 
	destSrc1 = tokens[2]
	immediate = tokens[3]
	rdRs1Prime = encRegPrime(destSrc1)
	immVal = isa["immVal"][mne] ? isa["immVal"][mne] : conv_num(immediate)
	
	immBits = isa["immBits"][mne]
	if (isa["nzimm"][mne] && (immVal == 0 || immediate == "")) {
		if (immediate == "") {
			immVal = minImmFromBits(immBits)
		} else {
			print "Invalid immediate", immediate, ", this", mne, "instruction expects non-zero value"
			exit
		}
	}

	if (isa["uimm"][mne] && immVal < 0) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
                exit
	}
        split(immBits, abits, " ")
        imm0 = encImmBits(immVal, abits[1])
        imm1 = encImmBits(immVal, abits[2])

	funct2 = isa["funct2"][mne]
	if (!funct2) funct2 = ""

        bin = isa["funct3"][mne] imm0 funct2 rdRs1Prime imm1 opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCJ() { 
	print "in encodeCJ" 
	immediate = conv_num(tokens[2])
	jumpTarget = encImmBits(immediate, isa["immBits"][mne])
	
	bin = isa["funct3"][mne] jumpTarget opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}

function encode(str) {
	n = split(str, tokens, /[ ,()]+/)
	mne = tokens[1]
	opcode = isa["opcode"][mne]
	if (!opcode) {
		print "invalide opcode", mne
		exit
	}
	print opcode

	if (length(opcode) == 2) { 
		fmt = isa["fmt"][mne]
		switch(fmt) {
			case "CR":
				encodeCR(); break;
			case "CI":
				encodeCI(); break;
			case "CSS":
				encodeCSS(); break;
			case "CIW":
				encodeCIW(); break;
			case "CL":
				encodeCL(); break;
			case "CS":
				encodeCS(); break;
			case "CA":
				encodeCA(); break;
			case "CB":
				encodeCB(); break;
			case "CJ":
				encodeCJ(); break;
			default:
				print "unsupported C instruction format", fmt
		}
	} else {
		if (opcode == OP || opcode == OP_32 || opcode == OP_64) encodeOP()
		else if (opcode == OP_FP) encodeOP_FP()
		else if (opcode == JALR) encodeJALR()
		else if (opcode == LOAD || opcode == LOAD_FP) encodeLOAD()
		else if (opcode == OP_IMM || opcode == OP_IMM_32 || opcode == OP_IMM64) encodeOP_IMM()
		else if (opcode == MISC_MEM) encodeMISC_MEM()
		else if (opcode == SYSTEM) encodeSYSTEM()
		else if (opcode == STORE || opcode == STORE_32) encodeSTORE()
		else if (opcode == BRANCH) encodeBRANCH()
		else if (opcode == LUI || opcode == AUIPC) encodeUType()
		else if (opcode == JAL) encodeJAL()
		else if (opcode == MADD || opcode == MSUB || opcode == NMADD || opcode == NMSUB) encodeR4()
		else {
			print "Unsupported opcode", opcode
			exit
		}
	}
}
function getBits(binary, pos) {
	split(pos, apos, ",")
	_end = apos[1] + 1
	_start = _end - apos[2]
	if (_start > _end || length(binary) < _end) {
		print "getBits: position error", pos
		exit
	}

	return substr(binary, length(binary)-apos[1], apos[2])
}
function decReg(reg, floatReg) {
	return (floatReg ? "f" : "x") b2n(reg)
}

function extractRFields(binary, a) {
	a["rs2"] = getBits(binary, FIELD["rs2"]["pos"])
	a["rs1"] = getBits(binary, FIELD["rs1"]["pos"])
	a["funct3"] = getBits(binary, FIELD["funct3"]["pos"])
	a["rd"] = getBits(binary, FIELD["rd"]["pos"])
	a["funct5"] = getBits(binary, FIELD["r_funct5"]["pos"])
	a["funct7"] = getBits(binary, FIELD["r_funct7"]["pos"])
	a["aq"] = getBits(binary, FIELD["r_aq"]["pos"])
	a["rl"] = getBits(binary, FIELD["r_rl"]["pos"])
	a["fmt"] = getBits(binary, FIELD["r_fp_fmt"]["pos"])
}
function decodeOP(bin) { 
	print "decodeOP", opcode
	print "bin", bin
	extractRFields(bin, fields)
	funct7 = fields["funct7"]
	funct3 = fields["funct3"]
	rs2 = fields["rs2"]
	rs1 = fields["rs1"]
	rd = fields["rd"]

	if (opcode == OPCODE["OP_64"]) {
		# RV128I
		mne = ISA_OP_64[funct7 funct3]
		opcodeName = "OP-64"
	} else if (opcode == OPCODE["OP_32"]) {
		# RV64I
		mne = ISA_OP_32[funct7 funct3]
		opcodeName = "OP-32"
	} else {
		mne = ISA_OP[funct7 funct3]
		opcodeName = "OP"
	}
	if (mne == "") {
		printf "Detected %s instruction but invalid funct7 and funct3 fields", opcodeName
		exit
	}

	src1 = decReg(rs1)
	src2 = decReg(rs2)
	dest = decReg(rd)

	printf "%s %s, %s, %s\n", mne, dest, src1, src2
}
function decodeOP_FP() { print "decodeOP_FP" }
function decodeAMO() { print "decodeAMO" }
function decodeJALR() { print "decodeJALR" }
function decodeLOAD() { print "decodeLOAD" }
function decodeOP_IMM() { print "decodeOP_IMM" }
function decodeMISC_MEM() { print "decodeMISC_MEM" }
function decodeSYSTEM() { print "decodeSYSTEM" }
function decodeSTORE() { print "decodeSTORE" }
function decodeBRANCH() { print "decodeBRANCH" }
function decodeUType() { print "decodeUType" }
function decodeJAL() { print "decodeJAL" }
function decodeR4() { print "decodeR4" }

function decode(bin) {
	
	opcode = getBits(bin, FIELD["opcode"]["pos"])
	print "opcode", opcode

	# 32-bits opcodes
	print substr(opcode, length(opcode)-1)
	if (substr(opcode, length(opcode)-1) == "11") {
		switch(opcode) {
			case "0110011": # OP
			case "0111011": # OP_32
			case "1111011": # OP_64
				decodeOP(bin); break;
			case "1010011": # OP_FP
				decodeOP_FP(); break;
			case "0101111": # AMO
				decodeAMO(); break;
			case "1100111": # JALR
				decodeJALR(); break;
			case "0000011": # LOAD
			case "0000111": # LOAD_FP
				decodeLOAD(); break;
			case "0010011": # OP_IMM
			case "0011011": # OP_IMM_32
			case "1011011": # OP_IMM_64
				decodeOP_IMM(); break;
			case "0001111": # MISC_MEM
				decodeMISC_MEM(); break;
			case "1110011": # SYSTEM
				decodeSYSTEM(); break;
			case "0100011": # STORE
			case "0100111": # STORE_FP
				decodeSTORE(); break;
			case "1100011": # BRANCH
				decodeBRANCH(); break;
			case "0110111": # LUI
			case "0010111": # AUIPC
				decodeUType(); break;
			case "1101111": # JAL
				decodeJAL(); break;
			case "1000011": # MADD
			case "1000111": # MSUB
			case "1001111": # NMADD
			case "1001011": # NMSUB
				decodeR4(); break;
			default:
				print "Invalid opcode:", opcode
				exit
		}
	}
}
