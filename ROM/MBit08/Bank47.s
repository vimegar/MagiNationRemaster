;********************************
; BANK47.S - CREATURE BG DATA
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK47	GROUP	$47				; Specify bank group.
		ORG		$4000

	
	if 0
;test Furok 	<-16->
;Width
;DB 10
;Height
;DB 8
BG_TEST
	DB	$0E,$0E,$00,$0E,$01,$02,$0E,$03,$04,$05,$0E,$0E,$06,$07,$08,$09
	DB  $0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19
	DB	$1A,$1B,$1C,$1D,$1E,$1F,$20,$0E,$21,$22,$23,$24,$25,$26,$27,$28
	DB	$29,$0E,$2A,$2B,$2C,$2D,$2E,$2F,$30,$31,$32,$33,$34,$35,$36,$37
	DB	$38,$39,$3A,$3B,$3C,$3D,$3E,$3F,$40,$41,$42,$43,$0E,$44,$45,$0E

BG_TEST_ATTRIB
	DB	$20,$20,$01,$20,$01,$01,$20,$00,$00,$01,$20,$20,$01,$01,$01,$01
	DB  $01,$00,$01,$01,$00,$01,$02,$02,$02,$01,$01,$01,$01,$01,$01,$02
	DB	$02,$02,$02,$02,$02,$02,$01,$20,$01,$02,$01,$02,$02,$02,$02,$02
	DB	$01,$20,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02,$01,$02
	DB	$02,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$20,$01,$01,$20
	endif

;********************************
	END
;********************************