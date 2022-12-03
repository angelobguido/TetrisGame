;UpdateGame:
;   cmp CurrentState ChooseNewTetrominoState --> Will verify if a new tetronimo need to be chosen
;   ceq UpdateGame_ChooseNewTetromino
;   
;   save current tetromino position and rotation
;   see input control (Rotation or go to sides) and save new position
;   
;   this block can be a function later
;   {
;   verify collisions with walls
;   cmp CollisionState CollidedWithWalls
;   jeq UpdateGame_InvalidMovement --> This will return the position to the old one
;
;   verify collisions with pixel map
;   cmp CollisionState CollidedWithPixelMap
;   jep UpdateGame_InvalidMovement
;   }
;
;   UpdateGame_InvalidMovement:
;       jne UpdateGame_InvalidMovement_End --> If none of the invalid collisions happend, go to move tetromino 
;       return the position to the old one
;   UpdateGame_InvalidMovement_End:
;   
;   move tetromino down --> will move the next position down
;   
;   verify collisions with border  
;   cmp CollisionState CollidedWithBorder
;   jeq UpdateGame_FixTetromino
;
;   UpdateGame_FixTetromino:
;       jne UpdateGame_FixTetromino_End
;       return the position to the old one
;       update pixel map with new tetromino
;       change state to ChooseNewTetrominoState
;   UpdateGame_FixTetromino_End:
;
;   rts

update_game_state:

;verify wall two times
jmp update_game_state_verify_wall
update_game_state_verify_wall_exit:

call tetromino_go_down

call verify_floor
jeq update_game_state_reset

jmp update_game_state_exit

update_game_state_reset:
call tetromino_reset
jmp update_game_state_exit

update_game_state_verify_wall:
call verify_wall
jeq update_game_state_verify_wall
jmp update_game_state_verify_wall_exit

update_game_state_exit: