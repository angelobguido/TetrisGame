#define VALUE_GOT r0
#define NULL_VALUE r1

;This function will get a value from input and store the value in r0
get_input:

push fr
push r1

get_input_loop:

inchar VALUE_GOT

cmp VALUE_GOT, NULL_VALUE
jne get_input_exit

jmp get_input_loop

get_input_exit:

pop r1
pop fr
rts

#undef VALUE_GOT
#undef VALUE_NEEDED