PROJECT_NAME = tetris

ASM_PROJECT_FILE = $(PROJECT_NAME).asm

SOURCE_FILES =$(filter-out ./source/main.asm,$(wildcard ./source/*.asm ./source/*/*.asm ./source/*/*/*.asm))

SOURCE_FILES_ARGS =$(subst |, ,$(addprefix <|, $(subst ./source/, ,$(SOURCE_FILES))))

MIF_FILE = $(PROJECT_NAME).mif

all: $(MIF_FILE)
	./sim $(MIF_FILE) charmap.mif 

$(MIF_FILE): $(ASM_PROJECT_FILE)
	./montador $(ASM_PROJECT_FILE) $@

$(ASM_PROJECT_FILE):
	cd ./source && gcc -E -P - $(SOURCE_FILES_ARGS) < main.asm -o ../$@

pre: 
	cd ./source && gcc -E -P - $(SOURCE_FILES_ARGS) < main.asm -o ../$(ASM_PROJECT_FILE)

clean:
	@ rm -rf $(MIF_FILE)
	@ rm -rf $(ASM_PROJECT_FILE)
