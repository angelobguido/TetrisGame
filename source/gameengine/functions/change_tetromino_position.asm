#define GAME_TETROMINO_ADRESS r0
#define PIXEL_NEW_ROW r1
#define PIXEL_NEW_COLUMN r2
#define PIXEL_CURRENT_ROW r3
#define PIXEL_CURRENT_COLUMN r4
#define PIVOT_OFF_SET_ROW r5
#define PIVOT_OFF_SET_COLUMN r6
#define PIXEL_ARRAY_SIZE r7

; This function will get the arguments: r0, r1, r2.
; The adress of the tetromino, the new row, and the new column
change_tetromino_position:

push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7

loadn PIXEL_ARRAY_SIZE, #8

; getting current pivot off set
push GAME_TETROMINO_ADRESS

loadi PIVOT_OFF_SET_ROW, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS
loadi PIVOT_OFF_SET_COLUMN, GAME_TETROMINO_ADRESS

pop GAME_TETROMINO_ADRESS
; end getting current pivot off set

;will change the position of every pixel in pixel array
change_tetromino_position_loop:

loadi PIXEL_CURRENT_ROW, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

loadi PIXEL_CURRENT_COLUMN, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

add PIXEL_CURRENT_ROW, PIXEL_CURRENT_ROW, PIXEL_NEW_ROW
sub PIXEL_CURRENT_ROW, PIXEL_CURRENT_ROW, PIVOT_OFF_SET_ROW

add PIXEL_CURRENT_COLUMN, PIXEL_CURRENT_COLUMN, PIXEL_NEW_COLUMN
sub PIXEL_CURRENT_COLUMN, PIXEL_CURRENT_COLUMN, PIVOT_OFF_SET_COLUMN

dec GAME_TETROMINO_ADRESS
dec GAME_TETROMINO_ADRESS

storei GAME_TETROMINO_ADRESS, PIXEL_CURRENT_ROW
inc GAME_TETROMINO_ADRESS

storei GAME_TETROMINO_ADRESS, PIXEL_CURRENT_COLUMN
inc GAME_TETROMINO_ADRESS

dec PIXEL_ARRAY_SIZE
dec PIXEL_ARRAY_SIZE
jnz change_tetromino_position_loop

change_tetromino_position_end:

pop r7
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
#undef PIXEL_NEW_ROW
#undef PIXEL_NEW_COLUMN
#undef PIXEL_CURRENT_ROW
#undef PIXEL_CURRENT_COLUMN
#undef PIVOT_OFF_SET_ROW
#undef PIVOT_OFF_SET_COLUMN
#undef PIXEL_ARRAY_SIZE