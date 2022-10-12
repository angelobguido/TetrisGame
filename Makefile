PROJECT_NAME = tetris

ASM_PROJECT_FILE = $(PROJECT_NAME).asm

SOURCE_FILES =$(wildcard ./source/*.asm)

SOURCE_FILES_ARGS =$(subst |, ,$(addprefix <|, $(SOURCE_FILES)))

MIF_FILE = $(PROJECT_NAME).mif

all: $(MIF_FILE)
	./sim $(MIF_FILE) charmap.mif 

$(MIF_FILE): $(ASM_PROJECT_FILE)
	./montador $(ASM_PROJECT_FILE) $@

$(ASM_PROJECT_FILE):
	gcc -E -P - $(SOURCE_FILES_ARGS) -o $@

clean:
	@ rm -rf $(MIF_FILE)
	@ rm -rf $(ASM_PROJECT_FILE)
