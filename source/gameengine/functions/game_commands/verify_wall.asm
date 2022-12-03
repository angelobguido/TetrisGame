#define GAME_TETROMINO_ADRESS r0
#define PIXEL_CURRENT_COLUMN r1
#define PIXEL_ARRAY_SIZE r2
#define WALL1_COLUMN r3
#define WALL2_COLUMN r4

; This function will verify if the tetronimo is touching one of the walls.
; Change flag register to return true or false, if equal than true.
; Move tetromino back if needed.
verify_wall:

push r0
push r1
push r2
push r3
push r4

loadn PIXEL_ARRAY_SIZE, #8
loadn WALL1_COLUMN, #0
loadn WALL2_COLUMN, #10
loadn GAME_TETROMINO_ADRESS, #next_tetromino_pixels_array

;will verify if the position of any pixel in pixel array is touching one of the walls
verify_wall_loop:

inc GAME_TETROMINO_ADRESS
loadi PIXEL_CURRENT_COLUMN, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

cmp PIXEL_CURRENT_COLUMN, WALL1_COLUMN
jeq verify_wall_go_right

cmp PIXEL_CURRENT_COLUMN, WALL2_COLUMN
jeq verify_wall_go_left

dec PIXEL_ARRAY_SIZE
dec PIXEL_ARRAY_SIZE
jnz verify_wall_loop

verify_wall_exit:

pop r4
pop r3
pop r2
pop r1
pop r0
rts

verify_wall_go_right:
call tetromino_go_right
jmp verify_wall_exit

verify_wall_go_left:
call tetromino_go_left
jmp verify_wall_exit

#undef GAME_TETROMINO_ADRESS
#undef PIXEL_CURRENT_COLUMN
#undef PIXEL_ARRAY_SIZE
#undef WALL1_COLUMN
#undef WALL2_COLUMN