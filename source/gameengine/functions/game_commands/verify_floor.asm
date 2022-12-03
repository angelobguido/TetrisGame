#define GAME_TETROMINO_ADRESS r0
#define PIXEL_CURRENT_ROW r1
#define PIXEL_ARRAY_SIZE r2
#define FLOOR_ROW r3

; This function will verify if the tetronimo is touching the floor.
; Change flag register to return true or false, if equal than true.
verify_floor:

push r0
push r1
push r2
push r3

loadn PIXEL_ARRAY_SIZE, #8
loadn FLOOR_ROW, #29
loadn GAME_TETROMINO_ADRESS, #next_tetromino_pixels_array

;will verify if the position of any pixel in pixel array is touching the floor
verify_floor_loop:

loadi PIXEL_CURRENT_ROW, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

cmp PIXEL_CURRENT_ROW, FLOOR_ROW
jeq verify_floor_exit

dec PIXEL_ARRAY_SIZE
dec PIXEL_ARRAY_SIZE
jnz verify_floor_loop

verify_floor_exit:

pop r3
pop r2
pop r1
pop r0
rts

#undef GAME_TETROMINO_ADRESS
#undef PIXEL_CURRENT_ROW
#undef PIXEL_ARRAY_SIZE
#undef FLOOR_ROW 