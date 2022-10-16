#include "algorithm_comments.asm"
#include "colors.asm"

jmp main

#include "memory.asm"

main:
    #include "./draw/game_title.asm"
    #include "./draw/messages/init_game.asm"
    #include "./input/get_init_button.asm"

    call clear_screen

    halt

#include "./draw/functions.asm"
#include "./input/functions.asm"
#include "./vector/functions.asm"
