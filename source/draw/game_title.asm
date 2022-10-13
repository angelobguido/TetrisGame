game_title:
  push fr
  push R0
  push R1
  push R2
  push R3

  loadn R0, #title
  loadn R1, #0
  loadn R2, #1200

  game_title_loop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne game_title_loop

  pop R3
  pop R2
  pop R1
  pop R0
  pop fr