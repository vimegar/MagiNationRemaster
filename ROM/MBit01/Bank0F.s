;********************************
; BANK0F.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK0F	GROUP	$0F				; Specify bank group.
		ORG		$4000

;*******CHARACTER FRAMES AND ANIMS

		LIB		MANUAL\S\SPR_MOBIS.S
		LIB		SCRIPTS\CHARACTERS\MOBIS\MOBIS_ANIM.S

		LIB		MANUAL\S\SPR_MORAG.S
		LIB		MANUAL\S\SPR_MORAGTHROW.S
		LIB		MANUAL\S\SPR_MORAGHURT.S
		LIB		MANUAL\S\SPR_MORAGBATTLE.S
		LIB		SCRIPTS\CHARACTERS\MORAG\MORAG_ANIM.S

		LIB		MANUAL\S\SPR_OGAR.S
		LIB		MANUAL\S\SPR_OGARBATTLE.S
		LIB		SCRIPTS\CHARACTERS\OGAR\OGAR_ANIM.S

		LIB		MANUAL\S\SPR_ORLON.S
		LIB		MANUAL\S\SPR_ORLONRING.S
		LIB		SCRIPTS\CHARACTERS\ORLON\ORLON_ANIM.S

		LIB		MANUAL\S\SPR_ORWIN.S
		LIB		MANUAL\S\SPR_ORWINDIE.S
		LIB		SCRIPTS\CHARACTERS\ORWIN\ORWIN_ANIM.S

		LIB		MANUAL\S\SPR_POAD.S
		LIB		SCRIPTS\CHARACTERS\POAD\POAD_ANIM.S

		LIB		MANUAL\S\SPR_PRUITT.S
		LIB		MANUAL\S\SPR_PRUITTRING.S
		LIB		SCRIPTS\CHARACTERS\PRUITT\PRUITT_ANIM.S

		LIB		MANUAL\S\SPR_SALAFY.S
		LIB		MANUAL\S\SPR_SALAFYBATTLE.S
		LIB		SCRIPTS\CHARACTERS\SALAFY\SALAFY_ANIM.S

		LIB		MANUAL\S\SPR_SHIMMER.S
		LIB		SCRIPTS\CHARACTERS\SHIMMER\SHIMMER_ANIM.S

		LIB		MANUAL\S\SPR_SIRADAM.S
		LIB		SCRIPTS\CHARACTERS\SIRADAM\SIRADAM_ANIM.S

		LIB		MANUAL\S\SPR_TRYN.S
		LIB		SCRIPTS\CHARACTERS\TRYN\TRYN_ANIM.S

		LIB		MANUAL\S\SPR_ULK.S
		LIB		SCRIPTS\CHARACTERS\ULK\ULK_ANIM.S

		LIB		MANUAL\S\SPR_VALKAN.S
		LIB		MANUAL\S\SPR_VALKANSPEAR.S
		LIB		SCRIPTS\CHARACTERS\VALKAN\VALKAN_ANIM.S

		LIB		MANUAL\S\SPR_WARRADA.S
		LIB		MANUAL\S\SPR_WARRADABATTLE.S
		LIB		SCRIPTS\CHARACTERS\WARRADA\WARRADA_ANIM.S

		LIB		MANUAL\S\SPR_WENCE.S
		LIB		MANUAL\S\SPR_WENCEARROW.S
		LIB		SCRIPTS\CHARACTERS\WENCE\WENCE_ANIM.S

		LIB		MANUAL\S\SPR_WYLOCE2.S
		LIB		MANUAL\S\SPR_WYLOCESTONE.S
		LIB		SCRIPTS\CHARACTERS\WYLOCE\WYLOCE_ANIM.S

		LIB		MANUAL\S\SPR_YAKI.S
		LIB		SCRIPTS\CHARACTERS\YAKI\YAKI_ANIM.S

		LIB		MANUAL\S\SPR_YOUNGMAN.S
		LIB		SCRIPTS\CHARACTERS\YOUNGMAN\YOUNGMAN_ANIM.S

		LIB		MANUAL\S\SPR_BOLT.S
		LIB		SCRIPTS\CHARACTERS\BOLT\BOLT_ANIM.S

		LIB		MANUAL\S\SPR_BOMB.S
		LIB		SCRIPTS\CHARACTERS\BOMB\BOMB_ANIM.S

;********************************
	END
;********************************