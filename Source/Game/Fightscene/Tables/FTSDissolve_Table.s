;*************************************
	; i assume i can affect 2 sets of pixel changes per blank
TD1	
	DB	$00,$33, $01,$33    ;1 byte base offset | 1byte pixels base
TD2	
	DB	$02,$CC, $03,$CC
TD3	
	DB	$04,$33, $05,$33
TD4	
	DB	$06,$CC, $07,$CC
	
TD5	
	DB	$08,$33, $09,$33
TD6	
	DB	$0A,$CC, $0B,$CC
TD7	
	DB	$0C,$33, $0D,$33
TD8	
	DB	$0E,$CC, $0F,$CC
	
TD9
	DB	$00,$CC, $01,$CC   
TD10	
	DB	$02,$33, $03,$33
TD11	
	DB	$04,$CC, $05,$CC
TD12	
	DB	$06,$33, $07,$33

TD13	
	DB	$08,$CC, $09,$CC
TD14
	DB	$0A,$33, $0B,$33
TD15	
	DB	$0C,$CC, $0D,$CC
TD16	
	DB	$0E,$33, $0F,$33

TD17	
	DB	$45,$4D, $4F,$52
TD18	
	DB	$59,$38, $32,$32
TD19	
	DB	$35,$30, $02,$9A
TD20	
	DB	$00,$00, $00,$00
	

;*****************************************	
TD_FAST1	
	DB	$00,$00, $01,$00 ;DRAW PIXEL
TD_FAST2	
	DB	$02,$00, $03,$00 
TD_FAST3	
	DB	$04,$00, $05,$00 
TD_FAST4	
	DB	$06,$00, $07,$00 
TD_FAST5	
	DB	$08,$00, $09,$00 
TD_FAST6	
	DB	$0A,$00, $0B,$00 
TD_FAST7	
	DB	$0C,$00, $0D,$00 
TD_FAST8	
	DB	$0E,$00, $0F,$00 
		
;*****************************************
	IF 0  ; this draws an 'X' on tiles
TD_TEST1	
	DB	$00,$7F, $01,$7F ;DRAW PIXEL
TD_TEST2	
	DB	$02,$BF, $03,$BF 
TD_TEST3	
	DB	$04,$DF, $05,$DF 
TD_TEST4	
	DB	$06,$EF, $07,$EF 
TD_TEST5	
	DB	$08,$F7, $09,$F7 
TD_TEST6	
	DB	$0A,$FB, $0B,$FB 
TD_TEST7	
	DB	$0C,$FD, $0D,$FD 
TD_TEST8	
	DB	$0E,$FE, $0F,$FE 
	
TD_TEST9	
	DB	$00,$FE, $01,$FE 
TD_TEST10	
	DB	$02,$FD, $03,$FD 
TD_TEST11	
	DB	$04,$FB, $05,$FB 
TD_TEST12	
	DB	$06,$F7, $07,$F7 
TD_TEST13	
	DB	$08,$EF, $09,$EF 
TD_TEST14	
	DB	$0A,$DF, $0B,$DF 
TD_TEST15	
	DB	$0C,$BF, $0D,$BF 
TD_TEST16	
	DB	$0E,$7F, $0F,$7F 	

;----------------------------
TILEFX_DESTROY_TABLE_TEST:
	DW	(TD_TEST1 & $FFFF)		
	DW	(TD_TEST2 & $FFFF)		
	DW	(TD_TEST3 & $FFFF)		
	DW	(TD_TEST4 & $FFFF)
	DW	(TD_TEST5 & $FFFF)		
	DW	(TD_TEST6 & $FFFF)		
	DW	(TD_TEST7 & $FFFF)		
	DW	(TD_TEST8 & $FFFF)
	DW	(TD_TEST9 & $FFFF)
	DW	(TD_TEST10 & $FFFF)
	DW	(TD_TEST11 & $FFFF)
	DW	(TD_TEST12 & $FFFF)
	DW	(TD_TEST13 & $FFFF)
	DW	(TD_TEST14 & $FFFF)
	DW	(TD_TEST15 & $FFFF)
	DW	(TD_TEST16 & $FFFF)
	
	ENDIF
	
;----------------------------
TILEFX_DESTROY_TABLE_FAST:
	DW	(TD_FAST1 & $FFFF)		
	DW	(TD_FAST2 & $FFFF)		
	DW	(TD_FAST3 & $FFFF)		
	DW	(TD_FAST4 & $FFFF)
	DW	(TD_FAST5 & $FFFF)		
	DW	(TD_FAST6 & $FFFF)		
	DW	(TD_FAST7 & $FFFF)		
	DW	(TD_FAST8 & $FFFF)
		
;----------------------------
TILEFX_DESTROY_TABLE_DEFAULT:
	DW	(TD1 & $FFFF)		
	DW	(TD2 & $FFFF)		
	DW	(TD3 & $FFFF)		
	DW	(TD4 & $FFFF)
	DW	(TD5 & $FFFF)		
	DW	(TD6 & $FFFF)		
	DW	(TD7 & $FFFF)		
	DW	(TD8 & $FFFF)
	DW	(TD9 & $FFFF)		
	DW	(TD10 & $FFFF)		
	DW	(TD11 & $FFFF)		
	DW	(TD12 & $FFFF)
	DW	(TD13 & $FFFF)		
	DW	(TD14 & $FFFF)		
	DW	(TD15 & $FFFF)		
	DW	(TD16 & $FFFF)
	DW	(TD17 & $FFFF)
	DW	(TD18 & $FFFF)
	DW	(TD19 & $FFFF)
	DW	(TD20 & $FFFF)
	