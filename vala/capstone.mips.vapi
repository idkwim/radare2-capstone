[CCode (cprefix="CS_")]
namespace Capstone {
	[CCode (cname="cs_mips", cheader_filename="mips.h")]
	public struct MIPS {
		uint8 op_count;
		MipsOp operands[8];
	}

	[CCode (cname="mips_reg", cprefix="MIPS_SFT_", cheader_filename="mips.h")]
	public enum MipsShifter {
		INVALID = 0,
		ASR,
		LSL,
		LSR,
		ROR,
		RRX,
		ASR_REG,
		LSL_REG,
		LSR_REG,
		ROR_REG,
		RRX_REG,
	}

	[CCode (cname="mips_reg", cprefix="MIPS_CC_", cheader_filename="mips.h")]
	public enum MipsCC {
		INVALID = 0,
		EQ,
		NE,
		HS,
		LO,
		MI,
		PL,
		VS,
		VC,
		HI,
		LS,
		GE,
		LT,
		GT,
		LE,
		AL		
	}

	[CCode (cname="")]
	public struct MipsShift {
		MipsShifter type;
		uint value;
	}

	[CCode (cname="cs_mips_op", cheader_filename="mips.h")]
	public struct MipsOp {
		MipsOpType type;
		// union
		uint reg;
		int64 imm;
		MipsOpMem mem;
	}

	[CCode (cname="mips_reg", cprefix="MIPS_OP_", cheader_filename="mips.h")]
	public enum MipsOpType {
		INVALID = 0,
		REG,
		IMM,
		MEM
	}

	[CCode (cname="mips_op_mem", cheader_filename="mips.h")]
	public struct MipsOpMem {
		uint base;
		int64 disp;
	}

	[CCode (cname="mips_insn", cprefix="MIPS_INS_", cheader_filename="mips.h")]
	public enum MipsInsn {
		INVALID = 0,

		ABSQ_S,
		ADD,
		ADDQH,
		ADDQH_R,
		ADDQ,
		ADDQ_S,
		ADDSC,
		ADDS_A,
		ADDS_S,
		ADDS_U,
		ADDUH,
		ADDUH_R,
		ADDU,
		ADDU_S,
		ADDVI,
		ADDV,
		ADDWC,
		ADD_A,
		ADDI,
		ADDIU,
		AND,
		ANDI,
		APPEND,
		ASUB_S,
		ASUB_U,
		AVER_S,
		AVER_U,
		AVE_S,
		AVE_U,
		BALIGN,
		BC1F,
		BC1T,
		BCLRI,
		BCLR,
		BEQ,
		BGEZ,
		BGEZAL,
		BGTZ,
		BINSLI,
		BINSL,
		BINSRI,
		BINSR,
		BITREV,
		BLEZ,
		BLTZ,
		BLTZAL,
		BMNZI,
		BMNZ,
		BMZI,
		BMZ,
		BNE,
		BNEGI,
		BNEG,
		BNZ,
		BPOSGE32,
		BREAK,
		BSELI,
		BSEL,
		BSETI,
		BSET,
		BZ,
		BEQZ,
		B,
		BNEZ,
		BTEQZ,
		BTNEZ,
		CEIL,
		CEQI,
		CEQ,
		CFC1,
		CFCMSA,
		CLEI_S,
		CLEI_U,
		CLE_S,
		CLE_U,
		CLO,
		CLTI_S,
		CLTI_U,
		CLT_S,
		CLT_U,
		CLZ,
		CMPGDU,
		CMPGU,
		CMPU,
		CMP,
		COPY_S,
		COPY_U,
		CTC1,
		CTCMSA,
		CVT,
		C,
		CMPI,
		DADD,
		DADDI,
		DADDIU,
		DADDU,
		DCLO,
		DCLZ,
		DERET,
		DEXT,
		DEXTM,
		DEXTU,
		DI,
		DINS,
		DINSM,
		DINSU,
		DIV_S,
		DIV_U,
		DMFC0,
		DMFC1,
		DMFC2,
		DMTC0,
		DMTC1,
		DMTC2,
		DMULT,
		DMULTU,
		DOTP_S,
		DOTP_U,
		DPADD_S,
		DPADD_U,
		DPAQX_SA,
		DPAQX_S,
		DPAQ_SA,
		DPAQ_S,
		DPAU,
		DPAX,
		DPA,
		DPSQX_SA,
		DPSQX_S,
		DPSQ_SA,
		DPSQ_S,
		DPSUB_S,
		DPSUB_U,
		DPSU,
		DPSX,
		DPS,
		DROTR,
		DROTR32,
		DROTRV,
		DSBH,
		DDIV,
		DSHD,
		DSLL,
		DSLL32,
		DSLLV,
		DSRA,
		DSRA32,
		DSRAV,
		DSRL,
		DSRL32,
		DSRLV,
		DSUBU,
		DDIVU,
		DIV,
		DIVU,
		EI,
		ERET,
		EXT,
		EXTP,
		EXTPDP,
		EXTPDPV,
		EXTPV,
		EXTRV_RS,
		EXTRV_R,
		EXTRV_S,
		EXTRV,
		EXTR_RS,
		EXTR_R,
		EXTR_S,
		EXTR,
		ABS,
		FADD,
		FCAF,
		FCEQ,
		FCLASS,
		FCLE,
		FCLT,
		FCNE,
		FCOR,
		FCUEQ,
		FCULE,
		FCULT,
		FCUNE,
		FCUN,
		FDIV,
		FEXDO,
		FEXP2,
		FEXUPL,
		FEXUPR,
		FFINT_S,
		FFINT_U,
		FFQL,
		FFQR,
		FILL,
		FLOG2,
		FLOOR,
		FMADD,
		FMAX_A,
		FMAX,
		FMIN_A,
		FMIN,
		MOV,
		FMSUB,
		FMUL,
		MUL,
		NEG,
		FRCP,
		FRINT,
		FRSQRT,
		FSAF,
		FSEQ,
		FSLE,
		FSLT,
		FSNE,
		FSOR,
		FSQRT,
		SQRT,
		FSUB,
		SUB,
		FSUEQ,
		FSULE,
		FSULT,
		FSUNE,
		FSUN,
		FTINT_S,
		FTINT_U,
		FTQ,
		FTRUNC_S,
		FTRUNC_U,
		HADD_S,
		HADD_U,
		HSUB_S,
		HSUB_U,
		ILVEV,
		ILVL,
		ILVOD,
		ILVR,
		INS,
		INSERT,
		INSV,
		INSVE,
		J,
		JAL,
		JALR,
		JR,
		JRC,
		JALRC,
		LB,
		LBUX,
		LBU,
		LD,
		LDC1,
		LDC2,
		LDI,
		LDL,
		LDR,
		LDXC1,
		LH,
		LHX,
		LHU,
		LL,
		LLD,
		LSA,
		LUXC1,
		LUI,
		LW,
		LWC1,
		LWC2,
		LWL,
		LWR,
		LWX,
		LWXC1,
		LWU,
		LI,
		MADD,
		MADDR_Q,
		MADDU,
		MADDV,
		MADD_Q,
		MAQ_SA,
		MAQ_S,
		MAXI_S,
		MAXI_U,
		MAX_A,
		MAX_S,
		MAX_U,
		MFC0,
		MFC1,
		MFC2,
		MFHC1,
		MFHI,
		MFLO,
		MINI_S,
		MINI_U,
		MIN_A,
		MIN_S,
		MIN_U,
		MODSUB,
		MOD_S,
		MOD_U,
		MOVE,
		MOVF,
		MOVN,
		MOVT,
		MOVZ,
		MSUB,
		MSUBR_Q,
		MSUBU,
		MSUBV,
		MSUB_Q,
		MTC0,
		MTC1,
		MTC2,
		MTHC1,
		MTHI,
		MTHLIP,
		MTLO,
		MULEQ_S,
		MULEU_S,
		MULQ_RS,
		MULQ_S,
		MULR_Q,
		MULSAQ_S,
		MULSA,
		MULT,
		MULTU,
		MULV,
		MUL_Q,
		MUL_S,
		NLOC,
		NLZC,
		NMADD,
		NMSUB,
		NOR,
		NORI,
		NOT,
		OR,
		ORI,
		PACKRL,
		PCKEV,
		PCKOD,
		PCNT,
		PICK,
		PRECEQU,
		PRECEQ,
		PRECEU,
		PRECRQU_S,
		PRECRQ,
		PRECRQ_RS,
		PRECR,
		PRECR_SRA,
		PRECR_SRA_R,
		PREPEND,
		RADDU,
		RDDSP,
		RDHWR,
		REPLV,
		REPL,
		ROTR,
		ROTRV,
		ROUND,
		RESTORE,
		SAT_S,
		SAT_U,
		SB,
		SC,
		SCD,
		SD,
		SDC1,
		SDC2,
		SDL,
		SDR,
		SDXC1,
		SEB,
		SEH,
		SH,
		SHF,
		SHILO,
		SHILOV,
		SHLLV,
		SHLLV_S,
		SHLL,
		SHLL_S,
		SHRAV,
		SHRAV_R,
		SHRA,
		SHRA_R,
		SHRLV,
		SHRL,
		SLDI,
		SLD,
		SLL,
		SLLI,
		SLLV,
		SLT,
		SLTI,
		SLTIU,
		SLTU,
		SPLATI,
		SPLAT,
		SRA,
		SRAI,
		SRARI,
		SRAR,
		SRAV,
		SRL,
		SRLI,
		SRLRI,
		SRLR,
		SRLV,
		ST,
		SUBQH,
		SUBQH_R,
		SUBQ,
		SUBQ_S,
		SUBSUS_U,
		SUBSUU_S,
		SUBS_S,
		SUBS_U,
		SUBUH,
		SUBUH_R,
		SUBU,
		SUBU_S,
		SUBVI,
		SUBV,
		SUXC1,
		SW,
		SWC1,
		SWC2,
		SWL,
		SWR,
		SWXC1,
		SYNC,
		SYSCALL,
		SAVE,
		TEQ,
		TEQI,
		TGE,
		TGEI,
		TGEIU,
		TGEU,
		TLT,
		TLTI,
		TLTIU,
		TLTU,
		TNE,
		TNEI,
		TRUNC,
		VSHF,
		WAIT,
		WRDSP,
		WSBH,
		XOR,
		XORI,

		NOP,

		MAX,
	}


	[CCode (cname="mips_reg", cprefix="MIPS_REG_", cheader_filename="mips.h")]
	public enum MipsReg {
		INVALID = 0,
		@0,
		@1,
		@2,
		@3,
		@4,
		@5,
		@6,
		@7,
		@8,
		@9,
		@10,
		@11,
		@12,
		@13,
		@14,
		@15,
		@16,
		@17,
		@18,
		@19,
		@20,
		@21,
		@22,
		@23,
		@24,
		@25,
		@26,
		@27,
		@28,
		@29,
		@30,
		@31,
		DSPCCOND,
		DSPCARRY,
		DSPEFI,
		DSPOUTFLAG,
		DSPOUTFLAG16_19,
		DSPOUTFLAG20,
		DSPOUTFLAG21,
		DSPOUTFLAG22,
		DSPOUTFLAG23,
		DSPPOS,
		DSPSCOUNT,
		AC0,
		AC1,
		AC2,
		AC3,

		F0,
		F1,
		F2,
		F3,
		F4,
		F5,
		F6,
		F7,
		F8,
		F9,
		F10,
		F11,
		F12,
		F13,
		F14,
		F15,
		F16,
		F17,
		F18,
		F19,
		F20,
		F21,
		F22,
		F23,
		F24,
		F25,
		F26,
		F27,
		F28,
		F29,
		F30,
		F31,

		FCC0,
		FCC1,
		FCC2,
		FCC3,
		FCC4,
		FCC5,
		FCC6,
		FCC7,

		W0,
		W1,
		W2,
		W3,
		W4,
		W5,
		W6,
		W7,
		W8,
		W9,
		W10,
		W11,
		W12,
		W13,
		W14,
		W15,
		W16,
		W17,
		W18,
		W19,
		W20,
		W21,
		W22,
		W23,
		W24,
		W25,
		W26,
		W27,
		W28,
		W29,
		W30,
		W31,

		MAX,

		ZERO = @0,
		AT = @1,
		V0 = @2,
		V1 = @3,
		A0 = @4,
		A1 = @5,
		A2 = @6,
		A3 = @7,
		T0 = @8,
		T1 = @9,
		T2 = @10,
		T3 = @11,
		T4 = @12,
		T5 = @13,
		T6 = @14,
		T7 = @15,
		S0 = @16,
		S1 = @17,
		S2 = @18,
		S3 = @19,
		S4 = @20,
		S5 = @21,
		S6 = @22,
		S7 = @23,
		T8 = @24,
		T9 = @25,
		K0 = @26,
		K1 = @27,
		GP = @28,
		SP = @29,
		FP = @30,
		S8 = @30,
		RA = @31,

		HI0 = AC0,
		HI1 = AC1,
		HI2 = AC2,
		HI3 = AC3,

		LO0 = HI0,
		LO1 = HI1,
		LO2 = HI2,
		LO3 = HI3,
	}

	[CCode (cname="mips_insn_group", cprefix="MIPS_GRP_", cheader_filename="mips.h")]
	public enum MipsInsnGroup {
		INVALID = 0,
		BITCOUNT,
		DSP,
		DSPR2,
		FPIDX,
		MSA,
		MIPS32R2,
		MIPS64,
		MIPS64R2,
		SEINREG,
		STDENC,
		SWAP,
		MICROMIPS,
		MIPS16MODE,
		FP64BIT,
		NONANSFPMATH,
		NOTFP64BIT,
		NOTINMICROMIPS,
		JUMP,
		MAX,
	}
}
