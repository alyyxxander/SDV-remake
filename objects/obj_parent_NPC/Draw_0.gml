/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw character shadow
draw_sprite(spr_shadow, 0, x, y+3);


//------------------- CHOOSE ANIMATION


if ((moveX = 0) and (moveY = 0)) {
	//if player is not moving, choose still frames
	
	// up = 0, down = 1, left = 2, right = 3
	switch (currentDirection) {
		case 0:
	        sprite_index = up_animation; 
	        break;
	    case 1:
			sprite_index = down_animation; 
	        break;
		case 2:
	        sprite_index = left_animation; 
	        break;
		default:
	        sprite_index = right_animation;
	        break;
	}
	image_index = 0;
	image_speed = 0;
	
} else {
	// else, choose walking animation
	image_speed = default_image_speed;
	if (moveX > 0) { 
		sprite_index = right_animation; 
		currentDirection = 3;
	} else if (moveX < 0) { 
		sprite_index = left_animation; 
		currentDirection = 2;
	} else if (moveY < 0) { 
		sprite_index = up_animation; 
		currentDirection = 0;
	} else { 
		sprite_index = down_animation; 
		currentDirection = 1;
	}
}




if (show_bounding_box) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}