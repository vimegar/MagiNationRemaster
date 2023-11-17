;********************************
; ENCOUNTER_TABLE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
DELAY_RND_TABLES
ENCOUNTER_FRQ_TABLES

;********************************
DELAY_RND_HYPER
ENCOUNTER_FRQ_HYPER
	DB		$11		;10
	DB		$04		;4
	DB		$06		;9
	DB		$03		;10
	DB		$09		;14
	DB		$10		;7
	DB		$0A		;15
	DB		$0B		;20
	DB		$0E		;20
	DB		$0C		;25
	DB		$08		;9
	DB		$07		;14
	DB		$09		;9
	DB		$0C		;25
	DB		$03		;8
	DB		$04		;3

;********************************
DELAY_RND_FAST
ENCOUNTER_FRQ_FAST
	DB		$48		;10
	DB		$1E		;4
	DB		$43		;9
	DB		$48		;10
	DB		$69		;14
	DB		$34		;7
	DB		$70		;15
	DB		$96		;20
	DB		$96		;20
	DB		$BB		;25
	DB		$43		;9
	DB		$69		;14
	DB		$43		;9
	DB		$BB		;25
	DB		$3C		;8
	DB		$16		;3

;********************************
DELAY_RND_NORM
ENCOUNTER_FRQ_NORM
	DB		$48		;10
	DB		$E1		;30
	DB		$43		;9
	DB		$48		;10
	DB		$69		;14
	DB		$48		;10
	DB		$16		;3
	DB		$70		;15
	DB		$B4		;24
	DB		$96		;20
	DB		$BB		;25
	DB		$48		;10
	DB		$69		;14
	DB		$C3		;26
	DB		$BB		;25
	DB		$3C		;8

;********************************
DELAY_RND_SLOW
ENCOUNTER_FRQ_SLOW
	DB		$B4		;seconds = (num * 4)/60
	DB		$3C		;8
	DB		$D2		;28
	DB		$E1		;30
	DB		$36		;3
	DB		$E1		;30
	DB		$34		;7
	DB		$70		;15
	DB		$B4		;24
	DB		$34		;7
	DB		$FE		;32
	DB		$48		;10
	DB		$36		;3
	DB		$C3		;26
	DB		$E1		;30

;********************************
DELAY_RND_SUPERSLOW
ENCOUNTER_FRQ_SUPERSLOW
	DB		$B4		;seconds = (num * 4)/60
	DB		$AC		;8
	DB		$D2		;28
	DB		$E1		;30
	DB		$FF		;3
	DB		$E1		;30
	DB		$A4		;7
	DB		$C0		;15
	DB		$B4		;24
	DB		$A4		;7
	DB		$FE		;32
	DB		$C8		;10
	DB		$FF		;3
	DB		$C3		;26
	DB		$E1		;30

;********************************
	END
;********************************