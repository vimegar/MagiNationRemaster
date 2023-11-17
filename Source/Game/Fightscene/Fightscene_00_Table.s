;********************************
; FIGHTSCENE_TABLE.S
;********************************
;	Author:	EMG
;	(c)2000	Interactive Imagination
;	All rights reserved
;   TABLE FOR JUSTIFICATION OF CREATURES

;********************************
	
DEST_XOFFSET_TABLE
	;RIGHT_EDGE JUSTIFCATION TO 1 TILE (HENCE THE 1)
	DB	3;8		;0
	DB	3;8		;1		
	DB	2;7		;2
	DB	2;7		;3
	DB	2;6		;4
	DB	2;6		;5
	DB	1;5		;6
	DB	1;5		;7
	DB	1;4		;8
	DB	1;4		;9
	DB	1;3		;10
	DB	1;3		;11
	DB	1;2		;12
	DB	1;2		;13
	DB	1		;14
	DB	1		;15
	DB	0		;16

DEST_YOFFSET_TABLE
	;CENTER HEIGHT
	DB	224		;0
	DB	224		;1		
	DB	224		;2
	DB	192;224	;3
	DB	160;192	;4
	DB	128;160	;5
	DB	96 ;128	;6
	DB	96		;7
	DB	64		;8
	DB	32		;9    ;1 TILE DOWN FROM THE TOP BORDER
	DB	0		;10  
	DB	0		;11
	DB	0		;12  
	
	
;********************************
	END
;********************************