#define NUMBER r0
#define ROW r1
#define COL r2
#define NUMBER_OF_COL_PER_ROW r3

; This function receives from R1(row) R2(col) 
; and output the draw number at R0(number)
get_number_in_game_map_from_row_col:
push fr
push r1
push r2
push r3

loadn NUMBER_OF_COL_PER_ROW, #40

mul NUMBER, ROW, NUMBER_OF_COL_PER_ROW

add NUMBER, NUMBER, COL; now the number is returned

get_number_in_game_map_from_row_col_exit:
pop r3
pop r2
pop r1
pop fr
rts

#undef NUMBER
#undef ROW
#undef COL
#undef NUMBER_OF_COL_PER_ROW