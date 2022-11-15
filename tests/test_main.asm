#include "algorithm_comments.asm"
#include "colors.asm"

jmp main

#include "memory.asm"

main:
    
    #include "../tests/current_test.asm"

    halt

#include "./draw/functions.asm"
#include "./input/functions.asm"
#include "./vector/functions.asm"
#include "./gameengine/functions.asm"