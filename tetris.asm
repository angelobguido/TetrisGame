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
static current_tetromino_pixels_array + #0, #4 ; pivot pixel row position
static current_tetromino_pixels_array + #1, #4 ; pivot pixel column position
static current_tetromino_pixels_array + #2, #3 ; 1st pixel row position
static current_tetromino_pixels_array + #3, #4 ; 1st pixel column position
static current_tetromino_pixels_array + #4, #5 ; 2nd pixel row position
static current_tetromino_pixels_array + #5, #4 ; 2nd pixel column position
static current_tetromino_pixels_array + #6, #6 ; 3th pixel row position
static current_tetromino_pixels_array + #7, #4 ; 3th pixel column position
static current_tetromino_color, #512
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
push r0
push r1
push r2
push r3
loadn r0, #0 ; '0' stands for "I tetromino"
loadn r1, #2304
loadn r2, #0
loadn r3, #current_tetromino_pixels_array
call set_tetromino
push r0
mov r0, r3
call draw_tetromino
pop r0
pop r3
pop r2
pop r1
pop r0
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
; multiply function call
push r1
push r2
mov r1, r1
mov r2, r3
call multiply
pop r2
pop r1
add r0, r0, r2; now the number is returned
get_number_in_game_map_from_row_col_exit:
pop r3
pop r2
pop r1
pop fr
rts
;this function receives from R7(number) the number in the game map array and output at R5(row) and R6(collumn)
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
;this is a function call to substitute the above instruction that does not work
;mult r7, r0, r6
push r0
push r1
push r2
mov r1, r0
mov r2, r6
call multiply
mov r7, r0
pop r2
pop r1
pop r0
;end call
add r7, r4, r7
push r7 ; saving the prefab adress with rotation zero, to store in game tetromino
;this is a function call to substitute the above instruction that does not work
;mult r2, r2, r5
push r0
push r1
push r2
mov r1, r5
mov r2, r2
call multiply
mov r2, r0
pop r2
pop r1
pop r0
;end call
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
; this function will multiply r1, r2
;, and put the result in r0
multiply:
push fr
push r1
push r2
loadn r0, #0
cmp r2, r0 ;if r2 is zero
jeq multiply_exit
multiply_loop:
add r0, r1, r0
dec r2
jnz multiply_loop
multiply_exit:
pop r2
pop r1
pop fr
rts
