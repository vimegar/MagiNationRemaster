;********************************
; ANIM_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?BOXXLE_AI
	CALL		?ANIM_AI

	LDA_FF		AI_HEROFLAGS
	BIT			HEROFLAGS_BOXXLE,A
	RET			Z

	GET16_FF	D,E,ACTOR_TILE
	LD			A,(AI_BOX_SOURCE)
	CP			E
	RET			NZ
	LD			A,(AI_BOX_SOURCE+$01)
	CP			D
	RET			NZ

	GET16_FF	H,L,ACTOR_CURRENT
	LD			BC,ACTOR_STRUCT_XTILE
	ADD			HL,BC
	LD			BC,AI_BOX_XDEST

	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI

	RET

;********************************
	END
;********************************