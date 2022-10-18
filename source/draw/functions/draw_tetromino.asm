#define GAME_TETROMINO_ADRESS r0
#define TETROMINO_COLOR r1
#define PIXEL_ARRAY_SIZE r2
#define CHAR_REPRESENTATION r3
#define CURRENT_PIXEL_ROW r4
#define CURRENT_PIXEL_COLUMN r5
#define CURRENT_PIXEL_GAME_POSITION r6

; This function will draw the tetromino.
; The argument is r0:
; the tetromino first adress.
draw_tetromino:

push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6

loadn CHAR_REPRESENTATION, #0 ;square char
loadn PIXEL_ARRAY_SIZE, #8

;getting the color using game tetromino adress
add TETROMINO_COLOR, GAME_TETROMINO_ADRESS, PIXEL_ARRAY_SIZE
loadi TETROMINO_COLOR, TETROMINO_COLOR
;color got

add CHAR_REPRESENTATION, CHAR_REPRESENTATION, TETROMINO_COLOR

draw_tetromino_loop:
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

outchar CHAR_REPRESENTATION, CURRENT_PIXEL_GAME_POSITION

dec PIXEL_ARRAY_SIZE
dec PIXEL_ARRAY_SIZE

jnz draw_tetromino_loop

draw_tetromino_exit:
pop r6
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
pop fr
rts

#undef GAME_TETROMINO_ADRESS
#undef TETROMINO_COLOR
#undef PIXEL_ARRAY_SIZE
#undef CHAR_REPRESENTATION
#undef CURRENT_PIXEL_ROW
#undef CURRENT_PIXEL_COLUMN
#undef CURRENT_PIXEL_GAME_POSITION