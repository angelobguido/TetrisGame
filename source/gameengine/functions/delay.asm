;will delay a little
delay:

push fr
push r0
push r1
push r2
push r3

loadn r0, #63000
loadn r1, #100
loadn r2, #0

delay_loop:
dec r0
cmp r0, r2
jeq delay_restart
jmp delay_loop

delay_end:

pop r3
pop r2
pop r1
pop r0
pop fr
rts

delay_restart:
dec r1
cmp r1, r2
jeq delay_end
loadn r0, #63000
jmp delay_loop