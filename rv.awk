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

	FP_WIDTH["S"] = "010"
	FP_WIDTH["D"] = "011"
	FP_WIDTH["Q"] = "100"

	FP_FMT["S"] = "00"
	FP_FMT["D"] = "01"
	FP_FMT["Q"] = "11"

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
	isa["lui"]["isa"] = 	"RV32I"
	isa["auipc"]["isa"] = 	"RV32I"
	isa["jal"]["isa"] = 	"RV32I"
	isa["jalr"]["isa"] =	"RV32I"
	isa["beq"]["isa"] = 	"RV32I"
	isa["bne"]["isa"] = 	"RV32I"
	isa["blt"]["isa"] = 	"RV32I"
	isa["bge"]["isa"] = 	"RV32I"
	isa["bltu"]["isa"] = 	"RV32I"
	isa["bgeu"]["isa"] = 	"RV32I"
	isa["lb"]["isa"] = 	"RV32I"
	isa["lh"]["isa"] = 	"RV32I"
	isa["lw"]["isa"] = 	"RV32I"
	isa["lbu"]["isa"] = 	"RV32I"
	isa["lhu"]["isa"] = 	"RV32I"
	isa["sb"]["isa"] = 	"RV32I"
	isa["sh"]["isa"] = 	"RV32I"
	isa["sw"]["isa"] = 	"RV32I"
	isa["addi"]["isa"] = 	"RV32I"
	isa["slti"]["isa"] = 	"RV32I"
	isa["sltiu"]["isa"] = 	"RV32I"
	isa["xori"]["isa"] = 	"RV32I"
	isa["ori"]["isa"] = 	"RV32I"
	isa["andi"]["isa"] = 	"RV32I"
	isa["slli"]["isa"] = 	"RV32I"
	isa["srli"]["isa"] = 	"RV32I"
	isa["srai"]["isa"] = 	"RV32I"
	isa["add"]["isa"] = 	"RV32I"
	isa["sub"]["isa"] = 	"RV32I"
	isa["sll"]["isa"] = 	"RV32I"
	isa["slt"]["isa"] = 	"RV32I"
	isa["sltu"]["isa"] = 	"RV32I"
	isa["xor"]["isa"] = 	"RV32I"
	isa["srl"]["isa"] = 	"RV32I"
	isa["sra"]["isa"] = 	"RV32I"
	isa["or"]["isa"] = 	"RV32I"
	isa["and"]["isa"] = 	"RV32I"
	isa["fence"]["isa"] = 	"RV32I"
	isa["ecall"]["isa"] = 	"RV32I"
	isa["ebreak"]["isa"] =  "RV32I"

	isa["lui"]["opcode"] = 		OPCODE["LUI"]
	isa["auipc"]["opcode"] = 	OPCODE["AUIPC"]
	isa["jal"]["opcode"] =		OPCODE["JAL"]
	isa["jalr"]["opcode"] =		OPCODE["JALR"]
	isa["beq"]["opcode"] =		OPCODE["BRANCH"]
	isa["bne"]["opcode"] =		OPCODE["BRANCH"]
	isa["blt"]["opcode"] =		OPCODE["BRANCH"]
	isa["bge"]["opcode"] =		OPCODE["BRANCH"]
	isa["bltu"]["opcode"] = 	OPCODE["BRANCH"]
	isa["bgeu"]["opcode"] = 	OPCODE["BRANCH"]
	isa["lb"]["opcode"] =		OPCODE["LOAD"]
	isa["lh"]["opcode"] =		OPCODE["LOAD"]
	isa["lw"]["opcode"] =		OPCODE["LOAD"]
	isa["lbu"]["opcode"] =		OPCODE["LOAD"]
	isa["lhu"]["opcode"] =		OPCODE["LOAD"]
	isa["sb"]["opcode"] =		OPCODE["STORE"]
	isa["sh"]["opcode"] =		OPCODE["STORE"]
	isa["sw"]["opcode"] =		OPCODE["STORE"]
	isa["addi"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["slti"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["sltiu"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["xori"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["ori"]["opcode"] = 		OPCODE["OP_IMM"]
	isa["andi"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["slli"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["srli"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["srai"]["opcode"] = 	OPCODE["OP_IMM"]
	isa["add"]["opcode"] =		OPCODE["OP"]
	isa["sub"]["opcode"] =		OPCODE["OP"]
	isa["sll"]["opcode"] =		OPCODE["OP"]
	isa["slt"]["opcode"] =		OPCODE["OP"]
	isa["sltu"]["opcode"] = 	OPCODE["OP"]
	isa["xor"]["opcode"] =		OPCODE["OP"]
	isa["srl"]["opcode"] =		OPCODE["OP"]
	isa["sra"]["opcode"] =		OPCODE["OP"]
	isa["or"]["opcode"] =		OPCODE["OP"]
	isa["and"]["opcode"] =		OPCODE["OP"]
	isa["fence"]["opcode"] = 	OPCODE["MISC_MEM"]
	isa["ecall"]["opcode"] = 	OPCODE["SYSTEM"]
	isa["ebreak"]["opcode"] =	OPCODE["SYSTEM"]

	isa["lui"]["fmt"] = "U"
	isa["auipc"]["fmt"] = "U"
	isa["jal"]["fmt"] = "J"
	isa["jalr"]["fmt"] = "I"
	isa["beq"]["fmt"] = "B"
	isa["bne"]["fmt"] = "B"
	isa["blt"]["fmt"] = "B"
	isa["bge"]["fmt"] = "B"
	isa["bltu"]["fmt"] = "B"
	isa["bgeu"]["fmt"] = "B"
	isa["lb"]["fmt"] = "I"
	isa["lh"]["fmt"] = "I"
	isa["lw"]["fmt"] = "I"
	isa["lbu"]["fmt"] = "I"
	isa["lhu"]["fmt"] = "I"
	isa["sb"]["fmt"] = "S"
	isa["sh"]["fmt"] = "S"
	isa["sw"]["fmt"] = "S"
	isa["addi"]["fmt"] = "I"
	isa["slti"]["fmt"] = "I"
	isa["sltiu"]["fmt"] = "I"
	isa["xori"]["fmt"] = "I"
	isa["ori"]["fmt"] = "I"
	isa["andi"]["fmt"] = "I"
	isa["slli"]["fmt"] = "I"
	isa["srli"]["fmt"] = "I"
	isa["srai"]["fmt"] = "I"
	isa["add"]["fmt"] = "R"
	isa["sub"]["fmt"] = "R"
	isa["sll"]["fmt"] = "R"
	isa["slt"]["fmt"] = "R"
	isa["sltu"]["fmt"] = "R"
	isa["xor"]["fmt"] = "R"
	isa["srl"]["fmt"] = "R"
	isa["sra"]["fmt"] = "R"
	isa["or"]["fmt"] = "R"
	isa["and"]["fmt"] = "R"
	isa["fence"]["fmt"] = "I"
	isa["ecall"]["fmt"] = "I"
	isa["ebreak"]["fmt"] = "I"
	
	isa["jalr"]["funct3"] = "000"
	isa["beq"]["funct3"] = "000"
	isa["bne"]["funct3"] = "001"
	isa["blt"]["funct3"] = "100"
	isa["bge"]["funct3"] = "101"
	isa["bltu"]["funct3"] = "110"
	isa["bgeu"]["funct3"] = "111"

	isa["lb"]["funct3"] = "000"
	isa["lh"]["funct3"] = "001"
	isa["lw"]["funct3"] = "010"
	isa["lbu"]["funct3"] = "100"
	isa["lhu"]["funct3"] = "101"
	isa["lb"]["funct3"] = "000"

	isa["sb"]["funct3"] = "000"
	isa["sh"]["funct3"] = "001"
	isa["sw"]["funct3"] = "010"

	isa["addi"]["funct3"] = "000"
	isa["slti"]["funct3"] = "010"
	isa["sltiu"]["funct3"] = "011"
	isa["xori"]["funct3"] = "100"
	isa["ori"]["funct3"] = "110"
	isa["andi"]["funct3"] = "111"

	isa["slli"]["funct3"] = "001"
	isa["srli"]["funct3"] = "101"
	isa["srai"]["funct3"] = "101"

	isa["slli"]["shtyp"] = "0"
	isa["srli"]["shtyp"] = "0"
	isa["srai"]["shtyp"] = "1"

	isa["add"]["funct7"] = "0000000"
	isa["sub"]["funct7"] = "0100000"
	isa["sll"]["funct7"] = "0000000"
	isa["slt"]["funct7"] = "0000000"
	isa["sltu"]["funct7"] = "0000000"
	isa["xor"]["funct7"] = "0000000"
	isa["srl"]["funct7"] = "0000000"
	isa["sra"]["funct7"] = "0100000"
	isa["or"]["funct7"] = "0000000"
	isa["and"]["funct7"] = "0000000"

	isa["add"]["funct3"] = "000"
	isa["sub"]["funct3"] = "000"
	isa["sll"]["funct3"] = "001"
	isa["slt"]["funct3"] = "010"
	isa["sltu"]["funct3"] = "011"
	isa["xor"]["funct3"] = "100"
	isa["srl"]["funct3"] = "101"
	isa["sra"]["funct3"] = "101"
	isa["or"]["funct3"] = "110"
	isa["and"]["funct3"] = "111"

	isa["fence"]["funct3"] = "000"

	isa["ecall"]["funct3"] = "000"
	isa["ebreak"]["funct3"] = "000"
	isa["ecall"]["funct12"] = "000000000000"
	isa["ebreak"]["funct12"] = "000000000001"

	# C instruction set
	isa["c.add"]["fmt"] = "CR"
	isa["c.addi"]["fmt"] = "CI"
	isa["c.addi16sp"]["fmt"] = "CI"
	isa["c.addi4spn"]["fmt"] = "CIW"
	isa["c.addiw"]["fmt"] = "CI"
	isa["c.addw"]["fmt"] = "CA"
	isa["c.and"]["fmt"] = "CA"
	isa["c.andi"]["fmt"] = "CB"
	isa["c.beqz"]["fmt"] = "CB"
	isa["c.bnez"]["fmt"] = "CB"
	isa["c.ebreak"]["fmt"] = "CR"
	isa["c.fld"]["fmt"] = "CL"
	isa["c.fldsp"]["fmt"] = "CI"
	isa["c.flw"]["fmt"] = "CL"
	isa["c.flwsp"]["fmt"] = "CI"
	isa["c.fsd"]["fmt"] = "CS"
	isa["c.fsdsp"]["fmt"] = "CSS"
	isa["c.fsw"]["fmt"] = "CS"
	isa["c.fswsp"]["fmt"] = "CSS"
	isa["c.j"]["fmt"] = "CJ"
	isa["c.jal"]["fmt"] = "CJ"
	isa["c.jalr"]["fmt"] = "CR"
	isa["c.jr"]["fmt"] = "CR"
	isa["c.ld"]["fmt"] = "CL"
	isa["c.ldsp"]["fmt"] = "CI"
	isa["c.li"]["fmt"] = "CI"
	isa["c.lq"]["fmt"] = "CL"
	isa["c.lqsp"]["fmt"] = "CI"
	isa["c.lui"]["fmt"] = "CI"
	isa["c.lw"]["fmt"] = "CL"
	isa["c.lwsp"]["fmt"] = "CI"
	isa["c.mv"]["fmt"] = "CR"
	isa["c.nop"]["fmt"] = "CI"
	isa["c.or"]["fmt"] = "CA"
	isa["c.sd"]["fmt"] = "CS"
	isa["c.sdsp"]["fmt"] = "CSS"
	isa["c.slli"]["fmt"] = "CI"
	isa["c.slli64"]["fmt"] = "CI"
	isa["c.sq"]["fmt"] = "CS"
	isa["c.sqsp"]["fmt"] = "CSS"
	isa["c.srai"]["fmt"] = "CB"
	isa["c.srai64"]["fmt"] = "CB"
	isa["c.srli"]["fmt"] = "CB"
	isa["c.srli64"]["fmt"] = "CB"
	isa["c.sub"]["fmt"] = "CA"
	isa["c.subw"]["fmt"] = "CA"
	isa["c.sw"]["fmt"] = "CS"
	isa["c.swsp"]["fmt"] = "CSS"
	isa["c.xor"]["fmt"] = "CA"
	isa["c.addw"]["funct2"] = "01"
	isa["c.and"]["funct2"] = "11"
	isa["c.andi"]["funct2"] = "10"
	isa["c.or"]["funct2"] = "10"
	isa["c.srai"]["funct2"] = "01"
	isa["c.srai64"]["funct2"] = "01"
	isa["c.srli"]["funct2"] = "00"
	isa["c.srli64"]["funct2"] = "00"
	isa["c.sub"]["funct2"] = "00"
	isa["c.subw"]["funct2"] = "00"
	isa["c.xor"]["funct2"] = "01"
	isa["c.addi"]["funct3"] = "000"
	isa["c.addi16sp"]["funct3"] = "011"
	isa["c.addi4spn"]["funct3"] = "000"
	isa["c.addiw"]["funct3"] = "001"
	isa["c.andi"]["funct3"] = "100"
	isa["c.beqz"]["funct3"] = "110"
	isa["c.bnez"]["funct3"] = "111"
	isa["c.fld"]["funct3"] = "001"
	isa["c.fldsp"]["funct3"] = "001"
	isa["c.flw"]["funct3"] = "011"
	isa["c.flwsp"]["funct3"] = "011"
	isa["c.fsd"]["funct3"] = "101"
	isa["c.fsdsp"]["funct3"] = "101"
	isa["c.fsw"]["funct3"] = "111"
	isa["c.fswsp"]["funct3"] = "111"
	isa["c.j"]["funct3"] = "101"
	isa["c.jal"]["funct3"] = "001"
	isa["c.ld"]["funct3"] = "011"
	isa["c.ldsp"]["funct3"] = "011"
	isa["c.li"]["funct3"] = "010"
	isa["c.lq"]["funct3"] = "001"
	isa["c.lqsp"]["funct3"] = "001"
	isa["c.lui"]["funct3"] = "011"
	isa["c.lw"]["funct3"] = "010"
	isa["c.lwsp"]["funct3"] = "010"
	isa["c.nop"]["funct3"] = "000"
	isa["c.sd"]["funct3"] = "111"
	isa["c.sdsp"]["funct3"] = "111"
	isa["c.slli"]["funct3"] = "000"
	isa["c.slli64"]["funct3"] = "000"
	isa["c.sq"]["funct3"] = "101"
	isa["c.sqsp"]["funct3"] = "101"
	isa["c.srai"]["funct3"] = "100"
	isa["c.srai64"]["funct3"] = "100"
	isa["c.srli"]["funct3"] = "100"
	isa["c.srli64"]["funct3"] = "100"
	isa["c.sw"]["funct3"] = "110"
	isa["c.swsp"]["funct3"] = "110"
	isa["c.add"]["funct4"] = "1001"
	isa["c.ebreak"]["funct4"] = "1001"
	isa["c.jalr"]["funct4"] = "1001"
	isa["c.jr"]["funct4"] = "1000"
	isa["c.mv"]["funct4"] = "1000"
	isa["c.addw"]["funct6"] = "100111"
	isa["c.and"]["funct6"] = "100011"
	isa["c.or"]["funct6"] = "100011"
	isa["c.sub"]["funct6"] = "100011"
	isa["c.subw"]["funct6"] = "100111"
	isa["c.xor"]["funct6"] = "100011"
	isa["c.addi"]["immBits"] = "5 4-0"
	isa["c.addi16sp"]["immBits"] = "9 4,6,8-7,5"
	isa["c.addi4spn"]["immBits"] = "5-4,9-6,2,3"
	isa["c.addiw"]["immBits"] = "5 4-0"
	isa["c.andi"]["immBits"] = "5 4-0"
	isa["c.beqz"]["immBits"] = "8,4-3 7-6,2-1,5"
	isa["c.bnez"]["immBits"] = "8,4-3 7-6,2-1,5"
	isa["c.fld"]["immBits"] = "5-3 7-6"
	isa["c.fldsp"]["immBits"] = "5 4-3,8-6"
	isa["c.flw"]["immBits"] = "5-3 2-6"
	isa["c.flwsp"]["immBits"] = "5 4-2,7-6"
	isa["c.fsd"]["immBits"] = "5-3 7-6"
	isa["c.fsdsp"]["immBits"] = "5-3 8-6"
	isa["c.fsw"]["immBits"] = "5-3 2-6"
	isa["c.fswsp"]["immBits"] = "5-2 7-6"
	isa["c.j"]["immBits"] = "11,4,9-8,10,6,7,3-1,5"
	isa["c.jal"]["immBits"] = "11,4,9-8,10,6,7,3-1,5"
	isa["c.ld"]["immBits"] = "5-3 7-6"
	isa["c.ldsp"]["immBits"] = "5 4-3,8-6"
	isa["c.li"]["immBits"] = "5 4-0"
	isa["c.lq"]["immBits"] = "5,4,8 7-6"
	isa["c.lqsp"]["immBits"] = "5 4,9-6"
	isa["c.lui"]["immBits"] = "5 4-0"
	isa["c.lw"]["immBits"] = "5-3 2-6"
	isa["c.lwsp"]["immBits"] = "5 4-2,7-6" 
	isa["c.nop"]["immBits"] = "5 4-0"
	isa["c.sd"]["immBits"] = "5-3 7-6"
	isa["c.sdsp"]["immBits"] = "5-3 8-6"
	isa["c.slli"]["immBits"] = "5 4-0"
	isa["c.slli64"]["immBits"] = "5 4-0"
	isa["c.sq"]["immBits"] = "5,4,8 7-6"
	isa["c.sqsp"]["immBits"] = "5-4 9-6"
	isa["c.srai"]["immBits"] = "5 4-0"
	isa["c.srai64"]["immBits"] = "5 4-0"
	isa["c.srli"]["immBits"] = "5 4-0"
	isa["c.srli64"]["immBits"] = "5 4-0"
	isa["c.sw"]["immBits"] = "5-3 2-6"
	isa["c.swsp"]["immBits"] = "5-2 7-6"
	isa["c.lui"]["immBitsLabels"] = "[[17][[16,12]]]"
	isa["c.nop"]["immVal"] = "0"
	isa["c.slli64"]["immVal"] = "0"
	isa["c.srai64"]["immVal"] = "0"
	isa["c.srli64"]["immVal"] = "0"
	isa["c.add"]["isa"] = "C"
	isa["c.addi"]["isa"] = "C"
	isa["c.addi16sp"]["isa"] = "C"
	isa["c.addi4spn"]["isa"] = "C"
	isa["c.addiw"]["isa"] = "C"
	isa["c.addw"]["isa"] = "C"
	isa["c.and"]["isa"] = "C"
	isa["c.andi"]["isa"] = "C"
	isa["c.beqz"]["isa"] = "C"
	isa["c.bnez"]["isa"] = "C"
	isa["c.ebreak"]["isa"] = "C"
	isa["c.fld"]["isa"] = "DC"
	isa["c.fldsp"]["isa"] = "DC"
	isa["c.flw"]["isa"] = "FC"
	isa["c.flwsp"]["isa"] = "FC"
	isa["c.fsd"]["isa"] = "DC"
	isa["c.fsdsp"]["isa"] = "DC"
	isa["c.fsw"]["isa"] = "FC"
	isa["c.fswsp"]["isa"] = "FC"
	isa["c.j"]["isa"] = "C"
	isa["c.jal"]["isa"] = "C"
	isa["c.jalr"]["isa"] = "C"
	isa["c.jr"]["isa"] = "C"
	isa["c.ld"]["isa"] = "C"
	isa["c.ldsp"]["isa"] = "C"
	isa["c.li"]["isa"] = "C"
	isa["c.lq"]["isa"] = "C"
	isa["c.lqsp"]["isa"] = "C"
	isa["c.lui"]["isa"] = "C"
	isa["c.lw"]["isa"] = "C"
	isa["c.lwsp"]["isa"] = "C"
	isa["c.mv"]["isa"] = "C"
	isa["c.nop"]["isa"] = "C"
	isa["c.or"]["isa"] = "C"
	isa["c.sd"]["isa"] = "C"
	isa["c.sdsp"]["isa"] = "C"
	isa["c.slli"]["isa"] = "C"
	isa["c.slli64"]["isa"] = "C"
	isa["c.sq"]["isa"] = "C"
	isa["c.sqsp"]["isa"] = "C"
	isa["c.srai"]["isa"] = "C"
	isa["c.srai64"]["isa"] = "C"
	isa["c.srli"]["isa"] = "C"
	isa["c.srli64"]["isa"] = "C"
	isa["c.sub"]["isa"] = "C"
	isa["c.subw"]["isa"] = "C"
	isa["c.sw"]["isa"] = "C"
	isa["c.swsp"]["isa"] = "C"
	isa["c.xor"]["isa"] = "C"
	isa["c.addi"]["nzimm"] = 1
	isa["c.addi16sp"]["nzimm"] = 1
	isa["c.addi4spn"]["nzimm"] = 1
	isa["c.lui"]["nzimm"] = 1
	isa["c.slli"]["nzimm"] = 1
	isa["c.srai"]["nzimm"] = 1
	isa["c.srli"]["nzimm"] = 1
	isa["c.add"]["opcode"] = C2
	isa["c.addi"]["opcode"] = C1
	isa["c.addi16sp"]["opcode"] = C1
	isa["c.addi4spn"]["opcode"] = C0
	isa["c.addiw"]["opcode"] = C1
	isa["c.addw"]["opcode"] = C1
	isa["c.and"]["opcode"] = C1
	isa["c.andi"]["opcode"] = C1
	isa["c.beqz"]["opcode"] = C1
	isa["c.bnez"]["opcode"] = C1
	isa["c.ebreak"]["opcode"] = C2
	isa["c.fld"]["opcode"] = C0
	isa["c.fldsp"]["opcode"] = C2
	isa["c.flw"]["opcode"] = C0
	isa["c.flwsp"]["opcode"] = C2
	isa["c.fsd"]["opcode"] = C0
	isa["c.fsdsp"]["opcode"] = C2
	isa["c.fsw"]["opcode"] = C0
	isa["c.fswsp"]["opcode"] = C2
	isa["c.j"]["opcode"] = C1
	isa["c.jal"]["opcode"] = C1
	isa["c.jalr"]["opcode"] = C2
	isa["c.jr"]["opcode"] = C2
	isa["c.ld"]["opcode"] = C0
	isa["c.ldsp"]["opcode"] = C2
	isa["c.li"]["opcode"] = C1
	isa["c.lq"]["opcode"] = C0
	isa["c.lqsp"]["opcode"] = C2
	isa["c.lui"]["opcode"] = C1
	isa["c.lw"]["opcode"] = C0
	isa["c.lwsp"]["opcode"] = C2
	isa["c.mv"]["opcode"] = C2
	isa["c.nop"]["opcode"] = C1
	isa["c.or"]["opcode"] = C1
	isa["c.sd"]["opcode"] = C0
	isa["c.sdsp"]["opcode"] = C2
	isa["c.slli"]["opcode"] = C2
	isa["c.slli64"]["opcode"] = C2
	isa["c.sq"]["opcode"] = C0
	isa["c.sqsp"]["opcode"] = C2
	isa["c.srai"]["opcode"] = C1
	isa["c.srai64"]["opcode"] = C1
	isa["c.srli"]["opcode"] = C1
	isa["c.srli64"]["opcode"] = C1
	isa["c.sub"]["opcode"] = C1
	isa["c.subw"]["opcode"] = C1
	isa["c.sw"]["opcode"] = C0
	isa["c.swsp"]["opcode"] = C2
	isa["c.xor"]["opcode"] = C1
	isa["c.add"]["rdRs1Excl"] = "[0]"
	isa["c.addi"]["rdRs1Excl"] = "[0]"
	isa["c.addiw"]["rdRs1Excl"] = "[0]"
	isa["c.jalr"]["rdRs1Excl"] = "[0]"
	isa["c.jr"]["rdRs1Excl"] = "[0]"
	isa["c.ldsp"]["rdRs1Excl"] = "[0]"
	isa["c.li"]["rdRs1Excl"] = "[0]"
	isa["c.lqsp"]["rdRs1Excl"] = "[0]"
	isa["c.lui"]["rdRs1Excl"] = "[0,2]"
	isa["c.lwsp"]["rdRs1Excl"] = "[0]"
	isa["c.mv"]["rdRs1Excl"] = "[0]"
	isa["c.slli"]["rdRs1Excl"] = "[0]"
	isa["c.slli64"]["rdRs1Excl"] = "[0]"
	isa["c.add"]["rdRs1Mask"] = "11"
	isa["c.addi"]["rdRs1Mask"] = "11"
	isa["c.addi16sp"]["rdRs1Mask"] = "00"
	isa["c.addiw"]["rdRs1Mask"] = "11"
	isa["c.ebreak"]["rdRs1Mask"] = "00"
	isa["c.fldsp"]["rdRs1Mask"] = "10"
	isa["c.flwsp"]["rdRs1Mask"] = "10"
	isa["c.jalr"]["rdRs1Mask"] = "01"
	isa["c.jr"]["rdRs1Mask"] = "01"
	isa["c.ldsp"]["rdRs1Mask"] = "10"
	isa["c.li"]["rdRs1Mask"] = "10"
	isa["c.lqsp"]["rdRs1Mask"] = "10"
	isa["c.lui"]["rdRs1Mask"] = "10"
	isa["c.lwsp"]["rdRs1Mask"] = "10"
	isa["c.mv"]["rdRs1Mask"] = "10"
	isa["c.nop"]["rdRs1Mask"] = "00"
	isa["c.slli"]["rdRs1Mask"] = "11"
	isa["c.slli64"]["rdRs1Mask"] = "11"
	isa["c.addi16sp"]["rdRs1Val"] = 2
	isa["c.ebreak"]["rdRs1Val"] = "0"
	isa["c.nop"]["rdRs1Val"] = "0"
	isa["c.add"]["rs2Excl"] = "[0]"
	isa["c.mv"]["rs2Excl"] = "[0]"
	isa["c.ebreak"]["rs2Val"] = "0"
	isa["c.jalr"]["rs2Val"] = "0"
	isa["c.jr"]["rs2Val"] = "0"
	isa["c.addi4spn"]["uimm"] = 1
	isa["c.fld"]["uimm"] = 1
	isa["c.fldsp"]["uimm"] = 1
	isa["c.flw"]["uimm"] = 1
	isa["c.flwsp"]["uimm"] = 1
	isa["c.fsd"]["uimm"] = 1
	isa["c.fsdsp"]["uimm"] = 1
	isa["c.fsw"]["uimm"] = 1
	isa["c.fswsp"]["uimm"] = 1
	isa["c.ld"]["uimm"] = 1
	isa["c.ldsp"]["uimm"] = 1
	isa["c.lq"]["uimm"] = 1
	isa["c.lqsp"]["uimm"] = 1
	isa["c.lw"]["uimm"] = 1
	isa["c.lwsp"]["uimm"] = 1
	isa["c.sd"]["uimm"] = 1
	isa["c.sdsp"]["uimm"] = 1
	isa["c.slli"]["uimm"] = 1
	isa["c.sq"]["uimm"] = 1
	isa["c.sqsp"]["uimm"] = 1
	isa["c.srai"]["uimm"] = 1
	isa["c.srli"]["uimm"] = 1
	isa["c.sw"]["uimm"] = 1
	isa["c.swsp"]["uimm"] = 1
	isa["c.add"]["xlens"] = "111"
	isa["c.addi"]["xlens"] = "111"
	isa["c.addi16sp"]["xlens"] = "111"
	isa["c.addi4spn"]["xlens"] = "111"
	isa["c.addiw"]["xlens"] = "110"
	isa["c.addw"]["xlens"] = "110"
	isa["c.and"]["xlens"] = "111"
	isa["c.andi"]["xlens"] = "111"
	isa["c.beqz"]["xlens"] = "111"
	isa["c.bnez"]["xlens"] = "111"
	isa["c.ebreak"]["xlens"] = "111"
	isa["c.fld"]["xlens"] = "011"
	isa["c.fldsp"]["xlens"] = "011"
	isa["c.flw"]["xlens"] = "001"
	isa["c.flwsp"]["xlens"] = "001"
	isa["c.fsd"]["xlens"] = "011"
	isa["c.fsdsp"]["xlens"] = "011"
	isa["c.fsw"]["xlens"] = "001"
	isa["c.fswsp"]["xlens"] = "001"
	isa["c.j"]["xlens"] = "101"
	isa["c.jal"]["xlens"] = "001"
	isa["c.jalr"]["xlens"] = "111"
	isa["c.jr"]["xlens"] = "111"
	isa["c.ld"]["xlens"] = "110"
	isa["c.ldsp"]["xlens"] = "110"
	isa["c.li"]["xlens"] = "111"
	isa["c.lq"]["xlens"] = "100"
	isa["c.lqsp"]["xlens"] = "100"
	isa["c.lui"]["xlens"] = "111"
	isa["c.lw"]["xlens"] = "111"
	isa["c.lwsp"]["xlens"] = "111"
	isa["c.mv"]["xlens"] = "111"
	isa["c.nop"]["xlens"] = "111"
	isa["c.or"]["xlens"] = "111"
	isa["c.sd"]["xlens"] = "110"
	isa["c.sdsp"]["xlens"] = "110"
	isa["c.slli"]["xlens"] = "111"
	isa["c.slli64"]["xlens"] = "100"
	isa["c.sq"]["xlens"] = "100"
	isa["c.sqsp"]["xlens"] = "100"
	isa["c.srai"]["xlens"] = "111"
	isa["c.srai64"]["xlens"] = "100"
	isa["c.srli"]["xlens"] = "111"
	isa["c.srli64"]["xlens"] = "100"
	isa["c.sub"]["xlens"] = "111"
	isa["c.subw"]["xlens"] = "110"
	isa["c.sw"]["xlens"] = "111"
	isa["c.swsp"]["xlens"] = "111"
	isa["c.xor"]["xlens"] = "111"

	# RV64I instruction set
	isa["addiw"]["fmt"] = "I"
	isa["addw"]["fmt"] = "R"
	isa["ld"]["fmt"] = "I"
	isa["lwu"]["fmt"] = "I"
	isa["sd"]["fmt"] = "S"
	isa["slliw"]["fmt"] = "I"
	isa["sllw"]["fmt"] = "R"
	isa["sraiw"]["fmt"] = "I"
	isa["sraw"]["fmt"] = "R"
	isa["srliw"]["fmt"] = "I"
	isa["srlw"]["fmt"] = "R"
	isa["subw"]["fmt"] = "R"
	isa["addiw"]["funct3"] = "000"
	isa["addw"]["funct3"] = "000"
	isa["ld"]["funct3"] = "011"
	isa["lwu"]["funct3"] = "110"
	isa["sd"]["funct3"] = "011"
	isa["slliw"]["funct3"] = "001"
	isa["sllw"]["funct3"] = "001"
	isa["sraiw"]["funct3"] = "101"
	isa["sraw"]["funct3"] = "101"
	isa["srliw"]["funct3"] = "101"
	isa["srlw"]["funct3"] = "101"
	isa["subw"]["funct3"] = "000"
	isa["addw"]["funct7"] = "0000000"
	isa["sllw"]["funct7"] = "0000000"
	isa["sraw"]["funct7"] = "0100000"
	isa["srlw"]["funct7"] = "0000000"
	isa["subw"]["funct7"] = "0100000"
	isa["addiw"]["isa"] = "RV64I"
	isa["addw"]["isa"] = "RV64I"
	isa["ld"]["isa"] = "RV64I"
	isa["lwu"]["isa"] = "RV64I"
	isa["sd"]["isa"] = "RV64I"
	isa["slliw"]["isa"] = "RV64I"
	isa["sllw"]["isa"] = "RV64I"
	isa["sraiw"]["isa"] = "RV64I"
	isa["sraw"]["isa"] = "RV64I"
	isa["srliw"]["isa"] = "RV64I"
	isa["srlw"]["isa"] = "RV64I"
	isa["subw"]["isa"] = "RV64I"
	isa["addiw"]["opcode"] = OPCODE["OP_IMM_32"]
	isa["addw"]["opcode"] = OPCODE["OP_32"]
	isa["ld"]["opcode"] = OPCODE["LOAD"]
	isa["lwu"]["opcode"] = OPCODE["LOAD"]
	isa["sd"]["opcode"] = OPCODE["STORE"]
	isa["slliw"]["opcode"] = OPCODE["OP_IMM_32"]
	isa["sllw"]["opcode"] = OPCODE["OP_32"]
	isa["sraiw"]["opcode"] = OPCODE["OP_IMM_32"]
	isa["sraw"]["opcode"] = OPCODE["OP_32"]
	isa["srliw"]["opcode"] = OPCODE["OP_IMM_32"]
	isa["srlw"]["opcode"] = OPCODE["OP_32"]
	isa["subw"]["opcode"] = OPCODE["OP_32"]
	isa["slliw"]["shtyp"] = "0"
	isa["sraiw"]["shtyp"] = "1"
	isa["srliw"]["shtyp"] = "0"

	# RV6128I instruction set
 	isa["addid"]["isa"] = "RV128I" 
 	isa["sllid"]["isa"] = "RV128I" 
 	isa["srlid"]["isa"] = "RV128I" 
 	isa["sraid"]["isa"] = "RV128I" 
 	isa["addd"]["isa"] = "RV128I" 
 	isa["subd"]["isa"] = "RV128I" 
 	isa["slld"]["isa"] = "RV128I" 
 	isa["srld"]["isa"] = "RV128I" 
 	isa["srad"]["isa"] = "RV128I" 
 	isa["lq"]["isa"] = "RV128I" 
 	isa["ldu"]["isa"] = "RV128I" 
 	isa["sq"]["isa"] = "RV128I" 
 	isa["addid"]["fmt"] = "I" 
 	isa["sllid"]["fmt"] = "I" 
 	isa["srlid"]["fmt"] = "I" 
 	isa["sraid"]["fmt"] = "I" 
 	isa["addd"]["fmt"] = "R" 
 	isa["subd"]["fmt"] = "R" 
 	isa["slld"]["fmt"] = "R" 
 	isa["srld"]["fmt"] = "R" 
 	isa["srad"]["fmt"] = "R" 
 	isa["lq"]["fmt"] = "I" 
 	isa["ldu"]["fmt"] = "I" 
 	isa["sq"]["fmt"] = "S" 
 	isa["sllid"]["shtyp"] = "0" 
 	isa["srlid"]["shtyp"] = "0" 
 	isa["sraid"]["shtyp"] = "1" 
 	isa["addid"]["funct3"] = "000" 
 	isa["sllid"]["funct3"] = "001" 
 	isa["srlid"]["funct3"] = "101" 
 	isa["sraid"]["funct3"] = "101" 
 	isa["addd"]["funct3"] = "000" 
 	isa["subd"]["funct3"] = "000" 
 	isa["slld"]["funct3"] = "001" 
 	isa["srld"]["funct3"] = "101" 
 	isa["srad"]["funct3"] = "101" 
 	isa["lq"]["funct3"] = "010" 
 	isa["ldu"]["funct3"] = "111" 
 	isa["sq"]["funct3"] = "100" 
 	isa["addd"]["funct7"] = "0000000" 
 	isa["subd"]["funct7"] = "0100000" 
 	isa["slld"]["funct7"] = "0000000" 
 	isa["srld"]["funct7"] = "0000000" 
 	isa["srad"]["funct7"] = "0100000" 
 	isa["addid"]["opcode"] = OPCODE["OP_IMM_64"]
 	isa["sllid"]["opcode"] = OPCODE["OP_IMM_64"]
 	isa["srlid"]["opcode"] = OPCODE["OP_IMM_64"]
 	isa["sraid"]["opcode"] = OPCODE["OP_IMM_64"]
 	isa["addd"]["opcode"] = OPCODE["OP_64"]
 	isa["subd"]["opcode"] = OPCODE["OP_64"]
 	isa["slld"]["opcode"] = OPCODE["OP_64"]
 	isa["srld"]["opcode"] = OPCODE["OP_64"]
 	isa["srad"]["opcode"] = OPCODE["OP_64"]
 	isa["lq"]["opcode"] = OPCODE["MISC_MEM"]
 	isa["ldu"]["opcode"] = OPCODE["LOAD"]
 	isa["sq"]["opcode"] = OPCODE["STORE"]

	# Zifence instruction set
	isa["fence.i"]["isa"] = "Zifencei"
	isa["fence.i"]["fmt"] = "I"
	isa["fence.i"]["funct3"] = "001"
	isa["fence.i"]["opcode"] = OPCODE["MISC_MEM"]

	# Zicsr instruction set
	isa["csrrs"]["fmt"] = "I"
	isa["csrrw"]["fmt"] = "I"
	isa["csrrc"]["fmt"] = "I"
	isa["csrrwi"]["fmt"] = "I"
	isa["csrrsi"]["fmt"] = "I"
	isa["csrrci"]["fmt"] = "I"
	isa["csrrs"]["funct3"] = "001"
	isa["csrrw"]["funct3"] = "010"
	isa["csrrc"]["funct3"] = "011"
	isa["csrrwi"]["funct3"] = "101"
	isa["csrrsi"]["funct3"] = "110"
	isa["csrrci"]["funct3"] = "111"
	isa["csrrs"]["isa"] = "Zicsr"
	isa["csrrw"]["isa"] = "Zicsr"
	isa["csrrc"]["isa"] = "Zicsr"
	isa["csrrwi"]["isa"] = "Zicsr"
	isa["csrrsi"]["isa"] = "Zicsr"
	isa["csrrci"]["isa"] = "Zicsr"
	isa["csrrs"]["opcode"] = OPCODE["SYSTEM"]
	isa["csrrw"]["opcode"] = OPCODE["SYSTEM"]
	isa["csrrc"]["opcode"] = OPCODE["SYSTEM"]
	isa["csrrwi"]["opcode"] = OPCODE["SYSTEM"]
	isa["csrrsi"]["opcode"] = OPCODE["SYSTEM"]
	isa["csrrci"]["opcode"] = OPCODE["SYSTEM"]

	# M instruction set
	isa["div"]["fmt"] = "R"
	isa["divd"]["fmt"] = "R"
	isa["divu"]["fmt"] = "R"
	isa["divud"]["fmt"] = "R"
	isa["divuw"]["fmt"] = "R"
	isa["divw"]["fmt"] = "R"
	isa["mul"]["fmt"] = "R"
	isa["muld"]["fmt"] = "R"
	isa["mulh"]["fmt"] = "R"
	isa["mulhsu"]["fmt"] = "R"
	isa["mulhu"]["fmt"] = "R"
	isa["mulw"]["fmt"] = "R"
	isa["rem"]["fmt"] = "R"
	isa["remd"]["fmt"] = "R"
	isa["remu"]["fmt"] = "R"
	isa["remud"]["fmt"] = "R"
	isa["remuw"]["fmt"] = "R"
	isa["remw"]["fmt"] = "R"
	isa["div"]["funct3"] = "100"
	isa["divd"]["funct3"] = "100"
	isa["divu"]["funct3"] = "101"
	isa["divud"]["funct3"] = "101"
	isa["divuw"]["funct3"] = "101"
	isa["divw"]["funct3"] = "100"
	isa["mul"]["funct3"] = "000"
	isa["muld"]["funct3"] = "000"
	isa["mulh"]["funct3"] = "001"
	isa["mulhsu"]["funct3"] = "010"
	isa["mulhu"]["funct3"] = "011"
	isa["mulw"]["funct3"] = "000"
	isa["rem"]["funct3"] = "110"
	isa["remd"]["funct3"] = "110"
	isa["remu"]["funct3"] = "111"
	isa["remud"]["funct3"] = "111"
	isa["remuw"]["funct3"] = "111"
	isa["remw"]["funct3"] = "110"
	isa["div"]["funct7"] = "0000001"
	isa["divd"]["funct7"] = "0000001"
	isa["divu"]["funct7"] = "0000001"
	isa["divud"]["funct7"] = "0000001"
	isa["divuw"]["funct7"] = "0000001"
	isa["divw"]["funct7"] = "0000001"
	isa["mul"]["funct7"] = "0000001"
	isa["muld"]["funct7"] = "0000001"
	isa["mulh"]["funct7"] = "0000001"
	isa["mulhsu"]["funct7"] = "0000001"
	isa["mulhu"]["funct7"] = "0000001"
	isa["mulw"]["funct7"] = "0000001"
	isa["rem"]["funct7"] = "0000001"
	isa["remd"]["funct7"] = "0000001"
	isa["remu"]["funct7"] = "0000001"
	isa["remud"]["funct7"] = "0000001"
	isa["remuw"]["funct7"] = "0000001"
	isa["remw"]["funct7"] = "0000001"
	isa["div"]["isa"] = "RV32M"
	isa["divd"]["isa"] = "RV128M"
	isa["divu"]["isa"] = "RV32M"
	isa["divud"]["isa"] = "RV128M"
	isa["divuw"]["isa"] = "RV64M"
	isa["divw"]["isa"] = "RV64M"
	isa["mul"]["isa"] = "RV32M"
	isa["muld"]["isa"] = "RV128M"
	isa["mulh"]["isa"] = "RV32M"
	isa["mulhsu"]["isa"] = "RV32M"
	isa["mulhu"]["isa"] = "RV32M"
	isa["mulw"]["isa"] = "RV64M"
	isa["rem"]["isa"] = "RV32M"
	isa["remd"]["isa"] = "RV128M"
	isa["remu"]["isa"] = "RV32M"
	isa["remud"]["isa"] = "RV128M"
	isa["remuw"]["isa"] = "RV64M"
	isa["remw"]["isa"] = "RV64M"
	isa["div"]["opcode"] = OPCODE["OP"]
	isa["divd"]["opcode"] = OPCODE["OP_64"]
	isa["divu"]["opcode"] = OPCODE["OP"]
	isa["divud"]["opcode"] = OPCODE["OP_64"]
	isa["divuw"]["opcode"] = OPCODE["OP_32"]
	isa["divw"]["opcode"] = OPCODE["OP_32"]
	isa["mul"]["opcode"] = OPCODE["OP"]
	isa["muld"]["opcode"] = OPCODE["OP_64"]
	isa["mulh"]["opcode"] = OPCODE["OP"]
	isa["mulhsu"]["opcode"] = OPCODE["OP"]
	isa["mulhu"]["opcode"] = OPCODE["OP"]
	isa["mulw"]["opcode"] = OPCODE["OP_32"]
	isa["rem"]["opcode"] = OPCODE["OP"]
	isa["remd"]["opcode"] = OPCODE["OP_64"]
	isa["remu"]["opcode"] = OPCODE["OP"]
	isa["remud"]["opcode"] = OPCODE["OP_64"]
	isa["remuw"]["opcode"] = OPCODE["OP_32"]
	isa["remw"]["opcode"] = OPCODE["OP_32"]

	# A instruction set
	isa["amoadd.d"]["fmt"] = "R"
	isa["amoadd.q"]["fmt"] = "R"
	isa["amoadd.w"]["fmt"] = "R"
	isa["amoand.d"]["fmt"] = "R"
	isa["amoand.q"]["fmt"] = "R"
	isa["amoand.w"]["fmt"] = "R"
	isa["amomax.d"]["fmt"] = "R"
	isa["amomax.q"]["fmt"] = "R"
	isa["amomax.w"]["fmt"] = "R"
	isa["amomaxu.d"]["fmt"] = "R"
	isa["amomaxu.q"]["fmt"] = "R"
	isa["amomaxu.w"]["fmt"] = "R"
	isa["amomin.d"]["fmt"] = "R"
	isa["amomin.q"]["fmt"] = "R"
	isa["amomin.w"]["fmt"] = "R"
	isa["amominu.d"]["fmt"] = "R"
	isa["amominu.q"]["fmt"] = "R"
	isa["amominu.w"]["fmt"] = "R"
	isa["amoor.d"]["fmt"] = "R"
	isa["amoor.q"]["fmt"] = "R"
	isa["amoor.w"]["fmt"] = "R"
	isa["amoswap.d"]["fmt"] = "R"
	isa["amoswap.q"]["fmt"] = "R"
	isa["amoswap.w"]["fmt"] = "R"
	isa["amoxor.d"]["fmt"] = "R"
	isa["amoxor.q"]["fmt"] = "R"
	isa["amoxor.w"]["fmt"] = "R"
	isa["lr.d"]["fmt"] = "R"
	isa["lr.q"]["fmt"] = "R"
	isa["lr.w"]["fmt"] = "R"
	isa["sc.d"]["fmt"] = "R"
	isa["sc.q"]["fmt"] = "R"
	isa["sc.w"]["fmt"] = "R"
	isa["amoadd.d"]["funct3"] = "011"
	isa["amoadd.q"]["funct3"] = "100"
	isa["amoadd.w"]["funct3"] = "010"
	isa["amoand.d"]["funct3"] = "011"
	isa["amoand.q"]["funct3"] = "100"
	isa["amoand.w"]["funct3"] = "010"
	isa["amomax.d"]["funct3"] = "011"
	isa["amomax.q"]["funct3"] = "100"
	isa["amomax.w"]["funct3"] = "010"
	isa["amomaxu.d"]["funct3"] = "011"
	isa["amomaxu.q"]["funct3"] = "100"
	isa["amomaxu.w"]["funct3"] = "010"
	isa["amomin.d"]["funct3"] = "011"
	isa["amomin.q"]["funct3"] = "100"
	isa["amomin.w"]["funct3"] = "010"
	isa["amominu.d"]["funct3"] = "011"
	isa["amominu.q"]["funct3"] = "100"
	isa["amominu.w"]["funct3"] = "010"
	isa["amoor.d"]["funct3"] = "011"
	isa["amoor.q"]["funct3"] = "100"
	isa["amoor.w"]["funct3"] = "010"
	isa["amoswap.d"]["funct3"] = "011"
	isa["amoswap.q"]["funct3"] = "100"
	isa["amoswap.w"]["funct3"] = "010"
	isa["amoxor.d"]["funct3"] = "011"
	isa["amoxor.q"]["funct3"] = "100"
	isa["amoxor.w"]["funct3"] = "010"
	isa["lr.d"]["funct3"] = "011"
	isa["lr.q"]["funct3"] = "100"
	isa["lr.w"]["funct3"] = "010"
	isa["sc.d"]["funct3"] = "011"
	isa["sc.q"]["funct3"] = "100"
	isa["sc.w"]["funct3"] = "010"
	isa["amoadd.d"]["funct5"] = "00000"
	isa["amoadd.q"]["funct5"] = "00000"
	isa["amoadd.w"]["funct5"] = "00000"
	isa["amoand.d"]["funct5"] = "01100"
	isa["amoand.q"]["funct5"] = "01100"
	isa["amoand.w"]["funct5"] = "01100"
	isa["amomax.d"]["funct5"] = "10100"
	isa["amomax.q"]["funct5"] = "10100"
	isa["amomax.w"]["funct5"] = "10100"
	isa["amomaxu.d"]["funct5"] = "11100"
	isa["amomaxu.q"]["funct5"] = "11100"
	isa["amomaxu.w"]["funct5"] = "11100"
	isa["amomin.d"]["funct5"] = "10000"
	isa["amomin.q"]["funct5"] = "10000"
	isa["amomin.w"]["funct5"] = "10000"
	isa["amominu.d"]["funct5"] = "11000"
	isa["amominu.q"]["funct5"] = "11000"
	isa["amominu.w"]["funct5"] = "11000"
	isa["amoor.d"]["funct5"] = "01000"
	isa["amoor.q"]["funct5"] = "01000"
	isa["amoor.w"]["funct5"] = "01000"
	isa["amoswap.d"]["funct5"] = "00001"
	isa["amoswap.q"]["funct5"] = "00001"
	isa["amoswap.w"]["funct5"] = "00001"
	isa["amoxor.d"]["funct5"] = "00100"
	isa["amoxor.q"]["funct5"] = "00100"
	isa["amoxor.w"]["funct5"] = "00100"
	isa["lr.d"]["funct5"] = "00010"
	isa["lr.q"]["funct5"] = "00010"
	isa["lr.w"]["funct5"] = "00010"
	isa["sc.d"]["funct5"] = "00011"
	isa["sc.q"]["funct5"] = "00011"
	isa["sc.w"]["funct5"] = "00011"
	isa["amoadd.d"]["isa"] = "RV64A"
	isa["amoadd.q"]["isa"] = "RV128A"
	isa["amoadd.w"]["isa"] = "RV32A"
	isa["amoand.d"]["isa"] = "RV64A"
	isa["amoand.q"]["isa"] = "RV128A"
	isa["amoand.w"]["isa"] = "RV32A"
	isa["amomax.d"]["isa"] = "RV64A"
	isa["amomax.q"]["isa"] = "RV128A"
	isa["amomax.w"]["isa"] = "RV32A"
	isa["amomaxu.d"]["isa"] = "RV64A"
	isa["amomaxu.q"]["isa"] = "RV128A"
	isa["amomaxu.w"]["isa"] = "RV32A"
	isa["amomin.d"]["isa"] = "RV64A"
	isa["amomin.q"]["isa"] = "RV128A"
	isa["amomin.w"]["isa"] = "RV32A"
	isa["amominu.d"]["isa"] = "RV64A"
	isa["amominu.q"]["isa"] = "RV128A"
	isa["amominu.w"]["isa"] = "RV32A"
	isa["amoor.d"]["isa"] = "RV64A"
	isa["amoor.q"]["isa"] = "RV128A"
	isa["amoor.w"]["isa"] = "RV32A"
	isa["amoswap.d"]["isa"] = "RV64A"
	isa["amoswap.q"]["isa"] = "RV128A"
	isa["amoswap.w"]["isa"] = "RV32A"
	isa["amoxor.d"]["isa"] = "RV64A"
	isa["amoxor.q"]["isa"] = "RV128A"
	isa["amoxor.w"]["isa"] = "RV32A"
	isa["lr.d"]["isa"] = "RV64A"
	isa["lr.q"]["isa"] = "RV128A"
	isa["lr.w"]["isa"] = "RV32A"
	isa["sc.d"]["isa"] = "RV64A"
	isa["sc.q"]["isa"] = "RV128A"
	isa["sc.w"]["isa"] = "RV32A"
	isa["amoadd.d"]["opcode"] = OPCODE["AMO"]
	isa["amoadd.q"]["opcode"] = OPCODE["AMO"]
	isa["amoadd.w"]["opcode"] = OPCODE["AMO"]
	isa["amoand.d"]["opcode"] = OPCODE["AMO"]
	isa["amoand.q"]["opcode"] = OPCODE["AMO"]
	isa["amoand.w"]["opcode"] = OPCODE["AMO"]
	isa["amomax.d"]["opcode"] = OPCODE["AMO"]
	isa["amomax.q"]["opcode"] = OPCODE["AMO"]
	isa["amomax.w"]["opcode"] = OPCODE["AMO"]
	isa["amomaxu.d"]["opcode"] = OPCODE["AMO"]
	isa["amomaxu.q"]["opcode"] = OPCODE["AMO"]
	isa["amomaxu.w"]["opcode"] = OPCODE["AMO"]
	isa["amomin.d"]["opcode"] = OPCODE["AMO"]
	isa["amomin.q"]["opcode"] = OPCODE["AMO"]
	isa["amomin.w"]["opcode"] = OPCODE["AMO"]
	isa["amominu.d"]["opcode"] = OPCODE["AMO"]
	isa["amominu.q"]["opcode"] = OPCODE["AMO"]
	isa["amominu.w"]["opcode"] = OPCODE["AMO"]
	isa["amoor.d"]["opcode"] = OPCODE["AMO"]
	isa["amoor.q"]["opcode"] = OPCODE["AMO"]
	isa["amoor.w"]["opcode"] = OPCODE["AMO"]
	isa["amoswap.d"]["opcode"] = OPCODE["AMO"]
	isa["amoswap.q"]["opcode"] = OPCODE["AMO"]
	isa["amoswap.w"]["opcode"] = OPCODE["AMO"]
	isa["amoxor.d"]["opcode"] = OPCODE["AMO"]
	isa["amoxor.q"]["opcode"] = OPCODE["AMO"]
	isa["amoxor.w"]["opcode"] = OPCODE["AMO"]
	isa["lr.d"]["opcode"] = OPCODE["AMO"]
	isa["lr.q"]["opcode"] = OPCODE["AMO"]
	isa["lr.w"]["opcode"] = OPCODE["AMO"]
	isa["sc.d"]["opcode"] = OPCODE["AMO"]
	isa["sc.q"]["opcode"] = OPCODE["AMO"]
	isa["sc.w"]["opcode"] = OPCODE["AMO"]

	# F instruction set
	isa["fadd.s"]["fmt"] = "R"
	isa["fclass.s"]["fmt"] = "R"
	isa["fcvt.l.s"]["fmt"] = "R"
	isa["fcvt.lu.s"]["fmt"] = "R"
	isa["fcvt.s.l"]["fmt"] = "R"
	isa["fcvt.s.lu"]["fmt"] = "R"
	isa["fcvt.s.t"]["fmt"] = "R"
	isa["fcvt.s.tu"]["fmt"] = "R"
	isa["fcvt.s.w"]["fmt"] = "R"
	isa["fcvt.s.wu"]["fmt"] = "R"
	isa["fcvt.t.s"]["fmt"] = "R"
	isa["fcvt.tu.s"]["fmt"] = "R"
	isa["fcvt.w.s"]["fmt"] = "R"
	isa["fcvt.wu.s"]["fmt"] = "R"
	isa["fdiv.s"]["fmt"] = "R"
	isa["feq.s"]["fmt"] = "R"
	isa["fle.s"]["fmt"] = "R"
	isa["flt.s"]["fmt"] = "R"
	isa["flw"]["fmt"] = "I"
	isa["fmadd.s"]["fmt"] = "R4"
	isa["fmax.s"]["fmt"] = "R"
	isa["fmin.s"]["fmt"] = "R"
	isa["fmsub.s"]["fmt"] = "R4"
	isa["fmul.s"]["fmt"] = "R"
	isa["fmv.w.x"]["fmt"] = "R"
	isa["fmv.x.w"]["fmt"] = "R"
	isa["fnmadd.s"]["fmt"] = "R4"
	isa["fnmsub.s"]["fmt"] = "R4"
	isa["fsgnj.s"]["fmt"] = "R"
	isa["fsgnjn.s"]["fmt"] = "R"
	isa["fsgnjx.s"]["fmt"] = "R"
	isa["fsqrt.s"]["fmt"] = "R"
	isa["fsub.s"]["fmt"] = "R"
	isa["fsw"]["fmt"] = "S"
	isa["fadd.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fclass.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.l.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.lu.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.l"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.lu"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.t"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.tu"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.w"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.s.wu"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.t.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.tu.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.w.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.wu.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fdiv.s"]["fp_fmt"] = FP_FMT["S"]
	isa["feq.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fle.s"]["fp_fmt"] = FP_FMT["S"]
	isa["flt.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmadd.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmax.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmin.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmsub.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmul.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fmv.w.x"]["fp_fmt"] = FP_FMT["S"]
	isa["fmv.x.w"]["fp_fmt"] = FP_FMT["S"]
	isa["fnmadd.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fnmsub.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fsgnj.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fsgnjn.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fsgnjx.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fsqrt.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fsub.s"]["fp_fmt"] = FP_FMT["S"]
	isa["fclass.s"]["funct3"] = "001"
	isa["feq.s"]["funct3"] = "010"
	isa["fle.s"]["funct3"] = "000"
	isa["flt.s"]["funct3"] = "001"
	isa["flw"]["funct3"] = FP_WIDTH["S"]
	isa["fmax.s"]["funct3"] = "001"
	isa["fmin.s"]["funct3"] = "000"
	isa["fmv.w.x"]["funct3"] = "000"
	isa["fmv.x.w"]["funct3"] = "000"
	isa["fsgnj.s"]["funct3"] = "000"
	isa["fsgnjn.s"]["funct3"] = "001"
	isa["fsgnjx.s"]["funct3"] = "010"
	isa["fsw"]["funct3"] = FP_WIDTH["S"]
	isa["fadd.s"]["funct5"] = "00000"
	isa["fclass.s"]["funct5"] = "11100"
	isa["fcvt.l.s"]["funct5"] = "11000"
	isa["fcvt.lu.s"]["funct5"] = "11000"
	isa["fcvt.s.l"]["funct5"] = "11010"
	isa["fcvt.s.lu"]["funct5"] = "11010"
	isa["fcvt.s.t"]["funct5"] = "11010"
	isa["fcvt.s.tu"]["funct5"] = "11010"
	isa["fcvt.s.w"]["funct5"] = "11010"
	isa["fcvt.s.wu"]["funct5"] = "11010"
	isa["fcvt.t.s"]["funct5"] = "11000"
	isa["fcvt.tu.s"]["funct5"] = "11000"
	isa["fcvt.w.s"]["funct5"] = "11000"
	isa["fcvt.wu.s"]["funct5"] = "11000"
	isa["fdiv.s"]["funct5"] = "00011"
	isa["feq.s"]["funct5"] = "10100"
	isa["fle.s"]["funct5"] = "10100"
	isa["flt.s"]["funct5"] = "10100"
	isa["fmax.s"]["funct5"] = "00101"
	isa["fmin.s"]["funct5"] = "00101"
	isa["fmul.s"]["funct5"] = "00010"
	isa["fmv.w.x"]["funct5"] = "11110"
	isa["fmv.x.w"]["funct5"] = "11100"
	isa["fsgnj.s"]["funct5"] = "00100"
	isa["fsgnjn.s"]["funct5"] = "00100"
	isa["fsgnjx.s"]["funct5"] = "00100"
	isa["fsqrt.s"]["funct5"] = "01011"
	isa["fsub.s"]["funct5"] = "00001"
	isa["fadd.s"]["isa"] = "RV32F"
	isa["fclass.s"]["isa"] = "RV32F"
	isa["fcvt.l.s"]["isa"] = "RV64F"
	isa["fcvt.lu.s"]["isa"] = "RV64F"
	isa["fcvt.s.l"]["isa"] = "RV64F"
	isa["fcvt.s.lu"]["isa"] = "RV64F"
	isa["fcvt.s.t"]["isa"] = "RV128F"
	isa["fcvt.s.tu"]["isa"] = "RV128F"
	isa["fcvt.s.w"]["isa"] = "RV32F"
	isa["fcvt.s.wu"]["isa"] = "RV32F"
	isa["fcvt.t.s"]["isa"] = "RV128F"
	isa["fcvt.tu.s"]["isa"] = "RV128F"
	isa["fcvt.w.s"]["isa"] = "RV32F"
	isa["fcvt.wu.s"]["isa"] = "RV32F"
	isa["fdiv.s"]["isa"] = "RV32F"
	isa["feq.s"]["isa"] = "RV32F"
	isa["fle.s"]["isa"] = "RV32F"
	isa["flt.s"]["isa"] = "RV32F"
	isa["flw"]["isa"] = "RV32F"
	isa["fmadd.s"]["isa"] = "RV32F"
	isa["fmax.s"]["isa"] = "RV32F"
	isa["fmin.s"]["isa"] = "RV32F"
	isa["fmsub.s"]["isa"] = "RV32F"
	isa["fmul.s"]["isa"] = "RV32F"
	isa["fmv.w.x"]["isa"] = "RV32F"
	isa["fmv.x.w"]["isa"] = "RV32F"
	isa["fnmadd.s"]["isa"] = "RV32F"
	isa["fnmsub.s"]["isa"] = "RV32F"
	isa["fsgnj.s"]["isa"] = "RV32F"
	isa["fsgnjn.s"]["isa"] = "RV32F"
	isa["fsgnjx.s"]["isa"] = "RV32F"
	isa["fsqrt.s"]["isa"] = "RV32F"
	isa["fsub.s"]["isa"] = "RV32F"
	isa["fsw"]["isa"] = "RV32F"
	isa["fadd.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fclass.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.l.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.lu.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.l"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.lu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.t"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.tu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.w"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.wu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.t.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.tu.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.w.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.wu.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fdiv.s"]["opcode"] = OPCODE["OP_FP"]
	isa["feq.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fle.s"]["opcode"] = OPCODE["OP_FP"]
	isa["flt.s"]["opcode"] = OPCODE["OP_FP"]
	isa["flw"]["opcode"] = OPCODE["LOAD_FP"]
	isa["fmadd.s"]["opcode"] = OPCODE["MADD"]
	isa["fmax.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fmin.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fmsub.s"]["opcode"] = OPCODE["MSUB"]
	isa["fmul.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.w.x"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.x.w"]["opcode"] = OPCODE["OP_FP"]
	isa["fnmadd.s"]["opcode"] = OPCODE["NMADD"]
	isa["fnmsub.s"]["opcode"] = OPCODE["NMSUB"]
	isa["fsgnj.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjn.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjx.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fsqrt.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fsub.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fsw"]["opcode"] = OPCODE["STORE_FP"]
	isa["fclass.s"]["rs2"] = "00000"
	isa["fcvt.l.s"]["rs2"] = "00010"
	isa["fcvt.lu.s"]["rs2"] = "00011"
	isa["fcvt.s.l"]["rs2"] = "00010"
	isa["fcvt.s.lu"]["rs2"] = "00011"
	isa["fcvt.s.t"]["rs2"] = "00100"
	isa["fcvt.s.tu"]["rs2"] = "00101"
	isa["fcvt.s.w"]["rs2"] = "00000"
	isa["fcvt.s.wu"]["rs2"] = "00001"
	isa["fcvt.t.s"]["rs2"] = "00100"
	isa["fcvt.tu.s"]["rs2"] = "00101"
	isa["fcvt.w.s"]["rs2"] = "00000"
	isa["fcvt.wu.s"]["rs2"] = "00001"
	isa["fmv.w.x"]["rs2"] = "00000"
	isa["fmv.x.w"]["rs2"] = "00000"
	isa["fsqrt.s"]["rs2"] = "00000"

	# D instruction set
	isa["fadd.d"]["fmt"] = "R"
	isa["fclass.d"]["fmt"] = "R"
	isa["fcvt.d.l"]["fmt"] = "R"
	isa["fcvt.d.lu"]["fmt"] = "R"
	isa["fcvt.d.s"]["fmt"] = "R"
	isa["fcvt.d.t"]["fmt"] = "R"
	isa["fcvt.d.tu"]["fmt"] = "R"
	isa["fcvt.d.w"]["fmt"] = "R"
	isa["fcvt.d.wu"]["fmt"] = "R"
	isa["fcvt.l.d"]["fmt"] = "R"
	isa["fcvt.lu.d"]["fmt"] = "R"
	isa["fcvt.s.d"]["fmt"] = "R"
	isa["fcvt.t.d"]["fmt"] = "R"
	isa["fcvt.tu.d"]["fmt"] = "R"
	isa["fcvt.w.d"]["fmt"] = "R"
	isa["fcvt.wu.d"]["fmt"] = "R"
	isa["fdiv.d"]["fmt"] = "R"
	isa["feq.d"]["fmt"] = "R"
	isa["fld"]["fmt"] = "I"
	isa["fle.d"]["fmt"] = "R"
	isa["flt.d"]["fmt"] = "R"
	isa["fmadd.d"]["fmt"] = "R4"
	isa["fmax.d"]["fmt"] = "R"
	isa["fmin.d"]["fmt"] = "R"
	isa["fmsub.d"]["fmt"] = "R4"
	isa["fmul.d"]["fmt"] = "R"
	isa["fmv.d.x"]["fmt"] = "R"
	isa["fmv.x.d"]["fmt"] = "R"
	isa["fnmadd.d"]["fmt"] = "R4"
	isa["fnmsub.d"]["fmt"] = "R4"
	isa["fsd"]["fmt"] = "S"
	isa["fsgnj.d"]["fmt"] = "R"
	isa["fsgnjn.d"]["fmt"] = "R"
	isa["fsgnjx.d"]["fmt"] = "R"
	isa["fsqrt.d"]["fmt"] = "R"
	isa["fsub.d"]["fmt"] = "R"
	isa["fadd.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fclass.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.l"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.lu"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.s"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.t"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.tu"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.w"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.d.wu"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.l.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.lu.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.s.d"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.t.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.tu.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.w.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.wu.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fdiv.d"]["fp_fmt"] = FP_FMT["D"]
	isa["feq.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fle.d"]["fp_fmt"] = FP_FMT["D"]
	isa["flt.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmadd.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmax.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmin.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmsub.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmul.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fmv.d.x"]["fp_fmt"] = FP_FMT["D"]
	isa["fmv.x.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fnmadd.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fnmsub.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fsgnj.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fsgnjn.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fsgnjx.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fsqrt.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fsub.d"]["fp_fmt"] = FP_FMT["D"]
	isa["fclass.d"]["funct3"] = "001"
	isa["feq.d"]["funct3"] = "010"
	isa["fld"]["funct3"] = FP_WIDTH["D"]
	isa["fle.d"]["funct3"] = "000"
	isa["flt.d"]["funct3"] = "001"
	isa["fmax.d"]["funct3"] = "001"
	isa["fmin.d"]["funct3"] = "000"
	isa["fmv.d.x"]["funct3"] = "000"
	isa["fmv.x.d"]["funct3"] = "000"
	isa["fsd"]["funct3"] = FP_WIDTH["D"]
	isa["fsgnj.d"]["funct3"] = "000"
	isa["fsgnjn.d"]["funct3"] = "001"
	isa["fsgnjx.d"]["funct3"] = "010"
	isa["fadd.d"]["funct5"] = "00000"
	isa["fclass.d"]["funct5"] = "11100"
	isa["fcvt.d.l"]["funct5"] = "11010"
	isa["fcvt.d.lu"]["funct5"] = "11010"
	isa["fcvt.d.s"]["funct5"] = "01000"
	isa["fcvt.d.t"]["funct5"] = "11010"
	isa["fcvt.d.tu"]["funct5"] = "11010"
	isa["fcvt.d.w"]["funct5"] = "11010"
	isa["fcvt.d.wu"]["funct5"] = "11010"
	isa["fcvt.l.d"]["funct5"] = "11000"
	isa["fcvt.lu.d"]["funct5"] = "11000"
	isa["fcvt.s.d"]["funct5"] = "01000"
	isa["fcvt.t.d"]["funct5"] = "11000"
	isa["fcvt.tu.d"]["funct5"] = "11000"
	isa["fcvt.w.d"]["funct5"] = "11000"
	isa["fcvt.wu.d"]["funct5"] = "11000"
	isa["fdiv.d"]["funct5"] = "00011"
	isa["feq.d"]["funct5"] = "10100"
	isa["fle.d"]["funct5"] = "10100"
	isa["flt.d"]["funct5"] = "10100"
	isa["fmax.d"]["funct5"] = "00101"
	isa["fmin.d"]["funct5"] = "00101"
	isa["fmul.d"]["funct5"] = "00010"
	isa["fmv.d.x"]["funct5"] = "11110"
	isa["fmv.x.d"]["funct5"] = "11100"
	isa["fsgnj.d"]["funct5"] = "00100"
	isa["fsgnjn.d"]["funct5"] = "00100"
	isa["fsgnjx.d"]["funct5"] = "00100"
	isa["fsqrt.d"]["funct5"] = "01011"
	isa["fsub.d"]["funct5"] = "00001"
	isa["fadd.d"]["isa"] = "RV32D"
	isa["fclass.d"]["isa"] = "RV32D"
	isa["fcvt.d.l"]["isa"] = "RV64D"
	isa["fcvt.d.lu"]["isa"] = "RV64D"
	isa["fcvt.d.s"]["isa"] = "RV32D"
	isa["fcvt.d.t"]["isa"] = "RV128D"
	isa["fcvt.d.tu"]["isa"] = "RV128D"
	isa["fcvt.d.w"]["isa"] = "RV32D"
	isa["fcvt.d.wu"]["isa"] = "RV32D"
	isa["fcvt.l.d"]["isa"] = "RV64D"
	isa["fcvt.lu.d"]["isa"] = "RV64D"
	isa["fcvt.s.d"]["isa"] = "RV32D"
	isa["fcvt.t.d"]["isa"] = "RV128D"
	isa["fcvt.tu.d"]["isa"] = "RV128D"
	isa["fcvt.w.d"]["isa"] = "RV32D"
	isa["fcvt.wu.d"]["isa"] = "RV32D"
	isa["fdiv.d"]["isa"] = "RV32D"
	isa["feq.d"]["isa"] = "RV32D"
	isa["fld"]["isa"] = "RV32D"
	isa["fle.d"]["isa"] = "RV32D"
	isa["flt.d"]["isa"] = "RV32D"
	isa["fmadd.d"]["isa"] = "RV32D"
	isa["fmax.d"]["isa"] = "RV32D"
	isa["fmin.d"]["isa"] = "RV32D"
	isa["fmsub.d"]["isa"] = "RV32D"
	isa["fmul.d"]["isa"] = "RV32D"
	isa["fmv.d.x"]["isa"] = "RV64D"
	isa["fmv.x.d"]["isa"] = "RV64D"
	isa["fnmadd.d"]["isa"] = "RV32D"
	isa["fnmsub.d"]["isa"] = "RV32D"
	isa["fsd"]["isa"] = "RV32D"
	isa["fsgnj.d"]["isa"] = "RV32D"
	isa["fsgnjn.d"]["isa"] = "RV32D"
	isa["fsgnjx.d"]["isa"] = "RV32D"
	isa["fsqrt.d"]["isa"] = "RV32D"
	isa["fsub.d"]["isa"] = "RV32D"
	isa["fadd.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fclass.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.l"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.lu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.t"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.tu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.w"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.wu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.l.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.lu.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.t.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.tu.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.w.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.wu.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fdiv.d"]["opcode"] = OPCODE["OP_FP"]
	isa["feq.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fld"]["opcode"] = OPCODE["LOAD_FP"]
	isa["fle.d"]["opcode"] = OPCODE["OP_FP"]
	isa["flt.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fmadd.d"]["opcode"] = OPCODE["MADD"]
	isa["fmax.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fmin.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fmsub.d"]["opcode"] = OPCODE["MSUB"]
	isa["fmul.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.d.x"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.x.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fnmadd.d"]["opcode"] = OPCODE["NMADD"]
	isa["fnmsub.d"]["opcode"] = OPCODE["NMSUB"]
	isa["fsd"]["opcode"] = OPCODE["STORE_FP"]
	isa["fsgnj.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjn.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjx.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fsqrt.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fsub.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fclass.d"]["rs2"] = "00000"
	isa["fcvt.d.l"]["rs2"] = "00010"
	isa["fcvt.d.lu"]["rs2"] = "00011"
	isa["fcvt.d.s"]["rs2"] = "000" FP_FMT["S"]
	isa["fcvt.d.t"]["rs2"] = "00100"
	isa["fcvt.d.tu"]["rs2"] = "00101"
	isa["fcvt.d.w"]["rs2"] = "00000"
	isa["fcvt.d.wu"]["rs2"] = "00001"
	isa["fcvt.l.d"]["rs2"] = "00010"
	isa["fcvt.lu.d"]["rs2"] = "00011"
	isa["fcvt.s.d"]["rs2"] = "000" FP_FMT["D"]
	isa["fcvt.t.d"]["rs2"] = "00100"
	isa["fcvt.tu.d"]["rs2"] = "00101"
	isa["fcvt.w.d"]["rs2"] = "00000"
	isa["fcvt.wu.d"]["rs2"] = "00001"
	isa["fmv.d.x"]["rs2"] = "00000"
	isa["fmv.x.d"]["rs2"] = "00000"
	isa["fsqrt.d"]["rs2"] = "00000"

	# Q instruction set
	isa["fadd.q"]["fmt"] = "R"
	isa["fclass.q"]["fmt"] = "R"
	isa["fcvt.d.q"]["fmt"] = "R"
	isa["fcvt.l.q"]["fmt"] = "R"
	isa["fcvt.lu.q"]["fmt"] = "R"
	isa["fcvt.q.d"]["fmt"] = "R"
	isa["fcvt.q.l"]["fmt"] = "R"
	isa["fcvt.q.lu"]["fmt"] = "R"
	isa["fcvt.q.s"]["fmt"] = "R"
	isa["fcvt.q.t"]["fmt"] = "R"
	isa["fcvt.q.tu"]["fmt"] = "R"
	isa["fcvt.q.w"]["fmt"] = "R"
	isa["fcvt.q.wu"]["fmt"] = "R"
	isa["fcvt.s.q"]["fmt"] = "R"
	isa["fcvt.t.q"]["fmt"] = "R"
	isa["fcvt.tu.q"]["fmt"] = "R"
	isa["fcvt.w.q"]["fmt"] = "R"
	isa["fcvt.wu.q"]["fmt"] = "R"
	isa["fdiv.q"]["fmt"] = "R"
	isa["feq.q"]["fmt"] = "R"
	isa["fle.q"]["fmt"] = "R"
	isa["flq"]["fmt"] = "I"
	isa["flt.q"]["fmt"] = "R"
	isa["fmadd.q"]["fmt"] = "R4"
	isa["fmax.q"]["fmt"] = "R"
	isa["fmin.q"]["fmt"] = "R"
	isa["fmsub.q"]["fmt"] = "R4"
	isa["fmul.q"]["fmt"] = "R"
	isa["fmv.q.x"]["fmt"] = "R"
	isa["fmv.x.q"]["fmt"] = "R"
	isa["fnmadd.q"]["fmt"] = "R4"
	isa["fnmsub.q"]["fmt"] = "R4"
	isa["fsgnj.q"]["fmt"] = "R"
	isa["fsgnjn.q"]["fmt"] = "R"
	isa["fsgnjx.q"]["fmt"] = "R"
	isa["fsq"]["fmt"] = "S"
	isa["fsqrt.q"]["fmt"] = "R"
	isa["fsub.q"]["fmt"] = "R"
	isa["fadd.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fclass.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.d.q"]["fp_fmt"] = FP_FMT["D"]
	isa["fcvt.l.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.lu.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.d"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.l"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.lu"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.s"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.t"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.tu"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.w"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.q.wu"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.s.q"]["fp_fmt"] = FP_FMT["S"]
	isa["fcvt.t.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.tu.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.w.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fcvt.wu.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fdiv.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["feq.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fle.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["flt.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmadd.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmax.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmin.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmsub.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmul.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmv.q.x"]["fp_fmt"] = FP_FMT["Q"]
	isa["fmv.x.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fnmadd.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fnmsub.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fsgnj.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fsgnjn.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fsgnjx.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fsqrt.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fsub.q"]["fp_fmt"] = FP_FMT["Q"]
	isa["fclass.q"]["funct3"] = "001"
	isa["feq.q"]["funct3"] = "010"
	isa["fle.q"]["funct3"] = "000"
	isa["flq"]["funct3"] = FP_WIDTH["Q"]
	isa["flt.q"]["funct3"] = "001"
	isa["fmax.q"]["funct3"] = "001"
	isa["fmin.q"]["funct3"] = "000"
	isa["fmv.q.x"]["funct3"] = "000"
	isa["fmv.x.q"]["funct3"] = "000"
	isa["fsgnj.q"]["funct3"] = "000"
	isa["fsgnjn.q"]["funct3"] = "001"
	isa["fsgnjx.q"]["funct3"] = "010"
	isa["fsq"]["funct3"] = FP_WIDTH["Q"]
	isa["fadd.q"]["funct5"] = "00000"
	isa["fclass.q"]["funct5"] = "11100"
	isa["fcvt.d.q"]["funct5"] = "01000"
	isa["fcvt.l.q"]["funct5"] = "11000"
	isa["fcvt.lu.q"]["funct5"] = "11000"
	isa["fcvt.q.d"]["funct5"] = "01000"
	isa["fcvt.q.l"]["funct5"] = "11010"
	isa["fcvt.q.lu"]["funct5"] = "11010"
	isa["fcvt.q.s"]["funct5"] = "01000"
	isa["fcvt.q.t"]["funct5"] = "11010"
	isa["fcvt.q.tu"]["funct5"] = "11010"
	isa["fcvt.q.w"]["funct5"] = "11010"
	isa["fcvt.q.wu"]["funct5"] = "11010"
	isa["fcvt.s.q"]["funct5"] = "01000"
	isa["fcvt.t.q"]["funct5"] = "11000"
	isa["fcvt.tu.q"]["funct5"] = "11000"
	isa["fcvt.w.q"]["funct5"] = "11000"
	isa["fcvt.wu.q"]["funct5"] = "11000"
	isa["fdiv.q"]["funct5"] = "00011"
	isa["feq.q"]["funct5"] = "10100"
	isa["fle.q"]["funct5"] = "10100"
	isa["flt.q"]["funct5"] = "10100"
	isa["fmax.q"]["funct5"] = "00101"
	isa["fmin.q"]["funct5"] = "00101"
	isa["fmul.q"]["funct5"] = "00010"
	isa["fmv.q.x"]["funct5"] = "11110"
	isa["fmv.x.q"]["funct5"] = "11100"
	isa["fsgnj.q"]["funct5"] = "00100"
	isa["fsgnjn.q"]["funct5"] = "00100"
	isa["fsgnjx.q"]["funct5"] = "00100"
	isa["fsqrt.q"]["funct5"] = "01011"
	isa["fsub.q"]["funct5"] = "00001"
	isa["fadd.q"]["isa"] = "RV32Q"
	isa["fclass.q"]["isa"] = "RV32Q"
	isa["fcvt.d.q"]["isa"] = "RV32Q"
	isa["fcvt.l.q"]["isa"] = "RV64Q"
	isa["fcvt.lu.q"]["isa"] = "RV64Q"
	isa["fcvt.q.d"]["isa"] = "RV32Q"
	isa["fcvt.q.l"]["isa"] = "RV64Q"
	isa["fcvt.q.lu"]["isa"] = "RV64Q"
	isa["fcvt.q.s"]["isa"] = "RV32Q"
	isa["fcvt.q.t"]["isa"] = "RV128Q"
	isa["fcvt.q.tu"]["isa"] = "RV128Q"
	isa["fcvt.q.w"]["isa"] = "RV32Q"
	isa["fcvt.q.wu"]["isa"] = "RV32Q"
	isa["fcvt.s.q"]["isa"] = "RV32Q"
	isa["fcvt.t.q"]["isa"] = "RV128Q"
	isa["fcvt.tu.q"]["isa"] = "RV128Q"
	isa["fcvt.w.q"]["isa"] = "RV32Q"
	isa["fcvt.wu.q"]["isa"] = "RV32Q"
	isa["fdiv.q"]["isa"] = "RV32Q"
	isa["feq.q"]["isa"] = "RV32Q"
	isa["fle.q"]["isa"] = "RV32Q"
	isa["flq"]["isa"] = "RV32Q"
	isa["flt.q"]["isa"] = "RV32Q"
	isa["fmadd.q"]["isa"] = "RV32Q"
	isa["fmax.q"]["isa"] = "RV32Q"
	isa["fmin.q"]["isa"] = "RV32Q"
	isa["fmsub.q"]["isa"] = "RV32Q"
	isa["fmul.q"]["isa"] = "RV32Q"
	isa["fmv.q.x"]["isa"] = "RV128Q"
	isa["fmv.x.q"]["isa"] = "RV128Q"
	isa["fnmadd.q"]["isa"] = "RV32Q"
	isa["fnmsub.q"]["isa"] = "RV32Q"
	isa["fsgnj.q"]["isa"] = "RV32Q"
	isa["fsgnjn.q"]["isa"] = "RV32Q"
	isa["fsgnjx.q"]["isa"] = "RV32Q"
	isa["fsq"]["isa"] = "RV32Q"
	isa["fsqrt.q"]["isa"] = "RV32Q"
	isa["fsub.q"]["isa"] = "RV32Q"
	isa["fadd.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fclass.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.d.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.l.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.lu.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.d"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.l"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.lu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.s"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.t"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.tu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.w"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.q.wu"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.s.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.t.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.tu.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.w.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fcvt.wu.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fdiv.q"]["opcode"] = OPCODE["OP_FP"]
	isa["feq.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fle.q"]["opcode"] = OPCODE["OP_FP"]
	isa["flq"]["opcode"] = OPCODE["LOAD_FP"]
	isa["flt.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fmadd.q"]["opcode"] = OPCODE["MADD"]
	isa["fmax.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fmin.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fmsub.q"]["opcode"] = OPCODE["MSUB"]
	isa["fmul.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.q.x"]["opcode"] = OPCODE["OP_FP"]
	isa["fmv.x.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fnmadd.q"]["opcode"] = OPCODE["NMADD"]
	isa["fnmsub.q"]["opcode"] = OPCODE["NMSUB"]
	isa["fsgnj.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjn.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fsgnjx.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fsq"]["opcode"] = OPCODE["STORE_FP"]
	isa["fsqrt.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fsub.q"]["opcode"] = OPCODE["OP_FP"]
	isa["fclass.q"]["rs2"] = "00000"
	isa["fcvt.d.q"]["rs2"] = "000" FP_FMT["Q"]
	isa["fcvt.l.q"]["rs2"] = "00010"
	isa["fcvt.lu.q"]["rs2"] = "00011"
	isa["fcvt.q.d"]["rs2"] = "000" FP_FMT["D"]
	isa["fcvt.q.l"]["rs2"] = "00010"
	isa["fcvt.q.lu"]["rs2"] = "00011"
	isa["fcvt.q.s"]["rs2"] = "000" FP_FMT["S"]
	isa["fcvt.q.t"]["rs2"] = "00100"
	isa["fcvt.q.tu"]["rs2"] = "00101"
	isa["fcvt.q.w"]["rs2"] = "00000"
	isa["fcvt.q.wu"]["rs2"] = "00001"
	isa["fcvt.s.q"]["rs2"] = "000" FP_FMT["Q"]
	isa["fcvt.t.q"]["rs2"] = "00100"
	isa["fcvt.tu.q"]["rs2"] = "00101"
	isa["fcvt.w.q"]["rs2"] = "00000"
	isa["fcvt.wu.q"]["rs2"] = "00001"
	isa["fmv.q.x"]["rs2"] = "00000"
	isa["fmv.x.q"]["rs2"] = "00000"
	isa["fsqrt.q"]["rs2"] = "00000"




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

	FIELDS["opcode"]["name"] = "opcode"
	FIELDS["rd"]["name"] = "rd"
	FIELDS["funct3"]["name"] = "funct3"
	FIELDS["rs1"]["name"] = "rs1"
	FIELDS["rs2"]["name"] = "rs2"
	FIELDS["r_funct5"]["name"] = "funct5"
	FIELDS["r_funct7"]["name"] = "funct7"
	FIELDS["r_aq"]["name"] = "aq"
	FIELDS["r_rl"]["name"] = "rl"
	FIELDS["r_fp_fmt"]["name"] = "fmt"
	FIELDS["i_imm_11_0"]["name"] = "imm[11:0]"
	FIELDS["i_shtyp_11_7"]["name"] = "shtyp[11:7]"
	FIELDS["i_shtyp_11_6"]["name"] = "shtyp[11:6]"
	FIELDS["i_shtyp_11_5"]["name"] = "shtyp[11:5]"
	FIELDS["i_shtyp"]["name"] = "shtyp"
	FIELDS["i_shamt_6"]["name"] = "shamt[6]"
	FIELDS["i_shamt_6_0"]["name"] = "shamt[6:0]"
	FIELDS["i_shamt_5"]["name"] = "shamt[5]"
	FIELDS["i_shamt_5_0"]["name"] = "shamt[5:0]"
	FIELDS["i_shamt"]["name"] = "shamt[4:0]"
	FIELDS["i_funct12"]["name"] = "funct12"
	FIELDS["i_csr"]["name"] = "csr"
	FIELDS["i_imm_4_0"]["name"] = "imm[4:0]"
	FIELDS["i_fm"]["name"] = "fm"
	FIELDS["i_pred"]["name"] = "pred"
	FIELDS["i_succ"]["name"] = "succ"
	FIELDS["s_imm_4_0"]["name"] = "imm[4:0]"
	FIELDS["s_imm_11_5"]["name"] = "imm[11:5]"
	FIELDS["b_imm_4_1"]["name"] = "imm[4:1]"
	FIELDS["b_imm_11"]["name"] = "imm[11]"
	FIELDS["b_imm_10_5"]["name"] = "imm[10:5]"
	FIELDS["b_imm_12"]["name"] = "imm[12]"
	FIELDS["u_imm_31_12"]["name"] = "imm[31:12]"
	FIELDS["j_imm_20"]["name"] = "imm[20]"
	FIELDS["j_imm_10_1"]["name"] = "imm[10:1]"
	FIELDS["j_imm_11"]["name"] = "imm[11]"
	FIELDS["j_imm_19_12"]["name"] = "imm[19:12]"
	FIELDS["c_opcode"]["name"] = "opcode"
	FIELDS["c_funct6"]["name"] = "funct6"
	FIELDS["c_funct4"]["name"] = "funct4"
	FIELDS["c_funct3"]["name"] = "funct3"
	FIELDS["c_funct2"]["name"] = "funct2"
	FIELDS["c_funct2_cb"]["name"] = "funct2"
	FIELDS["c_rd"]["name"] = "rd"
	FIELDS["c_rs1"]["name"] = "rs1"
	FIELDS["c_rd_rs1"]["name"] = "rd/rs1"
	FIELDS["c_rs2"]["name"] = "rs2"
	FIELDS["c_rd_prime"]["name"] = "rd'"
	FIELDS["c_rs2_prime"]["name"] = "rs2'"
	FIELDS["c_rs1_prime"]["name"] = "rs1'"
	FIELDS["c_rd_rs1_prime"]["name"] = "rd'/rs'"
	FIELDS["c_imm_ci_0"]["name"] = "imm"
	FIELDS["c_imm_ci_1"]["name"] = "imm"
	FIELDS["c_imm_css"]["name"] = "imm"
	FIELDS["c_imm_ciw"]["name"] = "imm"
	FIELDS["c_imm_cl_0"]["name"] = "imm"
	FIELDS["c_imm_cl_1"]["name"] = "imm"
	FIELDS["c_imm_ci_0"]["name"] = "imm"
	FIELDS["c_imm_cs_0"]["name"] = "imm"
	FIELDS["c_imm_cs_1"]["name"] = "imm"
	FIELDS["c_imm_cb_0"]["name"] = "imm"
	FIELDS["c_imm_cb_1"]["name"] = "imm"
	FIELDS["c_imm_cj"]["name"] = "imm"
	FIELDS["c_shamt_0"]["name"] = "shamt"
	FIELDS["c_shamt_1"]["name"] = "shamt"
	

	

	FIELDS["opcode"]["pos"] = "6,7"
	FIELDS["rd"]["pos"] = "11,5"
	FIELDS["funct3"]["pos"] = "14,3"
	FIELDS["rs1"]["pos"] = "19,5"
	FIELDS["rs2"]["pos"] = "24,5"

	FIELDS["r_funct5"]["pos"] = "31,5"
	FIELDS["r_funct7"]["pos"] = "31,7"

	FIELDS["r_aq"]["pos"] = "26,1"
	FIELDS["r_rl"]["pos"] = "25,1"

	FIELDS["r_fp_fmt"]["pos"] = "26,2"

	FIELDS["i_imm_11_0"]["pos"] = "31,12"

	FIELDS["i_shtyp_11_7"]["pos"] = "31,5"
	FIELDS["i_shtyp_11_6"]["pos"] = "31,6"
	FIELDS["i_shtyp_11_5"]["pos"] = "31,7"
	FIELDS["i_shtyp"]["pos"] = "30,1"
	FIELDS["i_shamt_6"]["pos"] = "26,1"
	FIELDS["i_shamt_6_0"]["pos"] = "26,7"
	FIELDS["i_shamt_5"]["pos"] = "25,1"
	FIELDS["i_shamt_5_0"]["pos"] = "25,6"
	FIELDS["i_shamt"]["pos"] = "24,5"

	FIELDS["i_funct12"]["pos"] = "31,12"

	FIELDS["i_csr"]["pos"] = "31,12"
	FIELDS["i_imm_4_0"]["pos"] = "19,5"

	FIELDS["i_fm"]["pos"] = "31,4"
	FIELDS["i_pred"]["pos"] = "27,4"
	FIELDS["i_succ"]["pos"] = "23,4"

	FIELDS["s_imm_4_0"]["pos"] = "11,5"
	FIELDS["s_imm_11_5"]["pos"] = "31,7"

	FIELDS["b_imm_4_1"]["pos"] = "11,4"
	FIELDS["b_imm_11"]["pos"] = "7,1"
	FIELDS["b_imm_10_5"]["pos"] = "30,6"
	FIELDS["b_imm_12"]["pos"] = "31,1"

	FIELDS["u_imm_31_12"]["pos"] = "31,20"

	FIELDS["j_imm_20"]["pos"] = "31,1"
	FIELDS["j_imm_10_1"]["pos"] = "30,10"
	FIELDS["j_imm_11"]["pos"] = "20,1"
	FIELDS["j_imm_19_12"]["pos"] = "19,8"

	FIELDS["c_opcode"]["pos"] = "1,2"
	FIELDS["c_funct6"]["pos"] = "15,6"
	FIELDS["c_funct4"]["pos"] = "15,4"
	FIELDS["c_funct3"]["pos"] = "15,3"
	FIELDS["c_funct2"]["pos"] = "6,2"
	FIELDS["c_funct2_cb"]["pos"] = "11,2"

	FIELDS["c_rd"]["pos"] = "11,5"
	FIELDS["c_rs1"]["pos"] = "11,5"
	FIELDS["c_rd_rs1"]["pos"] = "11,5"
	FIELDS["c_rs2"]["pos"] = "6,5"
	FIELDS["c_rd_prime"]["pos"] = "4,3"
	FIELDS["c_rs2_prime"]["pos"] = "4,3"
	FIELDS["c_rs1_prime"]["pos"] = "9,3"
	FIELDS["c_rd_rs1_prime"]["pos"] = "9,3"

	FIELDS["c_imm_ci_0"]["pos"] = "12,1"
	FIELDS["c_imm_ci_1"]["pos"] = "6,5"
	FIELDS["c_imm_css"]["pos"] = "12,6"
	FIELDS["c_imm_ciw"]["pos"] = "12,8"
	FIELDS["c_imm_cl_0"]["pos"] = "12,3"
	FIELDS["c_imm_cl_1"]["pos"] = "6,2"
	FIELDS["c_imm_cs_0"]["pos"] = "12,3"
	FIELDS["c_imm_cs_1"]["pos"] = "6,2"
	FIELDS["c_imm_cb_0"]["pos"] = "12,3"
	FIELDS["c_imm_cb_1"]["pos"] = "6,5"
	FIELDS["c_imm_cj"]["pos"] = "12,11"
	FIELDS["c_shamt_0"]["pos"] = "12,1"
	FIELDS["c_shamt_1"]["pos"] = "6,5"

	# RV32I 
	ISA_OP[isa["add"]["funct7"] isa["add"]["funct3"]] = "add"
	ISA_OP[isa["sub"]["funct7"] isa["sub"]["funct3"]] = "sub"
	ISA_OP[isa["sll"]["funct7"] isa["sll"]["funct3"]] = "sll"
	ISA_OP[isa["slt"]["funct7"] isa["slt"]["funct3"]] = "slt"
	ISA_OP[isa["sltu"]["funct7"] isa["sltu"]["funct3"]] = "sltu"
	ISA_OP[isa["xor"]["funct7"] isa["xor"]["funct3"]] = "xor"
	ISA_OP[isa["srl"]["funct7"] isa["srl"]["funct3"]] = "srl"
	ISA_OP[isa["sra"]["funct7"] isa["sra"]["funct3"]] = "sra"
	ISA_OP[isa["or"]["funct7"] isa["or"]["funct3"]] = "or"
	ISA_OP[isa["and"]["funct7"] isa["and"]["funct3"]] = "and"
	# RV32M
	ISA_OP[isa["mul"]["funct7"] isa["mul"]["funct3"]] = "mul"
	ISA_OP[isa["mulh"]["funct7"] isa["mulh"]["funct3"]] = "mulh"
	ISA_OP[isa["mulhsu"]["funct7"] isa["mulhsu"]["funct3"]] = "mulhsu"
	ISA_OP[isa["mulhu"]["funct7"] isa["mulhu"]["funct3"]] = "mulhu"
	ISA_OP[isa["div"]["funct7"] isa["div"]["funct3"]] = "div"
	ISA_OP[isa["divu"]["funct7"] isa["divu"]["funct3"]] = "divu"
	ISA_OP[isa["rem"]["funct7"] isa["rem"]["funct3"]] = "rem"
	ISA_OP[isa["remu"]["funct7"] isa["remu"]["funct3"]] = "remu"

	# RV64I
	ISA_OP_32[isa["addw"]["funct7"] isa["addw"]["funct3"]] = "addw"
	ISA_OP_32[isa["subw"]["funct7"] isa["subw"]["funct3"]] = "subw"
	ISA_OP_32[isa["sllw"]["funct7"] isa["sllw"]["funct3"]] = "sllw"
	ISA_OP_32[isa["srlw"]["funct7"] isa["srlw"]["funct3"]] = "srlw"
	ISA_OP_32[isa["sraw"]["funct7"] isa["sraw"]["funct3"]] = "sraw"
	# RV64M
	ISA_OP_32[isa["mulw"]["funct7"] isa["mulw"]["funct3"]] = "mulw"
	ISA_OP_32[isa["divw"]["funct7"] isa["divw"]["funct3"]] = "divw"
	ISA_OP_32[isa["divuw"]["funct7"] isa["divuw"]["funct3"]] = "divuw"
	ISA_OP_32[isa["remw"]["funct7"] isa["remw"]["funct3"]] = "remw"
	ISA_OP_32[isa["remuw"]["funct7"] isa["remuw"]["funct3"]] = "remuw"

	# RV128I
	ISA_OP_64[isa["addd"]["funct7"] isa["addd"]["funct3"]] = "addd"
	ISA_OP_64[isa["subd"]["funct7"] isa["subd"]["funct3"]] = "subd"
	ISA_OP_64[isa["slld"]["funct7"] isa["slld"]["funct3"]] = "slld"
	ISA_OP_64[isa["srld"]["funct7"] isa["srld"]["funct3"]] = "srld"
	ISA_OP_64[isa["srad"]["funct7"] isa["srad"]["funct3"]] = "srad"
	# RV128M
	ISA_OP_64[isa["muld"]["funct7"] isa["muld"]["funct3"]] = "muld"
	ISA_OP_64[isa["divd"]["funct7"] isa["divd"]["funct3"]] = "divd"
	ISA_OP_64[isa["divud"]["funct7"] isa["divud"]["funct3"]] = "divud"
	ISA_OP_64[isa["remd"]["funct7"] isa["remd"]["funct3"]] = "remd"
	ISA_OP_64[isa["remud"]["funct7"] isa["remud"]["funct3"]] = "remud"

	ISA_LOAD[isa["lb"]["funct3"]] = "lb"
	ISA_LOAD[isa["lh"]["funct3"]] = "lh"
	ISA_LOAD[isa["lw"]["funct3"]] = "lw"
	ISA_LOAD[isa["ld"]["funct3"]] = "ld"
	ISA_LOAD[isa["lbu"]["funct3"]] = "lbu"
	ISA_LOAD[isa["lhu"]["funct3"]] = "lhu"
	ISA_LOAD[isa["lwu"]["funct3"]] = "lwu"
	ISA_LOAD[isa["ldu"]["funct3"]] = "ldu"

	ISA_STORE[isa["sb"]["funct3"]] = "sb"
	ISA_STORE[isa["sh"]["funct3"]] = "sh"
	ISA_STORE[isa["sw"]["funct3"]] = "sw"
	ISA_STORE[isa["sd"]["funct3"]] = "sd"
	ISA_STORE[isa["sq"]["funct3"]] = "sq"

	ISA_OP_IMM[isa["addi"]["funct3"]] = "addi"
	ISA_OP_IMM[isa["slti"]["funct3"]] = "slti"
	ISA_OP_IMM[isa["sltiu"]["funct3"]] = "sltiu"
	ISA_OP_IMM[isa["xori"]["funct3"]] = "xori"
	ISA_OP_IMM[isa["ori"]["funct3"]] = "ori"
	ISA_OP_IMM[isa["andi"]["funct3"]] = "andi"

	ISA_OP_IMM[isa["slli"]["funct3"]] = "slli"
	ISA_OP_IMM[isa["srli"]["funct3"]][isa["srli"]["shtyp"]] = "srli"
	ISA_OP_IMM[isa["srli"]["funct3"]][isa["srai"]["shtyp"]] = "srai"


	ISA_OP_IMM_32[isa["addiw"]["funct3"]] = "addiw"
	ISA_OP_IMM_32[isa["slliw"]["funct3"]] = "slliw"
	ISA_OP_IMM_32[isa["srliw"]["funct3"]][isa["srliw"]["shtyp"]] = "srliw"
	ISA_OP_IMM_32[isa["srliw"]["funct3"]][isa["sraiw"]["shtyp"]] = "sraiw"

	ISA_OP_IMM_64[isa["addid"]["funct3"]] = "addid"
	ISA_OP_IMM_64[isa["sllid"]["funct3"]] = "sllid"
	ISA_OP_IMM_64[isa["srlid"]["funct3"]][isa["srlid"]["shtyp"]] = "srlid"
	ISA_OP_IMM_64[isa["srlid"]["funct3"]][isa["sraid"]["shtyp"]] = "sraid"

	ISA_BRANCH[isa["beq"]["funct3"]] = "beq"
	ISA_BRANCH[isa["bne"]["funct3"]] = "bne"
	ISA_BRANCH[isa["blt"]["funct3"]] = "blt"
	ISA_BRANCH[isa["bge"]["funct3"]] = "bge"
	ISA_BRANCH[isa["bltu"]["funct3"]] = "bltu"
	ISA_BRANCH[isa["bgeu"]["funct3"]] = "bgeu"

	ISA_MISC_MEM[isa["fence"]["funct3"]] = "fence"
	ISA_MISC_MEM[isa["fence.i"]["funct3"]] = "fence.i"
	ISA_MISC_MEM[isa["lq"]["funct3"]] = "lq"

	ISA_SYSTEM[isa["ecall"]["funct3"]][isa["ecall"]["funct12"]]= "ecall"
	ISA_SYSTEM[isa["ecall"]["funct3"]][isa["ebreak"]["funct12"]]= "ebreak"
	ISA_SYSTEM[isa["csrrw"]["funct3"]] = "csrrw"
	ISA_SYSTEM[isa["csrrs"]["funct3"]] = "csrrs"
	ISA_SYSTEM[isa["csrrc"]["funct3"]] = "csrrc"
	ISA_SYSTEM[isa["csrrwi"]["funct3"]] = "csrrwi"
	ISA_SYSTEM[isa["csrrsi"]["funct3"]] = "csrrsi"
	ISA_SYSTEM[isa["csrrci"]["funct3"]] = "csrrci"

	ISA_AMO[isa["lr.w"]["funct5"] isa["lr.w"]["funct3"]] = "lr.w"
	ISA_AMO[isa["sc.w"]["funct5"] isa["sc.w"]["funct3"]] = "sc.w"
	ISA_AMO[isa["amoswap.w"]["funct5"] isa["amoswap.w"]["funct3"]] = "amoswap.w"
	ISA_AMO[isa["amoadd.w"]["funct5"] isa["amoadd.w"]["funct3"]] = "amoadd.w"
	ISA_AMO[isa["amoxor.w"]["funct5"] isa["amoxor.w"]["funct3"]] = "amoxor.w"
	ISA_AMO[isa["amoand.w"]["funct5"] isa["amoand.w"]["funct3"]] = "amoand.w"
	ISA_AMO[isa["amoor.w"]["funct5"] isa["amoor.w"]["funct3"]] = "amoor.w"
	ISA_AMO[isa["amomin.w"]["funct5"] isa["amomin.w"]["funct3"]] = "amomin.w"
	ISA_AMO[isa["amomax.w"]["funct5"] isa["amomax.w"]["funct3"]] = "amomax.w"
	ISA_AMO[isa["amominu.w"]["funct5"] isa["amominu.w"]["funct3"]] = "amominu.w"
	ISA_AMO[isa["amomaxu.w"]["funct5"] isa["amomaxu.w"]["funct3"]] = "amomaxu.w"

	ISA_AMO[isa["lr.d"]["funct5"] isa["lr.d"]["funct3"]] = "lr.d"
	ISA_AMO[isa["sc.d"]["funct5"] isa["sc.d"]["funct3"]] = "sc.d"
	ISA_AMO[isa["amoswap.d"]["funct5"] isa["amoswap.d"]["funct3"]] = "amoswap.d"
	ISA_AMO[isa["amoadd.d"]["funct5"] isa["amoadd.d"]["funct3"]] = "amoadd.d"
	ISA_AMO[isa["amoxor.d"]["funct5"] isa["amoxor.d"]["funct3"]] = "amoxor.d"
	ISA_AMO[isa["amoand.d"]["funct5"] isa["amoand.d"]["funct3"]] = "amoand.d"
	ISA_AMO[isa["amoor.d"]["funct5"] isa["amoor.d"]["funct3"]] = "amoor.d"
	ISA_AMO[isa["amomin.d"]["funct5"] isa["amomin.d"]["funct3"]] = "amomin.d"
	ISA_AMO[isa["amomax.d"]["funct5"] isa["amomax.d"]["funct3"]] = "amomax.d"
	ISA_AMO[isa["amominu.d"]["funct5"] isa["amominu.d"]["funct3"]] = "amominu.d"
	ISA_AMO[isa["amomaxu.d"]["funct5"] isa["amomaxu.d"]["funct3"]] = "amomaxu.d"

	ISA_AMO[isa["lr.q"]["funct5"] isa["lr.q"]["funct3"]] = "lr.q"
	ISA_AMO[isa["sc.q"]["funct5"] isa["sc.q"]["funct3"]] = "sc.q"
	ISA_AMO[isa["amoswap.q"]["funct5"] isa["amoswap.q"]["funct3"]] = "amoswap.q"
	ISA_AMO[isa["amoadd.q"]["funct5"] isa["amoadd.q"]["funct3"]] = "amoadd.q"
	ISA_AMO[isa["amoxor.q"]["funct5"] isa["amoxor.q"]["funct3"]] = "amoxor.q"
	ISA_AMO[isa["amoand.q"]["funct5"] isa["amoand.q"]["funct3"]] = "amoand.q"
	ISA_AMO[isa["amoor.q"]["funct5"] isa["amoor.q"]["funct3"]] = "amoor.q"
	ISA_AMO[isa["amomin.q"]["funct5"] isa["amomin.q"]["funct3"]] = "amomin.q"
	ISA_AMO[isa["amomax.q"]["funct5"] isa["amomax.q"]["funct3"]] = "amomax.q"
	ISA_AMO[isa["amominu.q"]["funct5"] isa["amominu.q"]["funct3"]] = "amominu.q"
	ISA_AMO[isa["amomaxu.q"]["funct5"] isa["amomaxu.q"]["funct3"]] = "amomaxu.q"
	
	ISA_LOAD_FP[FP_WIDTH["S"]] = "flw"
	ISA_LOAD_FP[FP_WIDTH["D"]] = "fld"
	ISA_LOAD_FP[FP_WIDTH["Q"]] = "flq"

	ISA_STORE_FP[FP_WIDTH["S"]] = "fsw"
	ISA_STORE_FP[FP_WIDTH["D"]] = "fsd"
	ISA_STORE_FP[FP_WIDTH["Q"]] = "fsq"

	ISA_MADD[FP_FMT["S"]] = "fmadd.s"
	ISA_MADD[FP_FMT["D"]] = "fmadd.d"
	ISA_MADD[FP_FMT["Q"]] = "fmadd.q"

	ISA_MSUB[FP_FMT["S"]] = "fmsub.s"
	ISA_MSUB[FP_FMT["D"]] = "fmsub.d"
	ISA_MSUB[FP_FMT["Q"]] = "fmsub.q"

	ISA_NMADD[FP_FMT["S"]] = "fnmadd.s"
	ISA_NMADD[FP_FMT["D"]] = "fnmadd.d"
	ISA_NMADD[FP_FMT["Q"]] = "fnmadd.q"

	ISA_NMSUB[FP_FMT["S"]] = "fnmsub.s"
	ISA_NMSUB[FP_FMT["D"]] = "fnmsub.d"
	ISA_NMSUB[FP_FMT["Q"]] = "fnmsub.q"

	ISA_OP_FP[isa["fadd.s"]["funct5"]][FP_FMT["S"]] = "fadd.s"
	ISA_OP_FP[isa["fadd.s"]["funct5"]][FP_FMT["D"]] = "fadd.d"
	ISA_OP_FP[isa["fadd.s"]["funct5"]][FP_FMT["Q"]] = "fadd.q"

	ISA_OP_FP[isa["fsub.s"]["funct5"]][FP_FMT["S"]] = "fsub.s"
	ISA_OP_FP[isa["fsub.s"]["funct5"]][FP_FMT["D"]] = "fsub.d"
	ISA_OP_FP[isa["fsub.s"]["funct5"]][FP_FMT["Q"]] = "fsub.q"

	ISA_OP_FP[isa["fmul.s"]["funct5"]][FP_FMT["S"]] = "fmul.s"
	ISA_OP_FP[isa["fmul.s"]["funct5"]][FP_FMT["D"]] = "fmul.d"
	ISA_OP_FP[isa["fmul.s"]["funct5"]][FP_FMT["Q"]] = "fmul.q"

	ISA_OP_FP[isa["fdiv.s"]["funct5"]][FP_FMT["S"]] = "fdiv.s"
	ISA_OP_FP[isa["fdiv.s"]["funct5"]][FP_FMT["D"]] = "fdiv.d"
	ISA_OP_FP[isa["fdiv.s"]["funct5"]][FP_FMT["Q"]] = "fdiv.q"

	ISA_OP_FP[isa["fsqrt.s"]["funct5"]][FP_FMT["S"]] = "fsqrt.s"
	ISA_OP_FP[isa["fsqrt.s"]["funct5"]][FP_FMT["D"]] = "fsqrt.d"
	ISA_OP_FP[isa["fsqrt.s"]["funct5"]][FP_FMT["Q"]] = "fsqrt.q"

	ISA_OP_FP[isa["fmv.w.x"]["funct5"]][FP_FMT["S"]] = "fmv.w.x"
	ISA_OP_FP[isa["fmv.d.x"]["funct5"]][FP_FMT["D"]] = "fmv.d.x"
	ISA_OP_FP[isa["fmv.q.x"]["funct5"]][FP_FMT["Q"]] = "fmv.q.x"
	
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["S"]][isa["fclass.s"]["funct3"]] = "fclass.s"
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["S"]][isa["fmv.x.w"]["funct3"]] = "fmv.x.w"
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["D"]][isa["fclass.d"]["funct3"]] = "fclass.d"
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["D"]][isa["fmv.x.d"]["funct3"]] = "fmv.x.d"
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["Q"]][isa["fclass.q"]["funct3"]] = "fclass.q"
	ISA_OP_FP[isa["fclass.s"]["funct5"]][FP_FMT["Q"]][isa["fmv.x.q"]["funct3"]] = "fmv.x.q"

	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["S"]][isa["fsgnj.s"]["funct3"]] = "fsgnj.s"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["S"]][isa["fsgnjn.s"]["funct3"]] = "fsgnjn.s"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["S"]][isa["fsgnjx.s"]["funct3"]] = "fsgnjx.s"

	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["D"]][isa["fsgnj.d"]["funct3"]] = "fsgnj.d"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["D"]][isa["fsgnjn.d"]["funct3"]] = "fsgnjn.d"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["D"]][isa["fsgnjx.d"]["funct3"]] = "fsgnjx.d"

	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["Q"]][isa["fsgnj.q"]["funct3"]] = "fsgnj.q"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["Q"]][isa["fsgnjn.q"]["funct3"]] = "fsgnjn.q"
	ISA_OP_FP[isa["fsgnj.s"]["funct5"]][FP_FMT["Q"]][isa["fsgnjx.q"]["funct3"]] = "fsgnjx.q"

	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["S"]][isa["fmin.s"]["funct3"]] = "fmin.s"
	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["S"]][isa["fmax.s"]["funct3"]] = "fmax.s"
	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["D"]][isa["fmin.d"]["funct3"]] = "fmin.d"
	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["D"]][isa["fmax.d"]["funct3"]] = "fmax.d"
	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["Q"]][isa["fmin.q"]["funct3"]] = "fmin.q"
	ISA_OP_FP[isa["fmin.s"]["funct5"]][FP_FMT["Q"]][isa["fmax.q"]["funct3"]] = "fmax.q"

	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["S"]][isa["feq.s"]["funct3"]] = "feq.s"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["S"]][isa["flt.s"]["funct3"]] = "flt.s"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["S"]][isa["fle.s"]["funct3"]] = "fle.s"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["D"]][isa["feq.d"]["funct3"]] = "feq.d"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["D"]][isa["flt.d"]["funct3"]] = "flt.d"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["D"]][isa["fle.d"]["funct3"]] = "fle.d"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["Q"]][isa["feq.q"]["funct3"]] = "feq.q"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["Q"]][isa["flt.q"]["funct3"]] = "flt.q"
	ISA_OP_FP[isa["feq.s"]["funct5"]][FP_FMT["Q"]][isa["fle.q"]["funct3"]] = "fle.q"
	
}
{
	input=$0
}
END {
	print input

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
		#print "decode", try
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
	bin = isa[mne]["funct7"] rs2 rs1 isa[mne]["funct3"] rd opcode
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
	bin = imm rs1 isa[mne]["funct3"] rd opcode
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
	bin = imm rs1 isa[mne]["funct3"] rd opcode
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
		imm_11_7 = "0" isa[mne]["shtyp"] "000"
		imm_6_0 = encimm(immediate, 7)
		
		imm = imm_11_7 imm_6_0
	} else {
		imm = encimm(immediate, 12)
	}
	bin = imm rs1 isa[mne]["funct3"] rd opcode
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
	bin = imm rs1 isa[mne]["funct3"] rd opcode
        print "bin", bin
        printf "hex %08x\n", b2n(bin)
}

function encodeSYSTEM() { 
	print "in encodeSYSTEM" 
	if (isa[mne]["isa"] == "Zicsr") {
		dest = tokens[2]
		csr = tokens[3]
		src = tokens[4]
		rd = encreg(dest)
		imm = encCSR(csr)

		rs1 = (substr(isa[mne]["funct3"],1,1) == "0") ? encreg(src) : encimm(src, 5)
	} else {
		rs1 = "00000"
		rd = "00000"
		imm = isa[mne]["funct12"]
	}
	bin = imm rs1 isa[mne]["funct3"] rd opcode
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
	floatInst = (isa[mne]["opcode"] == STORE_FP)
	rs2 = encreg(src)
	rs1 = encreg(base)
	imm = encimm(offset, len_4_0 + len_11_5)
	imm_11_5 = substr(imm, 0, len_11_5)
	imm_4_0 = substr(imm, len_11_5+1, len_11_5+len_4_0)
	bin = imm_11_5 rs2 rs1 isa[mne]["funct3"] imm_4_0 opcode
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

	bin = imm_12 imm_10_5 rs2 rs1 isa[mne]["funct3"] imm_4_1 imm_11 opcode
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
	rdRs1Val = isa[mne]["rdRs1Val"]
	print "- rdRs1Val", rdRs1Val
	if (rdRs1Val) {
		rdRs1 = encimm(rdRs1Val, 5)
	} else {
		rdRs1 = src1 ? encreg(src1) : "01000"
	}
	print "- rdRs1", rdRs1

	rs2Val = isa[mne]["rs2Val"]
	print "- rs2Val", rs2Val
	if (rs2Val) rs2 = encimm(rs2Val, 5)
	else rs2 = src2 ? encreg(src2) : "01000"
	print "- rs2", rs2
	rdRs1Excl = isa[mne]["rdRs1Excl"]
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
	rs2Excl = isa[mne]["rs2Excl"]
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

	bin = isa[mne]["funct4"] rdRs1 rs2 opcode
	print "bin", bin
	printf "hex %04x\n", b2n(bin)
}
function encodeCI() { 
	print "in encodeCI" 
	skipRdRs1 = (isa[mne]["rdRs1Val"])
	src1 = tokens[2]
	immediate = tokens[skipRdRs1 ? 2 : 3]
	floatRdRs1 = ( mne ~ /^c\.f/ )
	
	rdRs1 = skipRdRs1 ? encimm(isa[mne]["rdRs1Val"], 5) : (src1) ? encreg(src1, floatRdRs1) : "01000"
	immVal = isa[mne]["immVal"] ? strtonum(isa[mne]["immVal"]) : immediate # FIXME number

	if (isa[mne]["rdRs1Excl"]) {
		val = b2n(rdRs1)
		split(substr(rdRs1Excl,2, length(rdRs1Excl)-2), arrExcl, ",")
		for(excl in arrExcl) {
			                        if (val == excl) {
                                print "Illegal value",src2,"in rs2 field for instruction",mne
                                exit
                        }
                }
        }
	if (isa[mne]["nzimm"] && ( immVal == 0 || !immVal)) {
		if (immediate == "") {
			immVal = minImmFromBits(isa[mne]["immBits"])
		} else {
			print "Invalid immediate", immediate, ",", mne, "instruction expects non-zero value"
			exit
		}
	}
	if (isa[mne]["uimm"] && immVal < 0) {
		print "Invalid immediate", immediate, ",", mne, "instruction expects non-negative value"
		exit
	}
	immBits = isa[mne]["immBits"]
	split(immBits, immBitsArr, " ")
	imm0 = encImmBits(immVal, immBitsArr[1])
	imm1 = encImmBits(immVal, immBitsArr[2])

        bin = isa[mne]["funct3"] imm0 rdRs1 imm1 opcode
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

	if (isa[mne]["uimm"] && immVal < 0) {
		print "Invalid immediate", offset, ", this", mne, "instruction expects non-negative value"
		exit
	}

	immBits = isa[mne]["immBits"]
	print "freaking immBits", immBits
	imm = encImmBits(immVal, immBits)

	bin = isa[mne]["funct3"] imm rs2 opcode
	print "bin", bin
	printf "hex %04x\n", b2n(bin)
}
function encodeCIW() { 
	print "in encodeCIW" 
	dest = tokens[2]
	immediate = tokens[3]
	rdPrime = encRegPrime(dest)
	immVal = conv_num(immediate)
	
	immBits = isa[mne]["immBits"]
	if (isa[mne]["nzimm"] && (immVal == 0 || immediate == "")) {
		if (immediate == "") {
			immVal = minImmFromBits(immBits)
		} else {
			print "Invalid immediate", immediate, ", this", mne, "instruction expects non-zero value"
			exit
		}
	}

	if (isa[mne]["uimm"] && immVal < 0 ) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
		exit
	}

	imm = encImmBits(immVal, immBits)

	bin = isa[mne]["funct3"] imm rdPrime opcode
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

        if (isa[mne]["uimm"] && immVal < 0 ) {
		print "Invalid immediate", offset, ", this", mne, "instruction expects non-negative value"
                exit
        }

	immBits = isa[mne]["immBits"]
	split(immBits, abits, " ")
	imm0 = encImmBits(immVal, abits[1])
	imm1 = encImmBits(immVal, abits[2])

	bin = isa[mne]["funct3"] imm0 rs1Prime imm1 rdPrime opcode
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

        if (isa[mne]["uimm"] && immVal < 0 ) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
                exit
        }

	immBits = isa[mne]["immBits"]
	split(immBits, abits, " ")
	imm0 = encImmBits(immVal, abits[1])
	imm1 = encImmBits(immVal, abits[2])

	bin = isa[mne]["funct3"] imm0 rs1Prime imm1 rs2Prime opcode
	print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCA() { 
	print "in encodeCA" 
	destSrc1 = tokens[2]
	src2 = tokens[3]

	rdRs1Prime = encRegPrime(destSrc1)
	rs2Prime = encRegPrime(src2)

	bin = isa[mne]["funct6"] rdRs1Prime isa[mne]["funct2"] rs2Prime opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCB() { 
	print "in encodeCB" 
	destSrc1 = tokens[2]
	immediate = tokens[3]
	rdRs1Prime = encRegPrime(destSrc1)
	immVal = isa[mne]["immVal"] ? isa[mne]["immVal"] : conv_num(immediate)
	
	immBits = isa[mne]["immBits"]
	if (isa[mne]["nzimm"] && (immVal == 0 || immediate == "")) {
		if (immediate == "") {
			immVal = minImmFromBits(immBits)
		} else {
			print "Invalid immediate", immediate, ", this", mne, "instruction expects non-zero value"
			exit
		}
	}

	if (isa[mne]["uimm"] && immVal < 0) {
		print "Invalid immediate", immediate, ", this", mne, "instruction expects non-negative value"
                exit
	}
        split(immBits, abits, " ")
        imm0 = encImmBits(immVal, abits[1])
        imm1 = encImmBits(immVal, abits[2])

	funct2 = isa[mne]["funct2"]
	if (!funct2) funct2 = ""

        bin = isa[mne]["funct3"] imm0 funct2 rdRs1Prime imm1 opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}
function encodeCJ() { 
	print "in encodeCJ" 
	immediate = conv_num(tokens[2])
	jumpTarget = encImmBits(immediate, isa[mne]["immBits"])
	
	bin = isa[mne]["funct3"] jumpTarget opcode
        print "bin", bin
        printf "hex %04x\n", b2n(bin)
}

function encode(str) {
	n = split(str, tokens, /[ ,()]+/)
	mne = tokens[1]
	opcode = isa[mne]["opcode"]
	if (!opcode) {
		print "invalide opcode", mne
		exit
	}
	print opcode

	if (length(opcode) == 2) { 
		fmt = isa[mne]["fmt"]
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
	#print "apos[1], apos[2]", apos[1], apos[2], substr(binary, length(binary)-apos[1], apos[2])

	return substr(binary, length(binary)-apos[1], apos[2])
}
function decReg(reg, floatReg) {
	return (floatReg ? "f" : "x") b2n(reg)
}

function extractRFields(binary, a) {
	a["rs2"] = getBits(binary, FIELDS["rs2"]["pos"])
	a["rs1"] = getBits(binary, FIELDS["rs1"]["pos"])
	a["funct3"] = getBits(binary, FIELDS["funct3"]["pos"])
	a["rd"] = getBits(binary, FIELDS["rd"]["pos"])
	a["funct5"] = getBits(binary, FIELDS["r_funct5"]["pos"])
	a["funct7"] = getBits(binary, FIELDS["r_funct7"]["pos"])
	a["aq"] = getBits(binary, FIELDS["r_aq"]["pos"])
	a["rl"] = getBits(binary, FIELDS["r_rl"]["pos"])
	a["fmt"] = getBits(binary, FIELDS["r_fp_fmt"]["pos"])
}
function decodeOP(bin) { 
	print "decodeOP"
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

	build_f("opcode", FRAG["OPC"], mne, opcode, FIELDS["opcode"]["name"])
	build_f("funct3", FRAG["OPC"], mne, funct3, FIELDS["funct3"]["name"])
	build_f("funct7", FRAG["OPC"], mne, funct7, FIELDS["r_funct7"]["name"])
	build_f("rd", FRAG["RD"], dest, rd, FIELDS["rd"]["name"])
	build_f("rs1", FRAG["RS1"], src1, rs1, FIELDS["rs1"]["name"])
	build_f("rs2", FRAG["RS2"], src2, rs2, FIELDS["rs2"]["name"])
	
	printf "%s %s, %s, %s\n", mne, dest, src1, src2
	push_asm(f["opcode"])
	push_asm(f["rd"])
	push_asm(f["rs1"])
	push_asm(f["rs2"])

	disp_asm()
}
function decodeOP_FP(bin) { 
	print "decodeOP_FP" 
        extractRFields(bin, fields)                                                                                                                     
        funct5 = fields["funct5"]                                                                                                                       
        funct3 = fields["funct3"]                                                                                                                       
	fmt = fields["fmt"]
        rs2 = fields["rs2"]                                                                                                                             
        rs1 = fields["rs1"]                                                                                                                             
        rd = fields["rd"]                                                                                                                               

	print "funct5", funct5
	print "funct3", funct3
	print "fmt", fmt
	print "rs2", rs2
	print "rs1", rs1
	print "rd", rd
	if (typeof(ISA_OP_FP[funct5][fmt]) == "string") {
		mne = ISA_OP_FP[funct5][fmt]
	} else if (typeof(ISA_OP_FP[funct5][fmt]) == "array") {
		if (ISA_OP_FP[funct5][fmt][rs2] != "") {
			mne = ISA_OP_FP[funct5][fmt][rs2]
		} else {
			mne = ISA_OP_FP[funct5][fmt][funct3]
		}
	}
	if (mne == "") {
		print "Detected OP-FP instruction but invalid funct and fmt field"
		exit
	}
	print "insn", mne
	instr[0] = 0
	delete instr[0]
	if (typeof(isa[mne]) == "array") {
		
	}
	for(e in isa[mne]) {
		print "["e"] = ", isa[mne][e]
	}
	useRs2 = (isa[mne]["rs2"] == "")

	floatRd = 1
	floatRs1 = 1
	
	if (substr(funct5, 1, 1) == "1") {
		if (substr(funct5, 4, 1) == 1) {
			floatRs1 = 0
		} else {
			floatRd = false
		}
	}
	src1 = decReg(rs1, floatRs1)
	src2 = decReg(rs2, 1)
	dest = decReg(rd, floatRd)
	
	useRm = (funct3 == "")

	build_f("opcode", FRAG["OPC"], mne, opcode, FIELDS["opcode"]["name"])
	build_f("funct3", FRAG["OPC"], mne, funct3, useRm ? "rm" : FIELDS["funct3"]["name"])
	build_f("funct5", FRAG["OPC"], mne, funct5, FIELDS["r_funct5"]["name"])
	build_f("fmt", FRAG["OPC"], mne, fmt, FIELDS["r_fp_fmt"]["name"])
	build_f("rd", FRAG["RD"], dest, opcode, FIELDS["rd"]["name"])
	build_f("rs1", FRAG["RS1"], src1, opcode, FIELDS["rs1"]["name"])
	build_f("rs2", FRAG["RS2"], src2, opcode, FIELDS["rs2"]["name"])
	push_asm(f["opcode"])
	push_asm(f["rd"])
	push_asm(f["rs1"])
	if (useRs2) {
		f["rs2"]["id"] = FRAG["RS2"]
		push_asm(f["rs2"])
		printf "%s %s, %s, %s\n", mne, dest, src1, src2
	} else {
		printf "%s %s, %s\n", mne, dest, src1
	}
	disp_asm()
		
}
function decodeAMO(bin) { 
	print "decodeAMO" 
	extractRFields(bin, fields)
	funct5 = fields["funct5"]
	aq = fields["aq"]
	rl = fields["rl"]
	rs2 = fields["rs2"]
	rs1 = fields["rs1"]
	funct3 = fields["funct3"]
	rd = fields["rd"]

	mne = ISA_AMO[funct5 funct3]
	if (mne == "") {
		print "Detected AMO instruction but invalid funct5 and funct3 fields";
		exit
	}

	lr = (mme ~ /^lr\./)
	dest = decReg(rd)
	addr = decReg(rs1)
	src = lr ? "n/a" : decReg(rs2)
	
	build_f("opcode", FRAG["OPC"] , mne , opcode, FIELDS["opcode"]["name"])
	build_f("rd", FRAG["RD"], dest, rd, FIELDS["rd"]["name"])
	build_f("funct3", FRAG["OPC"], mne, funct3, FIELDS["funct3"]["name"])
	build_f("rs1", FRAG["RS1"], addr, rs1, FIELDS["rs1"]["name"], f["rs1"]["mem"] = 1)
	build_f("rs2", FRAG["OPC"], src, rs2, FIELDS["rs2"]["name"])
	build_f("rl", FRAG["OPC"], mne, rl, FIELDS["r_rl"]["name"])
	build_f("aq", FRAG["OPC"], mne, aq, FIELDS["r_aq"]["name"])
	build_f("funct5", FRAG["OPC"], mne, funct5, FIELDS["r_funct5"]["name"])
	
	push_asm(f["opcode"])
	push_asm(f["rd"])
	if (!lr) {
		f["rs2"]["id"] = FRAG["RS2"]
		push_asm(f["rs2"])
	} 
	push_asm(f["rs1"])
	disp_asm()
}

function decodeJALR(bin) { print "decodeJALR" }
function decodeLOAD(bin) { print "decodeLOAD" }
function decodeOP_IMM(bin) { print "decodeOP_IMM" }
function decodeMISC_MEM(bin) { print "decodeMISC_MEM" }
function decodeSYSTEM(bin) { print "decodeSYSTEM" }
function decodeSTORE(bin) { print "decodeSTORE" }
function decodeBRANCH(bin) { print "decodeBRANCH" }
function decodeUType(bin) { print "decodeUType" }
function decodeJAL(bin) { print "decodeJAL" }
function decodeR4(bin) { print "decodeR4" }

function build_f(col, id, asm, bits, field, mem) {
	f[col]["id"] = id
	f[col]["asm"] = asm
	f[col]["bits"] = bits
	f[col]["field"] = field
	if (mem) { 
		f[col]["mem"] = 1
	}
}
function disp_asm() {
	for(n in asmFrags) {
		asm = asmFrags[n]["asm"]
		if (asmFrags[n]["mem"] == 1) {
			asm = "(" asm ")"
		}
		asmToken[n] = asm
	}
	inst = asmToken[1]
	for(i = 2; i <= length(asmToken); i++) {
		if (i == 2) inst=inst " "
		else if (! asmFrags[i]["mem"] || (asmFrags[i-1]["field"] !~ /^(?:nz)?(?:u)?imm/)) {
			inst = inst ", "
		}
		inst = inst asmToken[i]
	}
	print inst
}
function push_asm(x) {
	k++
	asmFrags[k]["id"] = x["id"]
	asmFrags[k]["asm"] = x["asm"]
	asmFrags[k]["bits"] = x["bits"]
	asmFrags[k]["field"] = x["field"]
	asmFrags[k]["mem"] = x["mem"]
}

function decode(bin) {
	
	opcode = getBits(bin, FIELDS["opcode"]["pos"])
	#print "opcode", opcode

	# 32-bits opcodes
	#print substr(opcode, length(opcode)-1)
	if (substr(opcode, length(opcode)-1) == "11") {
		switch(opcode) {
			case "0110011": # OP
			case "0111011": # OP_32
			case "1111011": # OP_64
				decodeOP(bin); break;
			case "1010011": # OP_FP
				decodeOP_FP(bin); break;
			case "0101111": # AMO
				decodeAMO(bin); break;
			case "1100111": # JALR
				decodeJALR(bin); break;
			case "0000011": # LOAD
			case "0000111": # LOAD_FP
				decodeLOAD(bin); break;
			case "0010011": # OP_IMM
			case "0011011": # OP_IMM_32
			case "1011011": # OP_IMM_64
				decodeOP_IMM(bin); break;
			case "0001111": # MISC_MEM
				decodeMISC_MEM(bin); break;
			case "1110011": # SYSTEM
				decodeSYSTEM(bin); break;
			case "0100011": # STORE
			case "0100111": # STORE_FP
				decodeSTORE(bin); break;
			case "1100011": # BRANCH
				decodeBRANCH(bin); break;
			case "0110111": # LUI
			case "0010111": # AUIPC
				decodeUType(bin); break;
			case "1101111": # JAL
				decodeJAL(bin); break;
			case "1000011": # MADD
			case "1000111": # MSUB
			case "1001111": # NMADD
			case "1001011": # NMSUB
				decodeR4(bin); break;
			default:
				print "Invalid opcode:", opcode
				exit
		}
	}
}
