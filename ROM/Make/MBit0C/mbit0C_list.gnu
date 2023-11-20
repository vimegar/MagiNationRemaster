################################################################
# LISTS
################################################################
MBIT0C_BANKS =		ROM\MBIT0C\BANK60.S \
					ROM\MBIT0C\BANK61.S \
					ROM\MBIT0C\BANK62.S \
					ROM\MBIT0C\BANK63.S \
					ROM\MBIT0C\BANK64.S \
					ROM\MBIT0C\BANK65.S \
					ROM\MBIT0C\BANK66.S \
					ROM\MBIT0C\BANK67.S 

MBIT0C_FILES =		ROM\MBIT0C\MBIT0C.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0C\mbit0C_update.txt \
					${MBIT0C_BANKS}

MBIT0C_OFILE =		ROM\MBIT0C.O
