#define SELECTED_TETROMINO r0
#define SELECTED_COLOR r1
#define SELECTED_ROTATION r2
#define GAME_TETROMINO_ADRESS r3

push r0
push r1
push r2
push r3

loadn SELECTED_TETROMINO, #1 ; '0' stands for "I tetromino"
loadn SELECTED_COLOR, #GREEN
loadn SELECTED_ROTATION, #0
loadn GAME_TETROMINO_ADRESS, #current_tetromino_pixels_array

call set_tetromino

push fr
push r0
push r1
push r2
push r3

loadn r1, #30
loadn r2, #10

mov r0, GAME_TETROMINO_ADRESS

test_tetromino_position_loop:

call draw_tetromino
call delay
call clear_tetromino
call change_tetromino_position

dec r1
cmp r1, r2

jne test_tetromino_position_loop
loadn r1, #25
jmp test_tetromino_position_loop

pop r3
pop r2
pop r1
pop r0
pop fr


pop r3
pop r2
pop r1
pop r0

#undef SELECTED_TETROMINO
#undef SELECTED_COLOR
#undef SELECTED_ROTATION
#undef GAME_TETROMINO_ADRESS