PROJECT_NAME = tetris

ASM_FILE = $(PROJECT_NAME).asm

MIF_FILE = $(PROJECT_NAME).mif

all: $(MIF_FILE)
	./sim $(MIF_FILE) charmap.mif 

$(MIF_FILE):
	./montador $(ASM_FILE) $@

clean:
	@ rm -rf $(MIF_FILE)
