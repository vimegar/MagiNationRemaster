################################################################
# LISTS
################################################################
MBIT09_BANKS =		ROM\MBIT09\BANK48.S \
					ROM\MBIT09\BANK49.S \
					ROM\MBIT09\BANK4A.S \
					ROM\MBIT09\BANK4B.S \
					ROM\MBIT09\BANK4C.S \
					ROM\MBIT09\BANK4D.S \
					ROM\MBIT09\BANK4E.S \
					ROM\MBIT09\BANK4F.S

MBIT09_FILES =		ROM\MBIT09\MBIT09.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT09\mbit09_update.txt \
					${MBIT09_BANKS}

MBIT09_OFILE =		ROM\MBIT09.O
