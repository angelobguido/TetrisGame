#define NUMBER r0
#define ROW r1
#define COL r2
#define NUMBER_OF_COL_PER_ROW r3

;This function receives from R0(number) the number in the
;game map array and output at R1(row) and R2(collumn)
get_row_col_from_number_in_game_map:
push fr
push r0
push r3

loadn NUMBER_OF_COL_PER_ROW, #40

div ROW, ROW, NUMBER_OF_COL_PER_ROW

mod COL, ROW, NUMBER_OF_COL_PER_ROW

get_row_col_from_number_in_game_map_exit:
pop r3
pop r0
pop fr
rts

#undef NUMBER
#undef ROW
#undef COL
#undef NUMBER_OF_COL_PER_ROW