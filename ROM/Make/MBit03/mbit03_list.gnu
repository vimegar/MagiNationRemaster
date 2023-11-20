################################################################
# LISTS
################################################################
MBIT03_BANKS =		ROM\MBIT03\BANK18.S \
					ROM\MBIT03\BANK19.S \
					ROM\MBIT03\BANK1A.S \
					ROM\MBIT03\BANK1B.S \
					ROM\MBIT03\BANK1C.S \
					ROM\MBIT03\BANK1D.S \
					ROM\MBIT03\BANK1E.S \
					ROM\MBIT03\BANK1F.S

MBIT03_FILES =		ROM\MBIT03\MBIT03.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT03\mbit03_update.txt \
					${MBIT03_BANKS}

MBIT03_OFILE =		ROM\MBIT03.O
