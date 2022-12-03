
call tetromino_reset

game_loop:

#include "get_move_input.asm"
#include "update_game_state.asm"
#include "update_graphics.asm"

call delay

jmp game_loop