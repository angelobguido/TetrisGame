#define GAME_TETROMINO_ADRESS r0
#define PIXEL_ARRAY_SIZE r1
#define CLEAR_CHAR r2
#define CURRENT_PIXEL_ROW r3
#define CURRENT_PIXEL_COLUMN r4
#define CURRENT_PIXEL_GAME_POSITION r5

; This function will "undraw" the tetromino.
; The argument is r0:
; the tetromino first adress.
clear_tetromino:

push fr
push r0
push r1
push r2
push r3
push r4
push r5

loadn CLEAR_CHAR, #' ' ;empty char
loadn PIXEL_ARRAY_SIZE, #8

clear_tetromino_loop:
loadi CURRENT_PIXEL_ROW, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS
loadi CURRENT_PIXEL_COLUMN, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

push r0
push r1
push r2

mov r1, CURRENT_PIXEL_ROW
mov r2, CURRENT_PIXEL_COLUMN

call get_number_in_game_map_from_row_col

mov CURRENT_PIXEL_GAME_POSITION, r0

pop r2
pop r1
pop r0

outchar CLEAR_CHAR, CURRENT_PIXEL_GAME_POSITION

dec PIXEL_ARRAY_SIZE
dec PIXEL_ARRAY_SIZE

jnz clear_tetromino_loop

clear_tetromino_exit:
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
pop fr
rts

#undef GAME_TETROMINO_ADRESS
#undef PIXEL_ARRAY_SIZE
#undef CLEAR_CHAR
#undef CURRENT_PIXEL_ROW
#undef CURRENT_PIXEL_COLUMN
#undef CURRENT_PIXEL_GAME_POSITION