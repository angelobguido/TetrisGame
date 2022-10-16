#define INITIAL_SCREEN_POSITION r0
#define MESSAGE_ADRESS r1
#define MESSAGE_COLOR r2

push r0
push r1
push r2

loadn INITIAL_SCREEN_POSITION, #1045
loadn MESSAGE_ADRESS, #init_game_message
loadn MESSAGE_COLOR, #GREEN

call print_string

pop r2
pop r1
pop r0

#undef INITIAL_SCREEN_POSITION
#undef MESSAGE_ADRESS
#undef MESSAGE_COLOR