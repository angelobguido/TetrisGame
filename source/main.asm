#include "algorithm_comments.asm"
#include "colors.asm"

jmp main

#include "memory.asm"

main:
    #include "./draw/game_title.asm"
    #include "./draw/messages/init_game.asm"
    #include "./input/get_init_button.asm"

    call clear_screen

    #include "../tests/test_tetromino_rotation_and_position.asm"

    halt

#include "./draw/functions.asm"
#include "./input/functions.asm"
#include "./vector/functions.asm"
#include "./gameengine/functions.asm"
#include "./math/functions.asm"