;********************************
; BANK05.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK05	GROUP	$05			; Specify bank group.
		ORG		$4000
		
;********************************		
		LIB		SOURCE\GAME\BATTLE\BATTLE_05.S
		LIB		SOURCE\ENGINE\COLLISION\COLL.S
		
;********************************
	END
;********************************