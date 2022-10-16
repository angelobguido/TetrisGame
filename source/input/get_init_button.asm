#define VALUE_NEEDED r0

push r0

loadn VALUE_NEEDED, #'i'
call wait_press_key

pop r0

#undef VALUE_NEEDED