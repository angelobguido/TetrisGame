#include "algorithm_comments.asm"
#include "colors.asm"

jmp main

#include "memory.asm"

main:
    #include "./draw/game_title.asm"

    loadn r0, #43
    loadn r1, #0
    outchar r0, r1
    halt

#include "./draw/functions.asm"