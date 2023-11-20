################################################################
# LISTS
################################################################
MBIT04_BANKS =		ROM\MBIT04\BANK20.S \
					ROM\MBIT04\BANK21.S \
					ROM\MBIT04\BANK22.S \
					ROM\MBIT04\BANK23.S \
					ROM\MBIT04\BANK24.S \
					ROM\MBIT04\BANK25.S \
					ROM\MBIT04\BANK26.S \
					ROM\MBIT04\BANK27.S 

MBIT04_FILES =		ROM\MBIT04\MBIT04.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT04\mbit04_update.txt \
					${MBIT04_BANKS}

MBIT04_OFILE =		ROM\MBIT04.O
