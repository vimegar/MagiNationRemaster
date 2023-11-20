################################################################
# LISTS
################################################################
MBIT0A_BANKS =		ROM\MBIT0A\BANK50.S \
					ROM\MBIT0A\BANK51.S \
					ROM\MBIT0A\BANK52.S \
					ROM\MBIT0A\BANK53.S \
					ROM\MBIT0A\BANK54.S \
					ROM\MBIT0A\BANK55.S \
					ROM\MBIT0A\BANK56.S \
					ROM\MBIT0A\BANK57.S

MBIT0A_FILES =		ROM\MBIT0A\MBIT0A.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0A\mbit0A_update.txt \
					${MBIT0A_BANKS}

MBIT0A_OFILE =		ROM\MBIT0A.O
