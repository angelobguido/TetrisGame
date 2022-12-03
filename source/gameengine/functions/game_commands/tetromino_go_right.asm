#define ADRESS r0
#define PIVOT_POSITION_ROW r1
#define PIVOT_POSITION_COLUMN r2

; This function will move the next tetromino one tile right
tetromino_go_right:
push fr
push r0 
push r1
push r2

loadn ADRESS, #next_tetromino_pixels_array

;Getting row value
mov PIVOT_POSITION_ROW, ADRESS
loadi PIVOT_POSITION_ROW, PIVOT_POSITION_ROW

;Getting column value
inc ADRESS
mov PIVOT_POSITION_COLUMN, ADRESS
loadi PIVOT_POSITION_COLUMN, PIVOT_POSITION_COLUMN

dec ADRESS

;go right
inc PIVOT_POSITION_COLUMN

call change_tetromino_position


tetromino_go_right_exit:
pop r2
pop r1
pop r0
pop fr
rts

#undef ADRESS
#undef PIVOT_POSITION_ROW
#undef PIVOT_POSITION_COLUMN
