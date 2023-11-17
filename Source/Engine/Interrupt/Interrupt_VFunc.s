;********************************
; INTERRUPT_VFUNC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?VBLANK_COPY_BYTE
	RET

;********************************
?VBLANK_COPY_TILE
	
	FGET16	B,C,VBLANK_DEST
	FGET16	H,L,VBLANK_SOURCE

	LD		A,(VBLANK_VBK)
	LD		(VBK),A

	; COPY ONE TILE
	;--------------------------------
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI

	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI

	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI

	SET16	H,L,VBLANK_SOURCE
	FSET16	B,C,VBLANK_DEST

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET

;********************************
?VBLANK_IDLE
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET

;********************************
	END
;********************************