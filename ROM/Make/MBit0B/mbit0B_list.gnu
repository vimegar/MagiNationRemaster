################################################################
# LISTS
################################################################
MBIT0B_BANKS =		ROM\MBIT0B\BANK58.S \
					ROM\MBIT0B\BANK59.S \
					ROM\MBIT0B\BANK5A.S \
					ROM\MBIT0B\BANK5B.S \
					ROM\MBIT0B\BANK5C.S \
					ROM\MBIT0B\BANK5D.S \
					ROM\MBIT0B\BANK5E.S \
					ROM\MBIT0B\BANK5F.S

MBIT0B_FILES =		ROM\MBIT0B\MBIT0B.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0B\mbit0B_update.txt \
					${MBIT0B_BANKS}

MBIT0B_OFILE =		ROM\MBIT0B.O
