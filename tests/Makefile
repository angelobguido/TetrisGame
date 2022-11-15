CURRENT_TEST_ASM_FILE = test_tetromino_rotation_and_position.asm

SOURCE_FILES =$(filter-out ../source/main.asm,$(wildcard ../source/*.asm ../source/*/*.asm ../source/*/*/*.asm))

SOURCE_FILES_ARGS =$(subst |, ,$(addprefix <|, $(subst ../source/, ,$(SOURCE_FILES))))

default: all clean

all: change_test test.mif
	@mv test.mif ../test.mif && cd .. && ./sim test.mif charmap.mif && mv test.mif ./tests/test.mif

change_test:
	@cp ./tests_files/$(CURRENT_TEST_ASM_FILE) current_test.asm

test.mif: test.asm
	@cd .. && ./montador ./tests/test.asm ./tests/$@

test.asm:
	@cd ../source && gcc -E -P - $(SOURCE_FILES_ARGS) < ../tests/current_test.asm < ../tests/test_main.asm -o ../tests/$@

clean:
	@ rm -rf test.mif
	@ rm -rf test.asm

.IGNORE: clean