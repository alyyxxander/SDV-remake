/// @description

draw_self();

//draw character shadow
draw_sprite(spr_character_shadow, 0, x, y+3);

//------------------- CHOOSE ANIMATION
if ((moveX = 0) and (moveY = 0)) {
	//if player is not moving, choose still frames
	switch (currentDirection) {
	    case dir.right:
	        sprite_index = spr_player_still_right;
	        break;
		case dir.left:
	        sprite_index = spr_player_still_left;
	        break;
		case dir.up:
	        sprite_index = spr_player_still_up;
	        break;
	    default:
			sprite_index = spr_player_still_down;
	        break;
	}
} else if (input_run) {
	//if player is running, choose runnning animation
	if (input_right) { 
		sprite_index = spr_player_run_right;
		currentDirection = dir.right;
	} else if (input_left) { 
		sprite_index = spr_player_run_left; 
		currentDirection = dir.left;
	} else if (input_up){ 
		sprite_index = spr_player_run_up;
		currentDirection = dir.up;
	} else { 
		sprite_index = spr_player_run_down;
		currentDirection = dir.down;
	}
} else {
	// else, choose walking animation
	if (input_right) { 
		sprite_index = spr_player_walk_right; 
		currentDirection = dir.right;
	} else if (input_left) { 
		sprite_index = spr_player_walk_left; 
		currentDirection = dir.left;
	} else if (input_up) { 
		sprite_index = spr_player_walk_up; 
		currentDirection = dir.up;
	} else { 
		sprite_index = spr_player_walk_down; 
		currentDirection = dir.down;
	}
}

