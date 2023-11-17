################################################################
# MAKERULES
################################################################
force:

ROM\ROM_SOUND.O: force
	ISAS32 -w3 -us -nologo -t -g -isdmg -o ROM\ROM_SOUND.O SOURCE\ROM\ROM_SOUND.S

ROM\ROM_SOURCE.O: force
	ISAS32 -w3 -us -nologo -t -g -isdmg -o ROM\ROM_SOURCE.O SOURCE\ROM\ROM_SOURCE.S

