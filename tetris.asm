; all tetrominos have 4 pixels
; the position will always be in (row, column) order
; every pixel will store a position(2 bytes)
; because there is no negative number, all pivot position will start at (4,4)
; the larger the row, the lower the pixel
; the rotation number order will be in clockwise
; the game memory will hold the game pixels
; for every row destroyed, the values of that row will becocome 0 {need to think more}
; the map will be 20 x 10 pixels, with colors(color 0 is empty)
; some functions may use the last 3 registers as input and output, so keep in mind
;---Tetris---;
;
;main:
;
; Set parameters...
;
; InitialScreen:
; Call PrintInitialScreen
; Call GetStart --> This function will loop until start button is pressed
; GameLoop:
; Call UpdateGame --> This function will select the new tetromino if is needed, or just move the tetromino
; Call PrintGameState
; cmp Exit
; jne GameLoop
; jmp InitialScreen
; halt
;
;PrintInitialScreen:
; Do some magic... --> Remember to print current tetromino in map, only if not in ChooseNewTetrominoState
; rts
;
;GetStart:
; GetStart_GetButton:
; inchar...
; cmp CurrentChar StartButton
; jne GetStart_GetButton
; rts
;
;UpdateGame:
; cmp CurrentState ChooseNewTetrominoState --> Will verify if a new tetronimo need to be chosen
; ceq UpdateGame_ChooseNewTetromino
;
; save current tetromino position and rotation
; see input control (Rotation or go to sides) and save new position
;
; this block can be a function later
; {
; verify collisions with walls
; cmp CollisionState CollidedWithWalls
; jeq UpdateGame_InvalidMovement --> This will return the position to the old one
;
; verify collisions with pixel map
; cmp CollisionState CollidedWithPixelMap
; jep UpdateGame_InvalidMovement
; }
;
; UpdateGame_InvalidMovement:
; jne UpdateGame_InvalidMovement_End --> If none of the invalid collisions happend, go to move tetromino
; return the position to the old one
; UpdateGame_InvalidMovement_End:
;
; move tetromino down --> will move the next position down
;
; verify collisions with border
; cmp CollisionState CollidedWithBorder
; jeq UpdateGame_FixTetromino
;
; UpdateGame_FixTetromino:
; jne UpdateGame_FixTetromino_End
; return the position to the old one
; update pixel map with new tetromino
; change state to ChooseNewTetrominoState
; UpdateGame_FixTetromino_End:
;
; rts
;
;
jmp main
;game memory
game_pixels_array_with_values : var #200 ; remember to initialise later with color 0 and the actual positions
static game_pixels_array_with_values + #0, #0
static game_pixels_array_with_values + #1, #0
static game_pixels_array_with_values + #2, #0
static game_pixels_array_with_values + #3, #0
static game_pixels_array_with_values + #4, #0
static game_pixels_array_with_values + #5, #0
static game_pixels_array_with_values + #6, #0
static game_pixels_array_with_values + #7, #0
static game_pixels_array_with_values + #8, #0
static game_pixels_array_with_values + #9, #0
static game_pixels_array_with_values + #10, #0
static game_pixels_array_with_values + #11, #0
static game_pixels_array_with_values + #12, #0
static game_pixels_array_with_values + #13, #0
static game_pixels_array_with_values + #14, #0
static game_pixels_array_with_values + #15, #0
static game_pixels_array_with_values + #16, #0
static game_pixels_array_with_values + #17, #0
static game_pixels_array_with_values + #18, #0
static game_pixels_array_with_values + #19, #0
static game_pixels_array_with_values + #20, #0
static game_pixels_array_with_values + #21, #0
static game_pixels_array_with_values + #22, #0
static game_pixels_array_with_values + #23, #0
static game_pixels_array_with_values + #24, #0
static game_pixels_array_with_values + #25, #0
static game_pixels_array_with_values + #26, #0
static game_pixels_array_with_values + #27, #0
static game_pixels_array_with_values + #28, #0
static game_pixels_array_with_values + #29, #0
static game_pixels_array_with_values + #30, #0
static game_pixels_array_with_values + #31, #0
static game_pixels_array_with_values + #32, #0
static game_pixels_array_with_values + #33, #0
static game_pixels_array_with_values + #34, #0
static game_pixels_array_with_values + #35, #0
static game_pixels_array_with_values + #36, #0
static game_pixels_array_with_values + #37, #0
static game_pixels_array_with_values + #38, #0
static game_pixels_array_with_values + #39, #0
static game_pixels_array_with_values + #40, #0
static game_pixels_array_with_values + #41, #0
static game_pixels_array_with_values + #42, #0
static game_pixels_array_with_values + #43, #0
static game_pixels_array_with_values + #44, #0
static game_pixels_array_with_values + #45, #0
static game_pixels_array_with_values + #46, #0
static game_pixels_array_with_values + #47, #0
static game_pixels_array_with_values + #48, #0
static game_pixels_array_with_values + #49, #0
static game_pixels_array_with_values + #50, #0
static game_pixels_array_with_values + #51, #0
static game_pixels_array_with_values + #52, #0
static game_pixels_array_with_values + #53, #0
static game_pixels_array_with_values + #54, #0
static game_pixels_array_with_values + #55, #0
static game_pixels_array_with_values + #56, #0
static game_pixels_array_with_values + #57, #0
static game_pixels_array_with_values + #58, #0
static game_pixels_array_with_values + #59, #0
static game_pixels_array_with_values + #60, #0
static game_pixels_array_with_values + #61, #0
static game_pixels_array_with_values + #62, #0
static game_pixels_array_with_values + #63, #0
static game_pixels_array_with_values + #64, #0
static game_pixels_array_with_values + #65, #0
static game_pixels_array_with_values + #66, #0
static game_pixels_array_with_values + #67, #0
static game_pixels_array_with_values + #68, #0
static game_pixels_array_with_values + #69, #0
static game_pixels_array_with_values + #70, #0
static game_pixels_array_with_values + #71, #0
static game_pixels_array_with_values + #72, #0
static game_pixels_array_with_values + #73, #0
static game_pixels_array_with_values + #74, #0
static game_pixels_array_with_values + #75, #0
static game_pixels_array_with_values + #76, #0
static game_pixels_array_with_values + #77, #0
static game_pixels_array_with_values + #78, #0
static game_pixels_array_with_values + #79, #0
static game_pixels_array_with_values + #80, #0
static game_pixels_array_with_values + #81, #0
static game_pixels_array_with_values + #82, #0
static game_pixels_array_with_values + #83, #0
static game_pixels_array_with_values + #84, #0
static game_pixels_array_with_values + #85, #0
static game_pixels_array_with_values + #86, #0
static game_pixels_array_with_values + #87, #0
static game_pixels_array_with_values + #88, #0
static game_pixels_array_with_values + #89, #0
static game_pixels_array_with_values + #90, #0
static game_pixels_array_with_values + #91, #0
static game_pixels_array_with_values + #92, #0
static game_pixels_array_with_values + #93, #0
static game_pixels_array_with_values + #94, #0
static game_pixels_array_with_values + #95, #0
static game_pixels_array_with_values + #96, #0
static game_pixels_array_with_values + #97, #0
static game_pixels_array_with_values + #98, #0
static game_pixels_array_with_values + #99, #0
static game_pixels_array_with_values + #100, #0
static game_pixels_array_with_values + #101, #0
static game_pixels_array_with_values + #102, #0
static game_pixels_array_with_values + #103, #0
static game_pixels_array_with_values + #104, #0
static game_pixels_array_with_values + #105, #0
static game_pixels_array_with_values + #106, #0
static game_pixels_array_with_values + #107, #0
static game_pixels_array_with_values + #108, #0
static game_pixels_array_with_values + #109, #0
static game_pixels_array_with_values + #110, #0
static game_pixels_array_with_values + #111, #0
static game_pixels_array_with_values + #112, #0
static game_pixels_array_with_values + #113, #0
static game_pixels_array_with_values + #114, #0
static game_pixels_array_with_values + #115, #0
static game_pixels_array_with_values + #116, #0
static game_pixels_array_with_values + #117, #0
static game_pixels_array_with_values + #118, #0
static game_pixels_array_with_values + #119, #0
static game_pixels_array_with_values + #120, #0
static game_pixels_array_with_values + #121, #0
static game_pixels_array_with_values + #122, #0
static game_pixels_array_with_values + #123, #0
static game_pixels_array_with_values + #124, #0
static game_pixels_array_with_values + #125, #0
static game_pixels_array_with_values + #126, #0
static game_pixels_array_with_values + #127, #0
static game_pixels_array_with_values + #128, #0
static game_pixels_array_with_values + #129, #0
static game_pixels_array_with_values + #130, #0
static game_pixels_array_with_values + #131, #0
static game_pixels_array_with_values + #132, #0
static game_pixels_array_with_values + #133, #0
static game_pixels_array_with_values + #134, #0
static game_pixels_array_with_values + #135, #0
static game_pixels_array_with_values + #136, #0
static game_pixels_array_with_values + #137, #0
static game_pixels_array_with_values + #138, #0
static game_pixels_array_with_values + #139, #0
static game_pixels_array_with_values + #140, #0
static game_pixels_array_with_values + #141, #0
static game_pixels_array_with_values + #142, #0
static game_pixels_array_with_values + #143, #0
static game_pixels_array_with_values + #144, #0
static game_pixels_array_with_values + #145, #0
static game_pixels_array_with_values + #146, #0
static game_pixels_array_with_values + #147, #0
static game_pixels_array_with_values + #148, #0
static game_pixels_array_with_values + #149, #0
static game_pixels_array_with_values + #150, #0
static game_pixels_array_with_values + #151, #0
static game_pixels_array_with_values + #152, #0
static game_pixels_array_with_values + #153, #0
static game_pixels_array_with_values + #154, #0
static game_pixels_array_with_values + #155, #0
static game_pixels_array_with_values + #156, #0
static game_pixels_array_with_values + #157, #0
static game_pixels_array_with_values + #158, #0
static game_pixels_array_with_values + #159, #0
static game_pixels_array_with_values + #160, #0
static game_pixels_array_with_values + #161, #0
static game_pixels_array_with_values + #162, #0
static game_pixels_array_with_values + #163, #0
static game_pixels_array_with_values + #164, #0
static game_pixels_array_with_values + #165, #0
static game_pixels_array_with_values + #166, #0
static game_pixels_array_with_values + #167, #0
static game_pixels_array_with_values + #168, #0
static game_pixels_array_with_values + #169, #0
static game_pixels_array_with_values + #170, #0
static game_pixels_array_with_values + #171, #0
static game_pixels_array_with_values + #172, #0
static game_pixels_array_with_values + #173, #0
static game_pixels_array_with_values + #174, #0
static game_pixels_array_with_values + #175, #0
static game_pixels_array_with_values + #176, #0
static game_pixels_array_with_values + #177, #0
static game_pixels_array_with_values + #178, #0
static game_pixels_array_with_values + #179, #0
static game_pixels_array_with_values + #180, #0
static game_pixels_array_with_values + #181, #0
static game_pixels_array_with_values + #182, #0
static game_pixels_array_with_values + #183, #0
static game_pixels_array_with_values + #184, #0
static game_pixels_array_with_values + #185, #0
static game_pixels_array_with_values + #186, #0
static game_pixels_array_with_values + #187, #0
static game_pixels_array_with_values + #188, #0
static game_pixels_array_with_values + #189, #0
static game_pixels_array_with_values + #190, #0
static game_pixels_array_with_values + #191, #0
static game_pixels_array_with_values + #192, #0
static game_pixels_array_with_values + #193, #0
static game_pixels_array_with_values + #194, #0
static game_pixels_array_with_values + #195, #0
static game_pixels_array_with_values + #196, #0
static game_pixels_array_with_values + #197, #0
static game_pixels_array_with_values + #198, #0
static game_pixels_array_with_values + #199, #0
; current tetromino
current_tetromino_pixels_array : var #8 ; 2 bytes per pixel, 4 pixels per tetromino
current_tetromino_color : var #1 ; this will be the color for all pixels in one tetromino
current_tetromino_prefab_adress : var #1 ; this will store the current prefab with rotation 0, that the tetromino is using
current_tetromino_rotation : var #1; this will save the current rotation
; next tetromino
next_tetromino_pixels_array : var #8
next_tetromino_color : var #1
next_tetromino_prefab_adress : var #1
next_tetromino_rotation : var #1
; ... I tetromino
; rotation 0
; #$##
I_rotation_0_pixels_array : var #8
static I_rotation_0_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_0_pixels_array + #1, #4 ; pivot pixel column position
static I_rotation_0_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_0_pixels_array + #3, #3 ; 1st pixel column position
static I_rotation_0_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_0_pixels_array + #5, #5 ; 2nd pixel column position
static I_rotation_0_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_0_pixels_array + #7, #6 ; 3th pixel column position
; rotation 1
; #
; $
; #
; #
I_rotation_1_pixels_array : var #8
static I_rotation_1_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_1_pixels_array + #1, #4 ; pivot pixel column position
static I_rotation_1_pixels_array + #2, #3 ; 1st pixel row position
static I_rotation_1_pixels_array + #3, #4 ; 1st pixel column position
static I_rotation_1_pixels_array + #4, #5 ; 2nd pixel row position
static I_rotation_1_pixels_array + #5, #4 ; 2nd pixel column position
static I_rotation_1_pixels_array + #6, #6 ; 3th pixel row position
static I_rotation_1_pixels_array + #7, #4 ; 3th pixel column position
; rotation 2
; ##$#
I_rotation_2_pixels_array : var #8
static I_rotation_2_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_2_pixels_array + #1, #4 ; pivot pixel column position
static I_rotation_2_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_2_pixels_array + #3, #3 ; 1st pixel column position
static I_rotation_2_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_2_pixels_array + #5, #5 ; 2nd pixel column position
static I_rotation_2_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_2_pixels_array + #7, #2 ; 3th pixel column position
; rotation 3
; #
; #
; $
; #
I_rotation_3_pixels_array : var #8
static I_rotation_3_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_3_pixels_array + #1, #4 ; pivot pixel column position
static I_rotation_3_pixels_array + #2, #3 ; 1st pixel row position
static I_rotation_3_pixels_array + #3, #4 ; 1st pixel column position
static I_rotation_3_pixels_array + #4, #2 ; 2nd pixel row position
static I_rotation_3_pixels_array + #5, #4 ; 2nd pixel column position
static I_rotation_3_pixels_array + #6, #5 ; 3th pixel row position
static I_rotation_3_pixels_array + #7, #4 ; 3th pixel column position
; end of I tetromino ...
; ... J tetromino
; rotation 0
; #
; $
;##
J_rotation_0_pixels_array : var #8
static J_rotation_0_pixels_array + #0, #4 ; pivot pixel row position
static J_rotation_0_pixels_array + #1, #4 ; pivot pixel column position
static J_rotation_0_pixels_array + #2, #3 ; 1st pixel row position
static J_rotation_0_pixels_array + #3, #4 ; 1st pixel column position
static J_rotation_0_pixels_array + #4, #5 ; 2nd pixel row position
static J_rotation_0_pixels_array + #5, #4 ; 2nd pixel column position
static J_rotation_0_pixels_array + #6, #5 ; 3th pixel row position
static J_rotation_0_pixels_array + #7, #3 ; 3th pixel column position
; rotation 1
; #
; #$#
J_rotation_1_pixels_array : var #8
static J_rotation_1_pixels_array + #0, #4 ; pivot pixel row position
static J_rotation_1_pixels_array + #1, #4 ; pivot pixel column position
static J_rotation_1_pixels_array + #2, #4 ; 1st pixel row position
static J_rotation_1_pixels_array + #3, #5 ; 1st pixel column position
static J_rotation_1_pixels_array + #4, #4 ; 2nd pixel row position
static J_rotation_1_pixels_array + #5, #3 ; 2nd pixel column position
static J_rotation_1_pixels_array + #6, #3 ; 3th pixel row position
static J_rotation_1_pixels_array + #7, #3 ; 3th pixel column position
; rotation 2
; ##
; $
; #
J_rotation_2_pixels_array : var #8
static J_rotation_2_pixels_array + #0, #4 ; pivot pixel row position
static J_rotation_2_pixels_array + #1, #4 ; pivot pixel column position
static J_rotation_2_pixels_array + #2, #5 ; 1st pixel row position
static J_rotation_2_pixels_array + #3, #4 ; 1st pixel column position
static J_rotation_2_pixels_array + #4, #3 ; 2nd pixel row position
static J_rotation_2_pixels_array + #5, #4 ; 2nd pixel column position
static J_rotation_2_pixels_array + #6, #3 ; 3th pixel row position
static J_rotation_2_pixels_array + #7, #5 ; 3th pixel column position
; rotation 3
; #$#
; #
J_rotation_3_pixels_array : var #8
static J_rotation_3_pixels_array + #0, #4 ; pivot pixel row position
static J_rotation_3_pixels_array + #1, #4 ; pivot pixel column position
static J_rotation_3_pixels_array + #2, #4 ; 1st pixel row position
static J_rotation_3_pixels_array + #3, #3 ; 1st pixel column position
static J_rotation_3_pixels_array + #4, #4 ; 2nd pixel row position
static J_rotation_3_pixels_array + #5, #5 ; 2nd pixel column position
static J_rotation_3_pixels_array + #6, #5 ; 3th pixel row position
static J_rotation_3_pixels_array + #7, #5 ; 3th pixel column position
; end of J tetromino ...
; ... L tetromino
; end of L tetromino ...
; ... O tetromino
; end of O tetromino ...
; ... S tetromino
; end of S tetromino ...
; ... T tetromino
; end of T tetromino ...
; ... Z tetromino
; end of Z tetromino ...
title : var #1200
  ;Linha 0
  static title + #0, #127
  static title + #1, #127
  static title + #2, #127
  static title + #3, #127
  static title + #4, #127
  static title + #5, #127
  static title + #6, #127
  static title + #7, #127
  static title + #8, #127
  static title + #9, #127
  static title + #10, #127
  static title + #11, #127
  static title + #12, #127
  static title + #13, #127
  static title + #14, #127
  static title + #15, #127
  static title + #16, #127
  static title + #17, #127
  static title + #18, #127
  static title + #19, #127
  static title + #20, #127
  static title + #21, #127
  static title + #22, #127
  static title + #23, #127
  static title + #24, #127
  static title + #25, #127
  static title + #26, #127
  static title + #27, #127
  static title + #28, #127
  static title + #29, #127
  static title + #30, #127
  static title + #31, #127
  static title + #32, #127
  static title + #33, #127
  static title + #34, #127
  static title + #35, #127
  static title + #36, #127
  static title + #37, #127
  static title + #38, #127
  static title + #39, #127
  ;Linha 1
  static title + #40, #127
  static title + #41, #127
  static title + #42, #127
  static title + #43, #127
  static title + #44, #127
  static title + #45, #127
  static title + #46, #127
  static title + #47, #127
  static title + #48, #127
  static title + #49, #127
  static title + #50, #127
  static title + #51, #127
  static title + #52, #127
  static title + #53, #127
  static title + #54, #127
  static title + #55, #127
  static title + #56, #127
  static title + #57, #127
  static title + #58, #127
  static title + #59, #127
  static title + #60, #127
  static title + #61, #127
  static title + #62, #127
  static title + #63, #127
  static title + #64, #127
  static title + #65, #127
  static title + #66, #127
  static title + #67, #127
  static title + #68, #127
  static title + #69, #127
  static title + #70, #127
  static title + #71, #127
  static title + #72, #127
  static title + #73, #127
  static title + #74, #127
  static title + #75, #127
  static title + #76, #127
  static title + #77, #127
  static title + #78, #127
  static title + #79, #127
  ;Linha 2
  static title + #80, #127
  static title + #81, #127
  static title + #82, #127
  static title + #83, #127
  static title + #84, #127
  static title + #85, #127
  static title + #86, #127
  static title + #87, #127
  static title + #88, #127
  static title + #89, #127
  static title + #90, #127
  static title + #91, #127
  static title + #92, #127
  static title + #93, #127
  static title + #94, #127
  static title + #95, #127
  static title + #96, #127
  static title + #97, #127
  static title + #98, #127
  static title + #99, #127
  static title + #100, #127
  static title + #101, #127
  static title + #102, #127
  static title + #103, #127
  static title + #104, #127
  static title + #105, #127
  static title + #106, #127
  static title + #107, #127
  static title + #108, #127
  static title + #109, #127
  static title + #110, #127
  static title + #111, #127
  static title + #112, #127
  static title + #113, #127
  static title + #114, #127
  static title + #115, #127
  static title + #116, #127
  static title + #117, #127
  static title + #118, #127
  static title + #119, #127
  ;Linha 3
  static title + #120, #127
  static title + #121, #127
  static title + #122, #127
  static title + #123, #127
  static title + #124, #127
  static title + #125, #127
  static title + #126, #127
  static title + #127, #127
  static title + #128, #127
  static title + #129, #127
  static title + #130, #127
  static title + #131, #127
  static title + #132, #127
  static title + #133, #127
  static title + #134, #127
  static title + #135, #127
  static title + #136, #127
  static title + #137, #127
  static title + #138, #127
  static title + #139, #127
  static title + #140, #127
  static title + #141, #127
  static title + #142, #127
  static title + #143, #127
  static title + #144, #127
  static title + #145, #127
  static title + #146, #127
  static title + #147, #127
  static title + #148, #127
  static title + #149, #127
  static title + #150, #127
  static title + #151, #127
  static title + #152, #127
  static title + #153, #127
  static title + #154, #127
  static title + #155, #127
  static title + #156, #127
  static title + #157, #127
  static title + #158, #127
  static title + #159, #127
  ;Linha 4
  static title + #160, #127
  static title + #161, #127
  static title + #162, #127
  static title + #163, #127
  static title + #164, #127
  static title + #165, #127
  static title + #166, #127
  static title + #167, #127
  static title + #168, #127
  static title + #169, #127
  static title + #170, #127
  static title + #171, #127
  static title + #172, #127
  static title + #173, #127
  static title + #174, #127
  static title + #175, #127
  static title + #176, #127
  static title + #177, #127
  static title + #178, #127
  static title + #179, #127
  static title + #180, #127
  static title + #181, #127
  static title + #182, #127
  static title + #183, #127
  static title + #184, #127
  static title + #185, #127
  static title + #186, #127
  static title + #187, #127
  static title + #188, #127
  static title + #189, #127
  static title + #190, #127
  static title + #191, #127
  static title + #192, #127
  static title + #193, #127
  static title + #194, #127
  static title + #195, #127
  static title + #196, #127
  static title + #197, #127
  static title + #198, #127
  static title + #199, #127
  ;Linha 5
  static title + #200, #127
  static title + #201, #127
  static title + #202, #127
  static title + #203, #127
  static title + #204, #127
  static title + #205, #127
  static title + #206, #127
  static title + #207, #127
  static title + #208, #127
  static title + #209, #127
  static title + #210, #127
  static title + #211, #127
  static title + #212, #127
  static title + #213, #127
  static title + #214, #127
  static title + #215, #127
  static title + #216, #127
  static title + #217, #127
  static title + #218, #127
  static title + #219, #127
  static title + #220, #127
  static title + #221, #127
  static title + #222, #127
  static title + #223, #127
  static title + #224, #127
  static title + #225, #127
  static title + #226, #127
  static title + #227, #127
  static title + #228, #127
  static title + #229, #127
  static title + #230, #127
  static title + #231, #127
  static title + #232, #127
  static title + #233, #127
  static title + #234, #127
  static title + #235, #127
  static title + #236, #127
  static title + #237, #127
  static title + #238, #127
  static title + #239, #127
  ;Linha 6
  static title + #240, #127
  static title + #241, #127
  static title + #242, #127
  static title + #243, #0
  static title + #244, #0
  static title + #245, #0
  static title + #246, #0
  static title + #247, #0
  static title + #248, #0
  static title + #249, #127
  static title + #250, #127
  static title + #251, #127
  static title + #252, #0
  static title + #253, #127
  static title + #254, #127
  static title + #255, #127
  static title + #256, #127
  static title + #257, #127
  static title + #258, #127
  static title + #259, #127
  static title + #260, #127
  static title + #261, #0
  static title + #262, #0
  static title + #263, #0
  static title + #264, #0
  static title + #265, #127
  static title + #266, #0
  static title + #267, #127
  static title + #268, #0
  static title + #269, #0
  static title + #270, #127
  static title + #271, #127
  static title + #272, #127
  static title + #273, #127
  static title + #274, #127
  static title + #275, #127
  static title + #276, #127
  static title + #277, #127
  static title + #278, #127
  static title + #279, #127
  ;Linha 7
  static title + #280, #127
  static title + #281, #127
  static title + #282, #127
  static title + #283, #127
  static title + #284, #127
  static title + #285, #0
  static title + #286, #127
  static title + #287, #127
  static title + #288, #0
  static title + #289, #127
  static title + #290, #127
  static title + #291, #127
  static title + #292, #0
  static title + #293, #0
  static title + #294, #0
  static title + #295, #0
  static title + #296, #127
  static title + #297, #127
  static title + #298, #127
  static title + #299, #0
  static title + #300, #0
  static title + #301, #0
  static title + #302, #0
  static title + #303, #127
  static title + #304, #127
  static title + #305, #127
  static title + #306, #127
  static title + #307, #0
  static title + #308, #0
  static title + #309, #0
  static title + #310, #127
  static title + #311, #0
  static title + #312, #0
  static title + #313, #0
  static title + #314, #127
  static title + #315, #127
  static title + #316, #127
  static title + #317, #0
  static title + #318, #0
  static title + #319, #127
  ;Linha 8
  static title + #320, #127
  static title + #321, #127
  static title + #322, #127
  static title + #323, #127
  static title + #324, #127
  static title + #325, #127
  static title + #326, #0
  static title + #327, #127
  static title + #328, #127
  static title + #329, #127
  static title + #330, #127
  static title + #331, #127
  static title + #332, #0
  static title + #333, #127
  static title + #334, #127
  static title + #335, #127
  static title + #336, #127
  static title + #337, #127
  static title + #338, #127
  static title + #339, #127
  static title + #340, #127
  static title + #341, #127
  static title + #342, #0
  static title + #343, #127
  static title + #344, #127
  static title + #345, #127
  static title + #346, #127
  static title + #347, #0
  static title + #348, #0
  static title + #349, #0
  static title + #350, #127
  static title + #351, #127
  static title + #352, #0
  static title + #353, #0
  static title + #354, #127
  static title + #355, #127
  static title + #356, #0
  static title + #357, #0
  static title + #358, #127
  static title + #359, #127
  ;Linha 9
  static title + #360, #127
  static title + #361, #127
  static title + #362, #127
  static title + #363, #127
  static title + #364, #127
  static title + #365, #127
  static title + #366, #0
  static title + #367, #127
  static title + #368, #127
  static title + #369, #127
  static title + #370, #127
  static title + #371, #127
  static title + #372, #0
  static title + #373, #0
  static title + #374, #127
  static title + #375, #127
  static title + #376, #127
  static title + #377, #127
  static title + #378, #127
  static title + #379, #127
  static title + #380, #127
  static title + #381, #127
  static title + #382, #0
  static title + #383, #127
  static title + #384, #127
  static title + #385, #127
  static title + #386, #127
  static title + #387, #0
  static title + #388, #0
  static title + #389, #127
  static title + #390, #127
  static title + #391, #127
  static title + #392, #0
  static title + #393, #127
  static title + #394, #127
  static title + #395, #127
  static title + #396, #0
  static title + #397, #0
  static title + #398, #127
  static title + #399, #127
  ;Linha 10
  static title + #400, #127
  static title + #401, #127
  static title + #402, #127
  static title + #403, #127
  static title + #404, #127
  static title + #405, #127
  static title + #406, #0
  static title + #407, #127
  static title + #408, #127
  static title + #409, #127
  static title + #410, #127
  static title + #411, #127
  static title + #412, #0
  static title + #413, #127
  static title + #414, #0
  static title + #415, #0
  static title + #416, #127
  static title + #417, #127
  static title + #418, #127
  static title + #419, #127
  static title + #420, #127
  static title + #421, #127
  static title + #422, #0
  static title + #423, #127
  static title + #424, #127
  static title + #425, #127
  static title + #426, #0
  static title + #427, #0
  static title + #428, #127
  static title + #429, #0
  static title + #430, #127
  static title + #431, #127
  static title + #432, #127
  static title + #433, #0
  static title + #434, #127
  static title + #435, #127
  static title + #436, #127
  static title + #437, #0
  static title + #438, #127
  static title + #439, #127
  ;Linha 11
  static title + #440, #127
  static title + #441, #127
  static title + #442, #127
  static title + #443, #127
  static title + #444, #127
  static title + #445, #127
  static title + #446, #0
  static title + #447, #127
  static title + #448, #127
  static title + #449, #127
  static title + #450, #127
  static title + #451, #127
  static title + #452, #0
  static title + #453, #127
  static title + #454, #127
  static title + #455, #127
  static title + #456, #127
  static title + #457, #127
  static title + #458, #127
  static title + #459, #127
  static title + #460, #127
  static title + #461, #127
  static title + #462, #0
  static title + #463, #127
  static title + #464, #127
  static title + #465, #127
  static title + #466, #0
  static title + #467, #127
  static title + #468, #127
  static title + #469, #0
  static title + #470, #127
  static title + #471, #127
  static title + #472, #127
  static title + #473, #0
  static title + #474, #127
  static title + #475, #127
  static title + #476, #127
  static title + #477, #0
  static title + #478, #0
  static title + #479, #127
  ;Linha 12
  static title + #480, #127
  static title + #481, #127
  static title + #482, #127
  static title + #483, #127
  static title + #484, #127
  static title + #485, #127
  static title + #486, #0
  static title + #487, #127
  static title + #488, #127
  static title + #489, #127
  static title + #490, #127
  static title + #491, #127
  static title + #492, #0
  static title + #493, #127
  static title + #494, #127
  static title + #495, #127
  static title + #496, #127
  static title + #497, #127
  static title + #498, #127
  static title + #499, #127
  static title + #500, #127
  static title + #501, #127
  static title + #502, #0
  static title + #503, #127
  static title + #504, #127
  static title + #505, #127
  static title + #506, #0
  static title + #507, #0
  static title + #508, #127
  static title + #509, #0
  static title + #510, #127
  static title + #511, #127
  static title + #512, #127
  static title + #513, #0
  static title + #514, #127
  static title + #515, #127
  static title + #516, #127
  static title + #517, #127
  static title + #518, #0
  static title + #519, #127
  ;Linha 13
  static title + #520, #127
  static title + #521, #127
  static title + #522, #127
  static title + #523, #127
  static title + #524, #127
  static title + #525, #127
  static title + #526, #127
  static title + #527, #127
  static title + #528, #127
  static title + #529, #127
  static title + #530, #127
  static title + #531, #127
  static title + #532, #0
  static title + #533, #0
  static title + #534, #0
  static title + #535, #0
  static title + #536, #127
  static title + #537, #127
  static title + #538, #127
  static title + #539, #127
  static title + #540, #127
  static title + #541, #127
  static title + #542, #0
  static title + #543, #127
  static title + #544, #127
  static title + #545, #127
  static title + #546, #0
  static title + #547, #0
  static title + #548, #127
  static title + #549, #0
  static title + #550, #0
  static title + #551, #127
  static title + #552, #127
  static title + #553, #0
  static title + #554, #127
  static title + #555, #127
  static title + #556, #127
  static title + #557, #127
  static title + #558, #0
  static title + #559, #127
  ;Linha 14
  static title + #560, #127
  static title + #561, #127
  static title + #562, #127
  static title + #563, #127
  static title + #564, #127
  static title + #565, #127
  static title + #566, #127
  static title + #567, #127
  static title + #568, #127
  static title + #569, #127
  static title + #570, #127
  static title + #571, #127
  static title + #572, #127
  static title + #573, #127
  static title + #574, #127
  static title + #575, #0
  static title + #576, #0
  static title + #577, #127
  static title + #578, #127
  static title + #579, #127
  static title + #580, #127
  static title + #581, #127
  static title + #582, #0
  static title + #583, #127
  static title + #584, #127
  static title + #585, #127
  static title + #586, #0
  static title + #587, #127
  static title + #588, #127
  static title + #589, #127
  static title + #590, #127
  static title + #591, #127
  static title + #592, #127
  static title + #593, #127
  static title + #594, #127
  static title + #595, #127
  static title + #596, #127
  static title + #597, #0
  static title + #598, #0
  static title + #599, #127
  ;Linha 15
  static title + #600, #127
  static title + #601, #127
  static title + #602, #127
  static title + #603, #127
  static title + #604, #127
  static title + #605, #127
  static title + #606, #127
  static title + #607, #127
  static title + #608, #127
  static title + #609, #127
  static title + #610, #127
  static title + #611, #127
  static title + #612, #127
  static title + #613, #127
  static title + #614, #127
  static title + #615, #127
  static title + #616, #127
  static title + #617, #127
  static title + #618, #127
  static title + #619, #127
  static title + #620, #127
  static title + #621, #127
  static title + #622, #0
  static title + #623, #127
  static title + #624, #127
  static title + #625, #127
  static title + #626, #127
  static title + #627, #127
  static title + #628, #127
  static title + #629, #127
  static title + #630, #127
  static title + #631, #127
  static title + #632, #127
  static title + #633, #127
  static title + #634, #127
  static title + #635, #0
  static title + #636, #0
  static title + #637, #0
  static title + #638, #127
  static title + #639, #127
  ;Linha 16
  static title + #640, #127
  static title + #641, #127
  static title + #642, #127
  static title + #643, #127
  static title + #644, #127
  static title + #645, #127
  static title + #646, #127
  static title + #647, #127
  static title + #648, #127
  static title + #649, #127
  static title + #650, #127
  static title + #651, #127
  static title + #652, #127
  static title + #653, #127
  static title + #654, #127
  static title + #655, #127
  static title + #656, #127
  static title + #657, #127
  static title + #658, #127
  static title + #659, #127
  static title + #660, #127
  static title + #661, #127
  static title + #662, #127
  static title + #663, #127
  static title + #664, #127
  static title + #665, #127
  static title + #666, #127
  static title + #667, #127
  static title + #668, #127
  static title + #669, #127
  static title + #670, #127
  static title + #671, #127
  static title + #672, #127
  static title + #673, #127
  static title + #674, #0
  static title + #675, #0
  static title + #676, #127
  static title + #677, #127
  static title + #678, #127
  static title + #679, #127
  ;Linha 17
  static title + #680, #127
  static title + #681, #127
  static title + #682, #127
  static title + #683, #127
  static title + #684, #127
  static title + #685, #127
  static title + #686, #127
  static title + #687, #127
  static title + #688, #127
  static title + #689, #127
  static title + #690, #127
  static title + #691, #127
  static title + #692, #127
  static title + #693, #127
  static title + #694, #127
  static title + #695, #127
  static title + #696, #127
  static title + #697, #127
  static title + #698, #127
  static title + #699, #127
  static title + #700, #127
  static title + #701, #127
  static title + #702, #127
  static title + #703, #127
  static title + #704, #127
  static title + #705, #127
  static title + #706, #127
  static title + #707, #127
  static title + #708, #127
  static title + #709, #127
  static title + #710, #127
  static title + #711, #127
  static title + #712, #127
  static title + #713, #127
  static title + #714, #127
  static title + #715, #127
  static title + #716, #127
  static title + #717, #127
  static title + #718, #127
  static title + #719, #127
  ;Linha 18
  static title + #720, #127
  static title + #721, #127
  static title + #722, #127
  static title + #723, #127
  static title + #724, #127
  static title + #725, #127
  static title + #726, #127
  static title + #727, #127
  static title + #728, #127
  static title + #729, #127
  static title + #730, #127
  static title + #731, #127
  static title + #732, #127
  static title + #733, #127
  static title + #734, #127
  static title + #735, #127
  static title + #736, #127
  static title + #737, #127
  static title + #738, #127
  static title + #739, #127
  static title + #740, #127
  static title + #741, #127
  static title + #742, #127
  static title + #743, #127
  static title + #744, #127
  static title + #745, #127
  static title + #746, #127
  static title + #747, #127
  static title + #748, #127
  static title + #749, #127
  static title + #750, #127
  static title + #751, #127
  static title + #752, #127
  static title + #753, #127
  static title + #754, #127
  static title + #755, #127
  static title + #756, #127
  static title + #757, #127
  static title + #758, #127
  static title + #759, #127
  ;Linha 19
  static title + #760, #127
  static title + #761, #127
  static title + #762, #127
  static title + #763, #127
  static title + #764, #127
  static title + #765, #127
  static title + #766, #127
  static title + #767, #127
  static title + #768, #127
  static title + #769, #127
  static title + #770, #127
  static title + #771, #127
  static title + #772, #127
  static title + #773, #127
  static title + #774, #127
  static title + #775, #127
  static title + #776, #127
  static title + #777, #127
  static title + #778, #127
  static title + #779, #127
  static title + #780, #127
  static title + #781, #127
  static title + #782, #127
  static title + #783, #127
  static title + #784, #127
  static title + #785, #127
  static title + #786, #127
  static title + #787, #127
  static title + #788, #127
  static title + #789, #127
  static title + #790, #127
  static title + #791, #127
  static title + #792, #127
  static title + #793, #127
  static title + #794, #127
  static title + #795, #127
  static title + #796, #127
  static title + #797, #127
  static title + #798, #127
  static title + #799, #127
  ;Linha 20
  static title + #800, #127
  static title + #801, #127
  static title + #802, #127
  static title + #803, #127
  static title + #804, #127
  static title + #805, #127
  static title + #806, #127
  static title + #807, #127
  static title + #808, #127
  static title + #809, #127
  static title + #810, #127
  static title + #811, #127
  static title + #812, #127
  static title + #813, #127
  static title + #814, #127
  static title + #815, #0
  static title + #816, #127
  static title + #817, #127
  static title + #818, #127
  static title + #819, #127
  static title + #820, #0
  static title + #821, #127
  static title + #822, #127
  static title + #823, #127
  static title + #824, #127
  static title + #825, #127
  static title + #826, #127
  static title + #827, #127
  static title + #828, #127
  static title + #829, #127
  static title + #830, #127
  static title + #831, #127
  static title + #832, #127
  static title + #833, #127
  static title + #834, #127
  static title + #835, #127
  static title + #836, #127
  static title + #837, #127
  static title + #838, #127
  static title + #839, #127
  ;Linha 21
  static title + #840, #127
  static title + #841, #127
  static title + #842, #127
  static title + #843, #127
  static title + #844, #127
  static title + #845, #127
  static title + #846, #127
  static title + #847, #127
  static title + #848, #127
  static title + #849, #127
  static title + #850, #127
  static title + #851, #127
  static title + #852, #127
  static title + #853, #127
  static title + #854, #127
  static title + #855, #127
  static title + #856, #0
  static title + #857, #127
  static title + #858, #127
  static title + #859, #127
  static title + #860, #0
  static title + #861, #127
  static title + #862, #127
  static title + #863, #127
  static title + #864, #127
  static title + #865, #127
  static title + #866, #127
  static title + #867, #127
  static title + #868, #127
  static title + #869, #127
  static title + #870, #127
  static title + #871, #127
  static title + #872, #127
  static title + #873, #127
  static title + #874, #127
  static title + #875, #127
  static title + #876, #127
  static title + #877, #127
  static title + #878, #127
  static title + #879, #127
  ;Linha 22
  static title + #880, #127
  static title + #881, #127
  static title + #882, #127
  static title + #883, #127
  static title + #884, #127
  static title + #885, #127
  static title + #886, #127
  static title + #887, #127
  static title + #888, #127
  static title + #889, #127
  static title + #890, #127
  static title + #891, #127
  static title + #892, #127
  static title + #893, #127
  static title + #894, #127
  static title + #895, #127
  static title + #896, #0
  static title + #897, #127
  static title + #898, #127
  static title + #899, #127
  static title + #900, #0
  static title + #901, #0
  static title + #902, #127
  static title + #903, #127
  static title + #904, #127
  static title + #905, #127
  static title + #906, #127
  static title + #907, #127
  static title + #908, #127
  static title + #909, #127
  static title + #910, #127
  static title + #911, #127
  static title + #912, #127
  static title + #913, #127
  static title + #914, #127
  static title + #915, #127
  static title + #916, #127
  static title + #917, #127
  static title + #918, #127
  static title + #919, #127
  ;Linha 23
  static title + #920, #127
  static title + #921, #127
  static title + #922, #127
  static title + #923, #127
  static title + #924, #127
  static title + #925, #127
  static title + #926, #127
  static title + #927, #127
  static title + #928, #127
  static title + #929, #127
  static title + #930, #127
  static title + #931, #127
  static title + #932, #127
  static title + #933, #127
  static title + #934, #127
  static title + #935, #127
  static title + #936, #127
  static title + #937, #127
  static title + #938, #127
  static title + #939, #127
  static title + #940, #127
  static title + #941, #127
  static title + #942, #127
  static title + #943, #127
  static title + #944, #127
  static title + #945, #127
  static title + #946, #127
  static title + #947, #127
  static title + #948, #127
  static title + #949, #127
  static title + #950, #127
  static title + #951, #127
  static title + #952, #127
  static title + #953, #127
  static title + #954, #127
  static title + #955, #127
  static title + #956, #127
  static title + #957, #127
  static title + #958, #127
  static title + #959, #127
  ;Linha 24
  static title + #960, #127
  static title + #961, #127
  static title + #962, #127
  static title + #963, #127
  static title + #964, #127
  static title + #965, #127
  static title + #966, #127
  static title + #967, #127
  static title + #968, #127
  static title + #969, #127
  static title + #970, #127
  static title + #971, #127
  static title + #972, #127
  static title + #973, #127
  static title + #974, #127
  static title + #975, #127
  static title + #976, #127
  static title + #977, #127
  static title + #978, #127
  static title + #979, #127
  static title + #980, #127
  static title + #981, #127
  static title + #982, #127
  static title + #983, #127
  static title + #984, #127
  static title + #985, #127
  static title + #986, #127
  static title + #987, #127
  static title + #988, #127
  static title + #989, #127
  static title + #990, #127
  static title + #991, #127
  static title + #992, #127
  static title + #993, #127
  static title + #994, #127
  static title + #995, #127
  static title + #996, #127
  static title + #997, #127
  static title + #998, #127
  static title + #999, #127
  ;Linha 25
  static title + #1000, #127
  static title + #1001, #127
  static title + #1002, #127
  static title + #1003, #127
  static title + #1004, #127
  static title + #1005, #127
  static title + #1006, #127
  static title + #1007, #127
  static title + #1008, #127
  static title + #1009, #127
  static title + #1010, #127
  static title + #1011, #127
  static title + #1012, #127
  static title + #1013, #127
  static title + #1014, #0
  static title + #1015, #127
  static title + #1016, #127
  static title + #1017, #127
  static title + #1018, #127
  static title + #1019, #127
  static title + #1020, #127
  static title + #1021, #127
  static title + #1022, #127
  static title + #1023, #127
  static title + #1024, #127
  static title + #1025, #127
  static title + #1026, #127
  static title + #1027, #127
  static title + #1028, #127
  static title + #1029, #127
  static title + #1030, #127
  static title + #1031, #127
  static title + #1032, #127
  static title + #1033, #127
  static title + #1034, #127
  static title + #1035, #127
  static title + #1036, #127
  static title + #1037, #127
  static title + #1038, #127
  static title + #1039, #127
  ;Linha 26
  static title + #1040, #127
  static title + #1041, #127
  static title + #1042, #127
  static title + #1043, #127
  static title + #1044, #127
  static title + #1045, #127
  static title + #1046, #127
  static title + #1047, #127
  static title + #1048, #127
  static title + #1049, #127
  static title + #1050, #127
  static title + #1051, #127
  static title + #1052, #127
  static title + #1053, #127
  static title + #1054, #0
  static title + #1055, #127
  static title + #1056, #127
  static title + #1057, #127
  static title + #1058, #127
  static title + #1059, #127
  static title + #1060, #127
  static title + #1061, #127
  static title + #1062, #127
  static title + #1063, #127
  static title + #1064, #127
  static title + #1065, #0
  static title + #1066, #127
  static title + #1067, #127
  static title + #1068, #127
  static title + #1069, #127
  static title + #1070, #127
  static title + #1071, #127
  static title + #1072, #127
  static title + #1073, #127
  static title + #1074, #127
  static title + #1075, #127
  static title + #1076, #127
  static title + #1077, #127
  static title + #1078, #127
  static title + #1079, #127
  ;Linha 27
  static title + #1080, #127
  static title + #1081, #127
  static title + #1082, #127
  static title + #1083, #127
  static title + #1084, #127
  static title + #1085, #127
  static title + #1086, #127
  static title + #1087, #127
  static title + #1088, #127
  static title + #1089, #127
  static title + #1090, #127
  static title + #1091, #127
  static title + #1092, #127
  static title + #1093, #127
  static title + #1094, #127
  static title + #1095, #0
  static title + #1096, #127
  static title + #1097, #127
  static title + #1098, #127
  static title + #1099, #127
  static title + #1100, #127
  static title + #1101, #127
  static title + #1102, #127
  static title + #1103, #0
  static title + #1104, #0
  static title + #1105, #127
  static title + #1106, #127
  static title + #1107, #127
  static title + #1108, #127
  static title + #1109, #127
  static title + #1110, #127
  static title + #1111, #127
  static title + #1112, #127
  static title + #1113, #127
  static title + #1114, #127
  static title + #1115, #127
  static title + #1116, #127
  static title + #1117, #127
  static title + #1118, #127
  static title + #1119, #127
  ;Linha 28
  static title + #1120, #127
  static title + #1121, #127
  static title + #1122, #127
  static title + #1123, #127
  static title + #1124, #127
  static title + #1125, #127
  static title + #1126, #127
  static title + #1127, #127
  static title + #1128, #127
  static title + #1129, #127
  static title + #1130, #127
  static title + #1131, #127
  static title + #1132, #127
  static title + #1133, #127
  static title + #1134, #127
  static title + #1135, #0
  static title + #1136, #127
  static title + #1137, #127
  static title + #1138, #127
  static title + #1139, #127
  static title + #1140, #127
  static title + #1141, #127
  static title + #1142, #0
  static title + #1143, #0
  static title + #1144, #127
  static title + #1145, #127
  static title + #1146, #127
  static title + #1147, #127
  static title + #1148, #127
  static title + #1149, #127
  static title + #1150, #127
  static title + #1151, #127
  static title + #1152, #127
  static title + #1153, #127
  static title + #1154, #127
  static title + #1155, #127
  static title + #1156, #127
  static title + #1157, #127
  static title + #1158, #127
  static title + #1159, #127
  ;Linha 29
  static title + #1160, #127
  static title + #1161, #127
  static title + #1162, #127
  static title + #1163, #127
  static title + #1164, #127
  static title + #1165, #127
  static title + #1166, #127
  static title + #1167, #127
  static title + #1168, #127
  static title + #1169, #127
  static title + #1170, #127
  static title + #1171, #127
  static title + #1172, #127
  static title + #1173, #127
  static title + #1174, #127
  static title + #1175, #0
  static title + #1176, #0
  static title + #1177, #0
  static title + #1178, #0
  static title + #1179, #0
  static title + #1180, #0
  static title + #1181, #0
  static title + #1182, #127
  static title + #1183, #127
  static title + #1184, #127
  static title + #1185, #127
  static title + #1186, #127
  static title + #1187, #127
  static title + #1188, #127
  static title + #1189, #127
  static title + #1190, #127
  static title + #1191, #127
  static title + #1192, #127
  static title + #1193, #127
  static title + #1194, #127
  static title + #1195, #127
  static title + #1196, #127
  static title + #1197, #127
  static title + #1198, #127
  static title + #1199, #127
GameScreen : var #1200
  ;Linha 0
  static GameScreen + #0, #3967
  static GameScreen + #1, #3967
  static GameScreen + #2, #3967
  static GameScreen + #3, #3967
  static GameScreen + #4, #3967
  static GameScreen + #5, #3967
  static GameScreen + #6, #3967
  static GameScreen + #7, #3967
  static GameScreen + #8, #3967
  static GameScreen + #9, #3967
  static GameScreen + #10, #2048
  static GameScreen + #11, #2048
  static GameScreen + #12, #2048
  static GameScreen + #13, #2048
  static GameScreen + #14, #2048
  static GameScreen + #15, #2048
  static GameScreen + #16, #2048
  static GameScreen + #17, #2048
  static GameScreen + #18, #2048
  static GameScreen + #19, #2048
  static GameScreen + #20, #2048
  static GameScreen + #21, #2048
  static GameScreen + #22, #2048
  static GameScreen + #23, #2048
  static GameScreen + #24, #2048
  static GameScreen + #25, #0
  static GameScreen + #26, #0
  static GameScreen + #27, #0
  static GameScreen + #28, #0
  static GameScreen + #29, #0
  static GameScreen + #30, #3967
  static GameScreen + #31, #3584
  static GameScreen + #32, #3967
  static GameScreen + #33, #3967
  static GameScreen + #34, #3967
  static GameScreen + #35, #3967
  static GameScreen + #36, #3967
  static GameScreen + #37, #3967
  static GameScreen + #38, #3967
  static GameScreen + #39, #3967
  ;Linha 1
  static GameScreen + #40, #3967
  static GameScreen + #41, #3967
  static GameScreen + #42, #3967
  static GameScreen + #43, #3967
  static GameScreen + #44, #3967
  static GameScreen + #45, #3967
  static GameScreen + #46, #3967
  static GameScreen + #47, #3967
  static GameScreen + #48, #3967
  static GameScreen + #49, #3967
  static GameScreen + #50, #2048
  static GameScreen + #51, #2048
  static GameScreen + #52, #2048
  static GameScreen + #53, #513
  static GameScreen + #54, #3967
  static GameScreen + #55, #3967
  static GameScreen + #56, #3967
  static GameScreen + #57, #3967
  static GameScreen + #58, #3967
  static GameScreen + #59, #3967
  static GameScreen + #60, #3967
  static GameScreen + #61, #3967
  static GameScreen + #62, #2048
  static GameScreen + #63, #2048
  static GameScreen + #64, #2048
  static GameScreen + #65, #0
  static GameScreen + #66, #0
  static GameScreen + #67, #0
  static GameScreen + #68, #0
  static GameScreen + #69, #0
  static GameScreen + #70, #3967
  static GameScreen + #71, #3584
  static GameScreen + #72, #3967
  static GameScreen + #73, #2304
  static GameScreen + #74, #2304
  static GameScreen + #75, #2304
  static GameScreen + #76, #2304
  static GameScreen + #77, #2304
  static GameScreen + #78, #3967
  static GameScreen + #79, #3967
  ;Linha 2
  static GameScreen + #80, #3967
  static GameScreen + #81, #3967
  static GameScreen + #82, #3967
  static GameScreen + #83, #3967
  static GameScreen + #84, #3967
  static GameScreen + #85, #3967
  static GameScreen + #86, #3967
  static GameScreen + #87, #3967
  static GameScreen + #88, #3967
  static GameScreen + #89, #3967
  static GameScreen + #90, #2048
  static GameScreen + #91, #2048
  static GameScreen + #92, #2048
  static GameScreen + #93, #513
  static GameScreen + #94, #3967
  static GameScreen + #95, #3967
  static GameScreen + #96, #3967
  static GameScreen + #97, #3967
  static GameScreen + #98, #3967
  static GameScreen + #99, #3967
  static GameScreen + #100, #3967
  static GameScreen + #101, #3967
  static GameScreen + #102, #2048
  static GameScreen + #103, #2048
  static GameScreen + #104, #2048
  static GameScreen + #105, #0
  static GameScreen + #106, #0
  static GameScreen + #107, #0
  static GameScreen + #108, #0
  static GameScreen + #109, #0
  static GameScreen + #110, #3967
  static GameScreen + #111, #3584
  static GameScreen + #112, #3967
  static GameScreen + #113, #3967
  static GameScreen + #114, #3967
  static GameScreen + #115, #2304
  static GameScreen + #116, #3967
  static GameScreen + #117, #3967
  static GameScreen + #118, #3967
  static GameScreen + #119, #3967
  ;Linha 3
  static GameScreen + #120, #3967
  static GameScreen + #121, #3967
  static GameScreen + #122, #3967
  static GameScreen + #123, #3967
  static GameScreen + #124, #3967
  static GameScreen + #125, #3967
  static GameScreen + #126, #3967
  static GameScreen + #127, #3967
  static GameScreen + #128, #3967
  static GameScreen + #129, #3967
  static GameScreen + #130, #2048
  static GameScreen + #131, #2048
  static GameScreen + #132, #2048
  static GameScreen + #133, #513
  static GameScreen + #134, #3967
  static GameScreen + #135, #3967
  static GameScreen + #136, #3967
  static GameScreen + #137, #3967
  static GameScreen + #138, #3967
  static GameScreen + #139, #3967
  static GameScreen + #140, #3967
  static GameScreen + #141, #3967
  static GameScreen + #142, #2048
  static GameScreen + #143, #2048
  static GameScreen + #144, #2048
  static GameScreen + #145, #0
  static GameScreen + #146, #0
  static GameScreen + #147, #0
  static GameScreen + #148, #0
  static GameScreen + #149, #0
  static GameScreen + #150, #3967
  static GameScreen + #151, #3584
  static GameScreen + #152, #3967
  static GameScreen + #153, #3967
  static GameScreen + #154, #3967
  static GameScreen + #155, #2304
  static GameScreen + #156, #3967
  static GameScreen + #157, #3967
  static GameScreen + #158, #3967
  static GameScreen + #159, #3967
  ;Linha 4
  static GameScreen + #160, #3967
  static GameScreen + #161, #3967
  static GameScreen + #162, #3967
  static GameScreen + #163, #3967
  static GameScreen + #164, #3967
  static GameScreen + #165, #3967
  static GameScreen + #166, #3967
  static GameScreen + #167, #3967
  static GameScreen + #168, #3967
  static GameScreen + #169, #3967
  static GameScreen + #170, #2048
  static GameScreen + #171, #2048
  static GameScreen + #172, #2048
  static GameScreen + #173, #513
  static GameScreen + #174, #3967
  static GameScreen + #175, #3967
  static GameScreen + #176, #3967
  static GameScreen + #177, #3967
  static GameScreen + #178, #3967
  static GameScreen + #179, #3967
  static GameScreen + #180, #3967
  static GameScreen + #181, #3967
  static GameScreen + #182, #2048
  static GameScreen + #183, #2048
  static GameScreen + #184, #2048
  static GameScreen + #185, #0
  static GameScreen + #186, #0
  static GameScreen + #187, #0
  static GameScreen + #188, #0
  static GameScreen + #189, #0
  static GameScreen + #190, #3967
  static GameScreen + #191, #3967
  static GameScreen + #192, #3967
  static GameScreen + #193, #3967
  static GameScreen + #194, #3967
  static GameScreen + #195, #2304
  static GameScreen + #196, #3967
  static GameScreen + #197, #3967
  static GameScreen + #198, #3584
  static GameScreen + #199, #3584
  ;Linha 5
  static GameScreen + #200, #3967
  static GameScreen + #201, #3967
  static GameScreen + #202, #3967
  static GameScreen + #203, #3967
  static GameScreen + #204, #3967
  static GameScreen + #205, #3967
  static GameScreen + #206, #3967
  static GameScreen + #207, #3967
  static GameScreen + #208, #3967
  static GameScreen + #209, #3967
  static GameScreen + #210, #2048
  static GameScreen + #211, #2048
  static GameScreen + #212, #2048
  static GameScreen + #213, #513
  static GameScreen + #214, #3967
  static GameScreen + #215, #3967
  static GameScreen + #216, #3967
  static GameScreen + #217, #3967
  static GameScreen + #218, #3967
  static GameScreen + #219, #3967
  static GameScreen + #220, #3967
  static GameScreen + #221, #3967
  static GameScreen + #222, #2048
  static GameScreen + #223, #2048
  static GameScreen + #224, #2048
  static GameScreen + #225, #0
  static GameScreen + #226, #0
  static GameScreen + #227, #0
  static GameScreen + #228, #0
  static GameScreen + #229, #0
  static GameScreen + #230, #3967
  static GameScreen + #231, #3967
  static GameScreen + #232, #3967
  static GameScreen + #233, #3967
  static GameScreen + #234, #3967
  static GameScreen + #235, #3967
  static GameScreen + #236, #3967
  static GameScreen + #237, #3967
  static GameScreen + #238, #3967
  static GameScreen + #239, #3584
  ;Linha 6
  static GameScreen + #240, #3967
  static GameScreen + #241, #3967
  static GameScreen + #242, #3967
  static GameScreen + #243, #3967
  static GameScreen + #244, #3967
  static GameScreen + #245, #3967
  static GameScreen + #246, #3967
  static GameScreen + #247, #3967
  static GameScreen + #248, #3967
  static GameScreen + #249, #3967
  static GameScreen + #250, #2048
  static GameScreen + #251, #2048
  static GameScreen + #252, #2048
  static GameScreen + #253, #513
  static GameScreen + #254, #3967
  static GameScreen + #255, #3967
  static GameScreen + #256, #3967
  static GameScreen + #257, #3967
  static GameScreen + #258, #3967
  static GameScreen + #259, #3967
  static GameScreen + #260, #3967
  static GameScreen + #261, #3967
  static GameScreen + #262, #2048
  static GameScreen + #263, #2048
  static GameScreen + #264, #2048
  static GameScreen + #265, #0
  static GameScreen + #266, #0
  static GameScreen + #267, #0
  static GameScreen + #268, #0
  static GameScreen + #269, #0
  static GameScreen + #270, #3967
  static GameScreen + #271, #3967
  static GameScreen + #272, #3967
  static GameScreen + #273, #3328
  static GameScreen + #274, #3328
  static GameScreen + #275, #3328
  static GameScreen + #276, #3328
  static GameScreen + #277, #3328
  static GameScreen + #278, #3967
  static GameScreen + #279, #3584
  ;Linha 7
  static GameScreen + #280, #3967
  static GameScreen + #281, #3967
  static GameScreen + #282, #3967
  static GameScreen + #283, #3967
  static GameScreen + #284, #3967
  static GameScreen + #285, #3967
  static GameScreen + #286, #3967
  static GameScreen + #287, #3967
  static GameScreen + #288, #3967
  static GameScreen + #289, #3967
  static GameScreen + #290, #2048
  static GameScreen + #291, #2048
  static GameScreen + #292, #2048
  static GameScreen + #293, #513
  static GameScreen + #294, #3967
  static GameScreen + #295, #3967
  static GameScreen + #296, #3967
  static GameScreen + #297, #3967
  static GameScreen + #298, #3967
  static GameScreen + #299, #3967
  static GameScreen + #300, #3967
  static GameScreen + #301, #3967
  static GameScreen + #302, #2048
  static GameScreen + #303, #2048
  static GameScreen + #304, #2048
  static GameScreen + #305, #0
  static GameScreen + #306, #0
  static GameScreen + #307, #0
  static GameScreen + #308, #0
  static GameScreen + #309, #0
  static GameScreen + #310, #3967
  static GameScreen + #311, #3967
  static GameScreen + #312, #3967
  static GameScreen + #313, #3328
  static GameScreen + #314, #3967
  static GameScreen + #315, #3967
  static GameScreen + #316, #3967
  static GameScreen + #317, #3967
  static GameScreen + #318, #3967
  static GameScreen + #319, #3967
  ;Linha 8
  static GameScreen + #320, #3967
  static GameScreen + #321, #3967
  static GameScreen + #322, #3967
  static GameScreen + #323, #3967
  static GameScreen + #324, #3967
  static GameScreen + #325, #3967
  static GameScreen + #326, #3967
  static GameScreen + #327, #3967
  static GameScreen + #328, #3967
  static GameScreen + #329, #3967
  static GameScreen + #330, #2048
  static GameScreen + #331, #2048
  static GameScreen + #332, #2048
  static GameScreen + #333, #513
  static GameScreen + #334, #3967
  static GameScreen + #335, #3967
  static GameScreen + #336, #3967
  static GameScreen + #337, #3967
  static GameScreen + #338, #3967
  static GameScreen + #339, #3967
  static GameScreen + #340, #3967
  static GameScreen + #341, #3967
  static GameScreen + #342, #2048
  static GameScreen + #343, #2048
  static GameScreen + #344, #2048
  static GameScreen + #345, #0
  static GameScreen + #346, #0
  static GameScreen + #347, #0
  static GameScreen + #348, #0
  static GameScreen + #349, #0
  static GameScreen + #350, #3967
  static GameScreen + #351, #3967
  static GameScreen + #352, #3967
  static GameScreen + #353, #3328
  static GameScreen + #354, #3328
  static GameScreen + #355, #3328
  static GameScreen + #356, #3328
  static GameScreen + #357, #3328
  static GameScreen + #358, #3967
  static GameScreen + #359, #3967
  ;Linha 9
  static GameScreen + #360, #3967
  static GameScreen + #361, #3967
  static GameScreen + #362, #3967
  static GameScreen + #363, #3967
  static GameScreen + #364, #3967
  static GameScreen + #365, #3967
  static GameScreen + #366, #3967
  static GameScreen + #367, #3967
  static GameScreen + #368, #3967
  static GameScreen + #369, #3967
  static GameScreen + #370, #2048
  static GameScreen + #371, #2048
  static GameScreen + #372, #2048
  static GameScreen + #373, #513
  static GameScreen + #374, #513
  static GameScreen + #375, #513
  static GameScreen + #376, #513
  static GameScreen + #377, #513
  static GameScreen + #378, #513
  static GameScreen + #379, #513
  static GameScreen + #380, #513
  static GameScreen + #381, #513
  static GameScreen + #382, #2048
  static GameScreen + #383, #2048
  static GameScreen + #384, #2048
  static GameScreen + #385, #0
  static GameScreen + #386, #0
  static GameScreen + #387, #0
  static GameScreen + #388, #0
  static GameScreen + #389, #0
  static GameScreen + #390, #3967
  static GameScreen + #391, #3967
  static GameScreen + #392, #3967
  static GameScreen + #393, #3328
  static GameScreen + #394, #3967
  static GameScreen + #395, #3967
  static GameScreen + #396, #3967
  static GameScreen + #397, #3967
  static GameScreen + #398, #3967
  static GameScreen + #399, #3967
  ;Linha 10
  static GameScreen + #400, #3967
  static GameScreen + #401, #3967
  static GameScreen + #402, #3967
  static GameScreen + #403, #3967
  static GameScreen + #404, #3967
  static GameScreen + #405, #3967
  static GameScreen + #406, #3967
  static GameScreen + #407, #3967
  static GameScreen + #408, #3967
  static GameScreen + #409, #3967
  static GameScreen + #410, #2048
  static GameScreen + #411, #2048
  static GameScreen + #412, #2048
  static GameScreen + #413, #513
  static GameScreen + #414, #3150
  static GameScreen + #415, #513
  static GameScreen + #416, #3397
  static GameScreen + #417, #513
  static GameScreen + #418, #2392
  static GameScreen + #419, #513
  static GameScreen + #420, #596
  static GameScreen + #421, #513
  static GameScreen + #422, #2048
  static GameScreen + #423, #2048
  static GameScreen + #424, #2048
  static GameScreen + #425, #0
  static GameScreen + #426, #0
  static GameScreen + #427, #0
  static GameScreen + #428, #0
  static GameScreen + #429, #0
  static GameScreen + #430, #3967
  static GameScreen + #431, #3967
  static GameScreen + #432, #3967
  static GameScreen + #433, #3328
  static GameScreen + #434, #3328
  static GameScreen + #435, #3328
  static GameScreen + #436, #3328
  static GameScreen + #437, #3328
  static GameScreen + #438, #3967
  static GameScreen + #439, #3967
  ;Linha 11
  static GameScreen + #440, #3967
  static GameScreen + #441, #3967
  static GameScreen + #442, #3967
  static GameScreen + #443, #3967
  static GameScreen + #444, #3967
  static GameScreen + #445, #3967
  static GameScreen + #446, #3967
  static GameScreen + #447, #3967
  static GameScreen + #448, #3967
  static GameScreen + #449, #3967
  static GameScreen + #450, #2048
  static GameScreen + #451, #2048
  static GameScreen + #452, #2048
  static GameScreen + #453, #513
  static GameScreen + #454, #513
  static GameScreen + #455, #513
  static GameScreen + #456, #513
  static GameScreen + #457, #513
  static GameScreen + #458, #513
  static GameScreen + #459, #513
  static GameScreen + #460, #513
  static GameScreen + #461, #513
  static GameScreen + #462, #2048
  static GameScreen + #463, #2048
  static GameScreen + #464, #2048
  static GameScreen + #465, #0
  static GameScreen + #466, #0
  static GameScreen + #467, #0
  static GameScreen + #468, #0
  static GameScreen + #469, #0
  static GameScreen + #470, #3967
  static GameScreen + #471, #3967
  static GameScreen + #472, #3967
  static GameScreen + #473, #3967
  static GameScreen + #474, #3967
  static GameScreen + #475, #3967
  static GameScreen + #476, #3967
  static GameScreen + #477, #3967
  static GameScreen + #478, #3967
  static GameScreen + #479, #3967
  ;Linha 12
  static GameScreen + #480, #3967
  static GameScreen + #481, #3967
  static GameScreen + #482, #3967
  static GameScreen + #483, #3967
  static GameScreen + #484, #3967
  static GameScreen + #485, #3967
  static GameScreen + #486, #3967
  static GameScreen + #487, #3967
  static GameScreen + #488, #3967
  static GameScreen + #489, #3967
  static GameScreen + #490, #2048
  static GameScreen + #491, #2048
  static GameScreen + #492, #2048
  static GameScreen + #493, #2048
  static GameScreen + #494, #2048
  static GameScreen + #495, #2048
  static GameScreen + #496, #2048
  static GameScreen + #497, #2048
  static GameScreen + #498, #2048
  static GameScreen + #499, #2048
  static GameScreen + #500, #2048
  static GameScreen + #501, #2048
  static GameScreen + #502, #2048
  static GameScreen + #503, #2048
  static GameScreen + #504, #2048
  static GameScreen + #505, #0
  static GameScreen + #506, #0
  static GameScreen + #507, #0
  static GameScreen + #508, #0
  static GameScreen + #509, #0
  static GameScreen + #510, #3967
  static GameScreen + #511, #3967
  static GameScreen + #512, #3967
  static GameScreen + #513, #2816
  static GameScreen + #514, #2816
  static GameScreen + #515, #2816
  static GameScreen + #516, #2816
  static GameScreen + #517, #2816
  static GameScreen + #518, #3967
  static GameScreen + #519, #3967
  ;Linha 13
  static GameScreen + #520, #3967
  static GameScreen + #521, #3967
  static GameScreen + #522, #3967
  static GameScreen + #523, #3967
  static GameScreen + #524, #3967
  static GameScreen + #525, #3967
  static GameScreen + #526, #3967
  static GameScreen + #527, #3967
  static GameScreen + #528, #3967
  static GameScreen + #529, #3967
  static GameScreen + #530, #2048
  static GameScreen + #531, #2048
  static GameScreen + #532, #2048
  static GameScreen + #533, #2048
  static GameScreen + #534, #2048
  static GameScreen + #535, #2048
  static GameScreen + #536, #2048
  static GameScreen + #537, #2048
  static GameScreen + #538, #2048
  static GameScreen + #539, #2048
  static GameScreen + #540, #2048
  static GameScreen + #541, #2048
  static GameScreen + #542, #2048
  static GameScreen + #543, #2048
  static GameScreen + #544, #2048
  static GameScreen + #545, #0
  static GameScreen + #546, #0
  static GameScreen + #547, #0
  static GameScreen + #548, #0
  static GameScreen + #549, #0
  static GameScreen + #550, #3967
  static GameScreen + #551, #3967
  static GameScreen + #552, #3967
  static GameScreen + #553, #3967
  static GameScreen + #554, #3967
  static GameScreen + #555, #2816
  static GameScreen + #556, #3967
  static GameScreen + #557, #3967
  static GameScreen + #558, #3967
  static GameScreen + #559, #3967
  ;Linha 14
  static GameScreen + #560, #3967
  static GameScreen + #561, #3967
  static GameScreen + #562, #3967
  static GameScreen + #563, #3967
  static GameScreen + #564, #3967
  static GameScreen + #565, #3967
  static GameScreen + #566, #3967
  static GameScreen + #567, #3967
  static GameScreen + #568, #3967
  static GameScreen + #569, #3967
  static GameScreen + #570, #2048
  static GameScreen + #571, #2048
  static GameScreen + #572, #2048
  static GameScreen + #573, #2048
  static GameScreen + #574, #2048
  static GameScreen + #575, #2048
  static GameScreen + #576, #2048
  static GameScreen + #577, #2048
  static GameScreen + #578, #2048
  static GameScreen + #579, #2048
  static GameScreen + #580, #2048
  static GameScreen + #581, #2048
  static GameScreen + #582, #2048
  static GameScreen + #583, #2048
  static GameScreen + #584, #2048
  static GameScreen + #585, #0
  static GameScreen + #586, #0
  static GameScreen + #587, #0
  static GameScreen + #588, #0
  static GameScreen + #589, #0
  static GameScreen + #590, #3967
  static GameScreen + #591, #3584
  static GameScreen + #592, #3584
  static GameScreen + #593, #3967
  static GameScreen + #594, #3967
  static GameScreen + #595, #2816
  static GameScreen + #596, #3967
  static GameScreen + #597, #3967
  static GameScreen + #598, #3967
  static GameScreen + #599, #3967
  ;Linha 15
  static GameScreen + #600, #3967
  static GameScreen + #601, #3967
  static GameScreen + #602, #3967
  static GameScreen + #603, #3967
  static GameScreen + #604, #3967
  static GameScreen + #605, #3967
  static GameScreen + #606, #3967
  static GameScreen + #607, #3967
  static GameScreen + #608, #3967
  static GameScreen + #609, #3967
  static GameScreen + #610, #2048
  static GameScreen + #611, #2048
  static GameScreen + #612, #2048
  static GameScreen + #613, #0
  static GameScreen + #614, #0
  static GameScreen + #615, #0
  static GameScreen + #616, #0
  static GameScreen + #617, #0
  static GameScreen + #618, #0
  static GameScreen + #619, #0
  static GameScreen + #620, #0
  static GameScreen + #621, #0
  static GameScreen + #622, #0
  static GameScreen + #623, #0
  static GameScreen + #624, #0
  static GameScreen + #625, #0
  static GameScreen + #626, #0
  static GameScreen + #627, #0
  static GameScreen + #628, #0
  static GameScreen + #629, #0
  static GameScreen + #630, #3967
  static GameScreen + #631, #3584
  static GameScreen + #632, #3584
  static GameScreen + #633, #3967
  static GameScreen + #634, #3967
  static GameScreen + #635, #2816
  static GameScreen + #636, #3967
  static GameScreen + #637, #3967
  static GameScreen + #638, #3967
  static GameScreen + #639, #3967
  ;Linha 16
  static GameScreen + #640, #3967
  static GameScreen + #641, #3967
  static GameScreen + #642, #3967
  static GameScreen + #643, #3967
  static GameScreen + #644, #3967
  static GameScreen + #645, #3967
  static GameScreen + #646, #3967
  static GameScreen + #647, #3967
  static GameScreen + #648, #3967
  static GameScreen + #649, #3967
  static GameScreen + #650, #2048
  static GameScreen + #651, #2048
  static GameScreen + #652, #2048
  static GameScreen + #653, #0
  static GameScreen + #654, #0
  static GameScreen + #655, #0
  static GameScreen + #656, #0
  static GameScreen + #657, #0
  static GameScreen + #658, #0
  static GameScreen + #659, #0
  static GameScreen + #660, #0
  static GameScreen + #661, #0
  static GameScreen + #662, #0
  static GameScreen + #663, #0
  static GameScreen + #664, #0
  static GameScreen + #665, #0
  static GameScreen + #666, #0
  static GameScreen + #667, #0
  static GameScreen + #668, #0
  static GameScreen + #669, #0
  static GameScreen + #670, #3967
  static GameScreen + #671, #3967
  static GameScreen + #672, #3967
  static GameScreen + #673, #3967
  static GameScreen + #674, #3967
  static GameScreen + #675, #3967
  static GameScreen + #676, #3967
  static GameScreen + #677, #3967
  static GameScreen + #678, #3967
  static GameScreen + #679, #3967
  ;Linha 17
  static GameScreen + #680, #3967
  static GameScreen + #681, #3967
  static GameScreen + #682, #3967
  static GameScreen + #683, #3967
  static GameScreen + #684, #3967
  static GameScreen + #685, #3967
  static GameScreen + #686, #3967
  static GameScreen + #687, #3967
  static GameScreen + #688, #3967
  static GameScreen + #689, #3967
  static GameScreen + #690, #2048
  static GameScreen + #691, #2048
  static GameScreen + #692, #2048
  static GameScreen + #693, #0
  static GameScreen + #694, #0
  static GameScreen + #695, #0
  static GameScreen + #696, #2048
  static GameScreen + #697, #2048
  static GameScreen + #698, #2048
  static GameScreen + #699, #2048
  static GameScreen + #700, #2048
  static GameScreen + #701, #2048
  static GameScreen + #702, #2048
  static GameScreen + #703, #2048
  static GameScreen + #704, #2048
  static GameScreen + #705, #2048
  static GameScreen + #706, #2048
  static GameScreen + #707, #2048
  static GameScreen + #708, #0
  static GameScreen + #709, #0
  static GameScreen + #710, #3967
  static GameScreen + #711, #3967
  static GameScreen + #712, #3967
  static GameScreen + #713, #512
  static GameScreen + #714, #512
  static GameScreen + #715, #512
  static GameScreen + #716, #3967
  static GameScreen + #717, #3072
  static GameScreen + #718, #3967
  static GameScreen + #719, #3967
  ;Linha 18
  static GameScreen + #720, #3967
  static GameScreen + #721, #3967
  static GameScreen + #722, #3967
  static GameScreen + #723, #3967
  static GameScreen + #724, #3967
  static GameScreen + #725, #3967
  static GameScreen + #726, #3967
  static GameScreen + #727, #3967
  static GameScreen + #728, #3967
  static GameScreen + #729, #3967
  static GameScreen + #730, #2048
  static GameScreen + #731, #2048
  static GameScreen + #732, #2048
  static GameScreen + #733, #0
  static GameScreen + #734, #0
  static GameScreen + #735, #0
  static GameScreen + #736, #2048
  static GameScreen + #737, #2049
  static GameScreen + #738, #2049
  static GameScreen + #739, #2049
  static GameScreen + #740, #2049
  static GameScreen + #741, #2049
  static GameScreen + #742, #2049
  static GameScreen + #743, #2049
  static GameScreen + #744, #2049
  static GameScreen + #745, #2049
  static GameScreen + #746, #2049
  static GameScreen + #747, #2048
  static GameScreen + #748, #0
  static GameScreen + #749, #0
  static GameScreen + #750, #3967
  static GameScreen + #751, #3967
  static GameScreen + #752, #3967
  static GameScreen + #753, #512
  static GameScreen + #754, #3967
  static GameScreen + #755, #512
  static GameScreen + #756, #3967
  static GameScreen + #757, #3072
  static GameScreen + #758, #3967
  static GameScreen + #759, #3967
  ;Linha 19
  static GameScreen + #760, #3967
  static GameScreen + #761, #3967
  static GameScreen + #762, #3967
  static GameScreen + #763, #3967
  static GameScreen + #764, #3967
  static GameScreen + #765, #3967
  static GameScreen + #766, #3967
  static GameScreen + #767, #3967
  static GameScreen + #768, #3967
  static GameScreen + #769, #3967
  static GameScreen + #770, #2048
  static GameScreen + #771, #2048
  static GameScreen + #772, #2048
  static GameScreen + #773, #0
  static GameScreen + #774, #0
  static GameScreen + #775, #0
  static GameScreen + #776, #2048
  static GameScreen + #777, #2049
  static GameScreen + #778, #2131
  static GameScreen + #779, #2115
  static GameScreen + #780, #2127
  static GameScreen + #781, #2130
  static GameScreen + #782, #2117
  static GameScreen + #783, #2106
  static GameScreen + #784, #2049
  static GameScreen + #785, #2049
  static GameScreen + #786, #2049
  static GameScreen + #787, #2048
  static GameScreen + #788, #0
  static GameScreen + #789, #0
  static GameScreen + #790, #3967
  static GameScreen + #791, #3967
  static GameScreen + #792, #3967
  static GameScreen + #793, #512
  static GameScreen + #794, #512
  static GameScreen + #795, #3967
  static GameScreen + #796, #3967
  static GameScreen + #797, #3072
  static GameScreen + #798, #3967
  static GameScreen + #799, #3967
  ;Linha 20
  static GameScreen + #800, #3967
  static GameScreen + #801, #3967
  static GameScreen + #802, #3967
  static GameScreen + #803, #3967
  static GameScreen + #804, #3967
  static GameScreen + #805, #3967
  static GameScreen + #806, #3967
  static GameScreen + #807, #3967
  static GameScreen + #808, #3967
  static GameScreen + #809, #3967
  static GameScreen + #810, #2048
  static GameScreen + #811, #2048
  static GameScreen + #812, #2048
  static GameScreen + #813, #0
  static GameScreen + #814, #0
  static GameScreen + #815, #0
  static GameScreen + #816, #2048
  static GameScreen + #817, #2049
  static GameScreen + #818, #2049
  static GameScreen + #819, #2049
  static GameScreen + #820, #2049
  static GameScreen + #821, #2049
  static GameScreen + #822, #2049
  static GameScreen + #823, #2049
  static GameScreen + #824, #2049
  static GameScreen + #825, #2049
  static GameScreen + #826, #2049
  static GameScreen + #827, #2048
  static GameScreen + #828, #0
  static GameScreen + #829, #0
  static GameScreen + #830, #3967
  static GameScreen + #831, #3967
  static GameScreen + #832, #3967
  static GameScreen + #833, #512
  static GameScreen + #834, #3967
  static GameScreen + #835, #512
  static GameScreen + #836, #3967
  static GameScreen + #837, #3072
  static GameScreen + #838, #3967
  static GameScreen + #839, #3967
  ;Linha 21
  static GameScreen + #840, #3967
  static GameScreen + #841, #3967
  static GameScreen + #842, #3967
  static GameScreen + #843, #3967
  static GameScreen + #844, #3967
  static GameScreen + #845, #3967
  static GameScreen + #846, #3967
  static GameScreen + #847, #3967
  static GameScreen + #848, #3967
  static GameScreen + #849, #3967
  static GameScreen + #850, #2048
  static GameScreen + #851, #2048
  static GameScreen + #852, #2048
  static GameScreen + #853, #0
  static GameScreen + #854, #0
  static GameScreen + #855, #0
  static GameScreen + #856, #2048
  static GameScreen + #857, #2049
  static GameScreen + #858, #2049
  static GameScreen + #859, #2049
  static GameScreen + #860, #2049
  static GameScreen + #861, #2049
  static GameScreen + #862, #2049
  static GameScreen + #863, #2049
  static GameScreen + #864, #2049
  static GameScreen + #865, #2049
  static GameScreen + #866, #2049
  static GameScreen + #867, #2048
  static GameScreen + #868, #0
  static GameScreen + #869, #0
  static GameScreen + #870, #3967
  static GameScreen + #871, #3967
  static GameScreen + #872, #3967
  static GameScreen + #873, #3967
  static GameScreen + #874, #3967
  static GameScreen + #875, #3967
  static GameScreen + #876, #3967
  static GameScreen + #877, #3967
  static GameScreen + #878, #3967
  static GameScreen + #879, #3584
  ;Linha 22
  static GameScreen + #880, #3967
  static GameScreen + #881, #3967
  static GameScreen + #882, #3967
  static GameScreen + #883, #3967
  static GameScreen + #884, #3967
  static GameScreen + #885, #3967
  static GameScreen + #886, #3967
  static GameScreen + #887, #3967
  static GameScreen + #888, #3967
  static GameScreen + #889, #3967
  static GameScreen + #890, #2048
  static GameScreen + #891, #2048
  static GameScreen + #892, #2048
  static GameScreen + #893, #0
  static GameScreen + #894, #0
  static GameScreen + #895, #0
  static GameScreen + #896, #2048
  static GameScreen + #897, #2049
  static GameScreen + #898, #2049
  static GameScreen + #899, #2049
  static GameScreen + #900, #2049
  static GameScreen + #901, #2049
  static GameScreen + #902, #2049
  static GameScreen + #903, #2049
  static GameScreen + #904, #2049
  static GameScreen + #905, #2049
  static GameScreen + #906, #2049
  static GameScreen + #907, #2048
  static GameScreen + #908, #0
  static GameScreen + #909, #0
  static GameScreen + #910, #3967
  static GameScreen + #911, #3967
  static GameScreen + #912, #3584
  static GameScreen + #913, #3584
  static GameScreen + #914, #3967
  static GameScreen + #915, #3967
  static GameScreen + #916, #3967
  static GameScreen + #917, #3967
  static GameScreen + #918, #3584
  static GameScreen + #919, #3584
  ;Linha 23
  static GameScreen + #920, #3967
  static GameScreen + #921, #3967
  static GameScreen + #922, #3967
  static GameScreen + #923, #3967
  static GameScreen + #924, #3967
  static GameScreen + #925, #3967
  static GameScreen + #926, #3967
  static GameScreen + #927, #3967
  static GameScreen + #928, #3967
  static GameScreen + #929, #3967
  static GameScreen + #930, #2048
  static GameScreen + #931, #2048
  static GameScreen + #932, #2048
  static GameScreen + #933, #0
  static GameScreen + #934, #0
  static GameScreen + #935, #0
  static GameScreen + #936, #2048
  static GameScreen + #937, #2049
  static GameScreen + #938, #2049
  static GameScreen + #939, #2049
  static GameScreen + #940, #2049
  static GameScreen + #941, #2049
  static GameScreen + #942, #2049
  static GameScreen + #943, #2049
  static GameScreen + #944, #2049
  static GameScreen + #945, #2049
  static GameScreen + #946, #2049
  static GameScreen + #947, #2048
  static GameScreen + #948, #0
  static GameScreen + #949, #0
  static GameScreen + #950, #3967
  static GameScreen + #951, #3584
  static GameScreen + #952, #3584
  static GameScreen + #953, #3967
  static GameScreen + #954, #3967
  static GameScreen + #955, #256
  static GameScreen + #956, #256
  static GameScreen + #957, #3967
  static GameScreen + #958, #3967
  static GameScreen + #959, #3584
  ;Linha 24
  static GameScreen + #960, #3967
  static GameScreen + #961, #3967
  static GameScreen + #962, #3967
  static GameScreen + #963, #3967
  static GameScreen + #964, #3967
  static GameScreen + #965, #3967
  static GameScreen + #966, #3967
  static GameScreen + #967, #3967
  static GameScreen + #968, #3967
  static GameScreen + #969, #3967
  static GameScreen + #970, #2048
  static GameScreen + #971, #2048
  static GameScreen + #972, #2048
  static GameScreen + #973, #0
  static GameScreen + #974, #0
  static GameScreen + #975, #0
  static GameScreen + #976, #2048
  static GameScreen + #977, #2048
  static GameScreen + #978, #2048
  static GameScreen + #979, #2048
  static GameScreen + #980, #2048
  static GameScreen + #981, #2048
  static GameScreen + #982, #2048
  static GameScreen + #983, #2048
  static GameScreen + #984, #2048
  static GameScreen + #985, #2048
  static GameScreen + #986, #2048
  static GameScreen + #987, #2048
  static GameScreen + #988, #0
  static GameScreen + #989, #0
  static GameScreen + #990, #3967
  static GameScreen + #991, #3967
  static GameScreen + #992, #3967
  static GameScreen + #993, #3967
  static GameScreen + #994, #256
  static GameScreen + #995, #3967
  static GameScreen + #996, #3967
  static GameScreen + #997, #3967
  static GameScreen + #998, #3967
  static GameScreen + #999, #3967
  ;Linha 25
  static GameScreen + #1000, #3967
  static GameScreen + #1001, #3967
  static GameScreen + #1002, #3967
  static GameScreen + #1003, #3967
  static GameScreen + #1004, #3967
  static GameScreen + #1005, #3967
  static GameScreen + #1006, #3967
  static GameScreen + #1007, #3967
  static GameScreen + #1008, #3967
  static GameScreen + #1009, #3967
  static GameScreen + #1010, #2048
  static GameScreen + #1011, #2048
  static GameScreen + #1012, #2048
  static GameScreen + #1013, #0
  static GameScreen + #1014, #0
  static GameScreen + #1015, #0
  static GameScreen + #1016, #0
  static GameScreen + #1017, #0
  static GameScreen + #1018, #0
  static GameScreen + #1019, #0
  static GameScreen + #1020, #0
  static GameScreen + #1021, #0
  static GameScreen + #1022, #0
  static GameScreen + #1023, #0
  static GameScreen + #1024, #0
  static GameScreen + #1025, #0
  static GameScreen + #1026, #0
  static GameScreen + #1027, #0
  static GameScreen + #1028, #0
  static GameScreen + #1029, #0
  static GameScreen + #1030, #3967
  static GameScreen + #1031, #3967
  static GameScreen + #1032, #3967
  static GameScreen + #1033, #3967
  static GameScreen + #1034, #3967
  static GameScreen + #1035, #256
  static GameScreen + #1036, #3967
  static GameScreen + #1037, #3967
  static GameScreen + #1038, #3584
  static GameScreen + #1039, #3584
  ;Linha 26
  static GameScreen + #1040, #3967
  static GameScreen + #1041, #3967
  static GameScreen + #1042, #3967
  static GameScreen + #1043, #3967
  static GameScreen + #1044, #3967
  static GameScreen + #1045, #3967
  static GameScreen + #1046, #3967
  static GameScreen + #1047, #3967
  static GameScreen + #1048, #3967
  static GameScreen + #1049, #3967
  static GameScreen + #1050, #2048
  static GameScreen + #1051, #2048
  static GameScreen + #1052, #2048
  static GameScreen + #1053, #0
  static GameScreen + #1054, #0
  static GameScreen + #1055, #0
  static GameScreen + #1056, #0
  static GameScreen + #1057, #0
  static GameScreen + #1058, #0
  static GameScreen + #1059, #0
  static GameScreen + #1060, #0
  static GameScreen + #1061, #0
  static GameScreen + #1062, #0
  static GameScreen + #1063, #0
  static GameScreen + #1064, #0
  static GameScreen + #1065, #0
  static GameScreen + #1066, #0
  static GameScreen + #1067, #0
  static GameScreen + #1068, #0
  static GameScreen + #1069, #0
  static GameScreen + #1070, #3967
  static GameScreen + #1071, #3967
  static GameScreen + #1072, #3967
  static GameScreen + #1073, #3967
  static GameScreen + #1074, #3967
  static GameScreen + #1075, #3967
  static GameScreen + #1076, #256
  static GameScreen + #1077, #3967
  static GameScreen + #1078, #3584
  static GameScreen + #1079, #3967
  ;Linha 27
  static GameScreen + #1080, #3967
  static GameScreen + #1081, #3967
  static GameScreen + #1082, #3967
  static GameScreen + #1083, #3967
  static GameScreen + #1084, #3967
  static GameScreen + #1085, #3967
  static GameScreen + #1086, #3967
  static GameScreen + #1087, #3967
  static GameScreen + #1088, #3967
  static GameScreen + #1089, #3967
  static GameScreen + #1090, #2048
  static GameScreen + #1091, #2048
  static GameScreen + #1092, #2048
  static GameScreen + #1093, #0
  static GameScreen + #1094, #0
  static GameScreen + #1095, #0
  static GameScreen + #1096, #0
  static GameScreen + #1097, #0
  static GameScreen + #1098, #0
  static GameScreen + #1099, #0
  static GameScreen + #1100, #0
  static GameScreen + #1101, #0
  static GameScreen + #1102, #0
  static GameScreen + #1103, #0
  static GameScreen + #1104, #0
  static GameScreen + #1105, #0
  static GameScreen + #1106, #0
  static GameScreen + #1107, #0
  static GameScreen + #1108, #0
  static GameScreen + #1109, #0
  static GameScreen + #1110, #3967
  static GameScreen + #1111, #3967
  static GameScreen + #1112, #3967
  static GameScreen + #1113, #3967
  static GameScreen + #1114, #256
  static GameScreen + #1115, #256
  static GameScreen + #1116, #3967
  static GameScreen + #1117, #3967
  static GameScreen + #1118, #3584
  static GameScreen + #1119, #3967
  ;Linha 28
  static GameScreen + #1120, #3967
  static GameScreen + #1121, #3967
  static GameScreen + #1122, #3967
  static GameScreen + #1123, #3967
  static GameScreen + #1124, #3967
  static GameScreen + #1125, #3967
  static GameScreen + #1126, #3967
  static GameScreen + #1127, #3967
  static GameScreen + #1128, #3967
  static GameScreen + #1129, #3967
  static GameScreen + #1130, #2048
  static GameScreen + #1131, #2048
  static GameScreen + #1132, #2048
  static GameScreen + #1133, #0
  static GameScreen + #1134, #0
  static GameScreen + #1135, #0
  static GameScreen + #1136, #0
  static GameScreen + #1137, #0
  static GameScreen + #1138, #0
  static GameScreen + #1139, #0
  static GameScreen + #1140, #0
  static GameScreen + #1141, #0
  static GameScreen + #1142, #0
  static GameScreen + #1143, #0
  static GameScreen + #1144, #0
  static GameScreen + #1145, #0
  static GameScreen + #1146, #0
  static GameScreen + #1147, #0
  static GameScreen + #1148, #0
  static GameScreen + #1149, #0
  static GameScreen + #1150, #3967
  static GameScreen + #1151, #3584
  static GameScreen + #1152, #3584
  static GameScreen + #1153, #3967
  static GameScreen + #1154, #3967
  static GameScreen + #1155, #3967
  static GameScreen + #1156, #3967
  static GameScreen + #1157, #3967
  static GameScreen + #1158, #3967
  static GameScreen + #1159, #3967
  ;Linha 29
  static GameScreen + #1160, #2048
  static GameScreen + #1161, #2048
  static GameScreen + #1162, #2048
  static GameScreen + #1163, #2048
  static GameScreen + #1164, #2048
  static GameScreen + #1165, #2048
  static GameScreen + #1166, #2048
  static GameScreen + #1167, #2048
  static GameScreen + #1168, #2048
  static GameScreen + #1169, #2048
  static GameScreen + #1170, #2048
  static GameScreen + #1171, #2048
  static GameScreen + #1172, #2048
  static GameScreen + #1173, #0
  static GameScreen + #1174, #0
  static GameScreen + #1175, #0
  static GameScreen + #1176, #0
  static GameScreen + #1177, #0
  static GameScreen + #1178, #0
  static GameScreen + #1179, #0
  static GameScreen + #1180, #0
  static GameScreen + #1181, #0
  static GameScreen + #1182, #0
  static GameScreen + #1183, #0
  static GameScreen + #1184, #0
  static GameScreen + #1185, #0
  static GameScreen + #1186, #0
  static GameScreen + #1187, #0
  static GameScreen + #1188, #0
  static GameScreen + #1189, #0
  static GameScreen + #1190, #3967
  static GameScreen + #1191, #3967
  static GameScreen + #1192, #3584
  static GameScreen + #1193, #3584
  static GameScreen + #1194, #3967
  static GameScreen + #1195, #3967
  static GameScreen + #1196, #3967
  static GameScreen + #1197, #3967
  static GameScreen + #1198, #3967
  static GameScreen + #1199, #3967
printGameScreenScreen:
  push R0
  push R1
  push R2
  push R3
  loadn R0, #GameScreen
  loadn R1, #0
  loadn R2, #1200
  printGameScreenScreenLoop:
    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2
    jne printGameScreenScreenLoop
  pop R3
  pop R2
  pop R1
  pop R0
  rts
init_game_message : string "Aperte 'i' para comecar!"
main:
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
push r0
push r1
push r2
loadn r0, #1045
loadn r1, #init_game_message
loadn r2, #512
call print_string
pop r2
pop r1
pop r0
push r0
loadn r0, #'i'
call wait_press_key
pop r0
    call clear_screen
game_screen:
  push fr
  push R0
  push R1
  push R2
  push R3
  loadn R0, #GameScreen
  loadn R1, #0
  loadn R2, #1200
  game_screen_loop:
    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2
    jne game_screen_loop
  pop R3
  pop R2
  pop R1
  pop R0
  pop fr
    halt
print_string: ; Rotina de Impresao de Mensagens: r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
 push fr ; Protege o registrador de flags
 push r0 ; protege o r0 na pilha para preservar seu valor
 push r1 ; protege o r1 na pilha para preservar seu valor
 push r2 ; protege o r1 na pilha para preservar seu valor
 push r3 ; protege o r3 na pilha para ser usado na subrotina
 push r4 ; protege o r4 na pilha para ser usado na subrotina
 loadn r3, #'\0' ; Criterio de parada
   print_string_loop:
  loadi r4, r1
  cmp r4, r3
  jeq print_string_exit
  add r4, r2, r4
  outchar r4, r0
  inc r0
  inc r1
  jmp print_string_loop
   print_string_exit:
 pop r4 ; Resgata os valores dos registradores utilizados na Subrotina da Pilha
 pop r3
 pop r2
 pop r1
 pop r0
 pop fr
 rts
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
loadn r3, #0 ;square char
loadn r2, #8
;getting the color using game tetromino adress
add r1, r0, r2
loadi r1, r1
;color got
add r3, r3, r1
draw_tetromino_loop:
loadi r4, r0
inc r0
loadi r5, r0
inc r0
push r0
push r1
push r2
mov r1, r4
mov r2, r5
call get_number_in_game_map_from_row_col
mov r6, r0
pop r2
pop r1
pop r0
outchar r3, r6
dec r2
dec r2
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
; This function will "undraw" the tetromino.
; The argument is r0:
; the tetromino first adress.
clear_tetromino:
push fr
push r0
push r1
push r2
push r3
push r4
push r5
loadn r2, #' ' ;empty char
loadn r1, #8
clear_tetromino_loop:
loadi r3, r0
inc r0
loadi r4, r0
inc r0
push r0
push r1
push r2
mov r1, r3
mov r2, r4
call get_number_in_game_map_from_row_col
mov r5, r0
pop r2
pop r1
pop r0
outchar r2, r5
dec r1
dec r1
jnz clear_tetromino_loop
clear_tetromino_exit:
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
pop fr
rts
;This function will put ' ' in all screen
clear_screen:
push fr
push r0
push r1
loadn r0, #1199
loadn r1, #' '
clear_screen_loop:
outchar r1, r0
dec r0
jnz clear_screen_loop
clear_screen_exit:
pop r1
pop r0
pop fr
rts
;This function will get a value from input and store the value in r0
get_input:
push fr
push r1
loadn r1, #0
get_input_loop:
inchar r0
cmp r0, r1
jne get_input_exit
jmp get_input_loop
get_input_exit:
pop r1
pop fr
rts
;This function will wait until the value in r0 is got from the keyboard
wait_press_key:
push fr
push r0
push r1
wait_press_key_loop:
inchar r1
cmp r1, r0
jeq wait_press_key_exit
jmp wait_press_key_loop
wait_press_key_exit:
pop r1
pop r0
pop fr
rts
; This function receives from R1(row) R2(col)
; and output the draw number at R0(number)
get_number_in_game_map_from_row_col:
push fr
push r1
push r2
push r3
loadn r3, #40
mul r0, r1, r3
add r0, r0, r2; now the number is returned
get_number_in_game_map_from_row_col_exit:
pop r3
pop r2
pop r1
pop fr
rts
;this function receives from R7(number) the number in the game map array and output at R5(row) and R6(collumn)
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
loadn r7, #8
; getting current pivot off set
push r0
loadi r5, r0
inc r0
loadi r6, r0
pop r0
; end getting current pivot off set
;will change the position of every pixel in pixel array
change_tetromino_position_loop:
loadi r3, r0
inc r0
loadi r4, r0
inc r0
add r3, r3, r1
sub r3, r3, r5
add r4, r4, r2
sub r4, r4, r6
dec r0
dec r0
storei r0, r3
inc r0
storei r0, r4
inc r0
dec r7
dec r7
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
; This function will rotate positive the game tetromino.
; The arguments is r0:
; the memory adress of the tetromino you want
; to rotate positive(clockwise).
rotate_tetromino:
push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7
loadn r4, #8
loadn r3, #3
; getting prefab and rotation
push r4 ;saving pixel array size for later
inc r4
add r5, r4, r0
loadi r5, r5 ; getting the adress of the prefab
inc r4
add r2, r4, r0 ; getting the tetromino rotation adress
loadi r1, r2 ; getting the tetromino rotation number
pop r4
; end getting prefab and rotation
; getting pivot position to change position later
push r0 ;saving adress for the change position function call
loadi r6, r0
inc r0
loadi r7, r0
dec r0
push r6 ; saving r6, because it is used when getting the pixels from prefab
; end getting pivot position
cmp r1, r3
jeq rotate_tetromino_zero
jmp rotate_tetromino_nonzero
rotate_tetromino_loop:
loadi r6, r5
storei r0, r6
inc r5
inc r0
dec r4
jnz rotate_tetromino_loop
rotate_tetromino_exit:
pop r6
pop r0
mov r0, r0
mov r1, r6
mov r2, r7
call change_tetromino_position
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
rotate_tetromino_zero:
loadn r1, #0
storei r2, r1
jmp rotate_tetromino_loop
rotate_tetromino_nonzero:
inc r1
storei r2, r1
; getting the adress of rotated tetromino
mul r1, r1, r4
add r5, r5, r1
; end getting the adress
jmp rotate_tetromino_loop
; This function will set the game tetromino state.
; The arguments are r0, r1, r2, r3:
; selecting the tetromino, the color, the rotation,
; and the memory adress of the tetromino you want
; to change.
set_tetromino:
push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7
loadn r4, #I_rotation_0_pixels_array
loadn r6, #32
loadn r5, #8
;getting the memory adress of the prefab selected and rotation
push r2 ; saving the rotation value for later
mul r7, r0, r6
add r7, r4, r7
push r7 ; saving the prefab adress with rotation zero, to store in game tetromino
mul r2, r2, r5
add r7, r2, r7
set_tetromino_loop:
loadi r6, r7 ;Get the position in the adress
storei r3, r6 ;Put position in another adress
inc r3
inc r7
dec r5
jnz set_tetromino_loop
set_tetromino_exit:
; storing the color
storei r3, r1
inc r3
; storing the prefab adress
pop r7
storei r3, r7
inc r3
; storing the rotation
pop r2
storei r3, r2
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
; This function will copy all information
; from next to current tetromino
copy_next_to_current:
push fr
push r0
push r1
push r2
push r3
loadn r0, #current_tetromino_pixels_array
loadn r1, #next_tetromino_pixels_array
loadn r3, #11
copy_next_to_current_loop:
loadi r2, r1
storei r0, r2
inc r0
inc r1
dec r3
jnz copy_next_to_current_loop
copy_next_to_current_end:
pop r3
pop r2
pop r1
pop r0
pop fr
