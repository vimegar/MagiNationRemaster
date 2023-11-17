################################
game:
#	del		SCRIPTS\mgiERROR.err
	make --warn-undefined-variables  -r -C SCRIPTS -f scripts.gnu main
	make --warn-undefined-variables  -r -f ROM\rom.gnu main
	make --warn-undefined-variables  -r -f SOURCE\source.gnu main
