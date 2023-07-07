/// @description Insert description here
// You can write your code in this editor


//------------------ UPDATE INPUT
input_left		= keyboard_check(vk_left);
input_right		= keyboard_check(vk_right);
input_up		= keyboard_check(vk_up);
input_down		= keyboard_check(vk_down);
input_walk		= keyboard_check(vk_control);
input_run		= keyboard_check(vk_shift);


//------------------ ALTER SPEED
if (input_walk or input_run) { 
	spd = abs((input_walk * walk_spd) - (input_run * run_spd));
} else {
	spd = normal_spd;
}	


//------------------ RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

 
//------------------ GET THE INTENDED MOVEMENT (where the player *wants* to go)
moveX = (input_right - input_left) *spd;
if (moveX == 0) { //this will prevent diagonal movement
	moveY = (input_down - input_up) * spd;
}	


//------------------ COLLISION CHECKS
//horizontal collision check
if (moveX != 0) { //we only want to do thsese checks if we're moving
	if (place_meeting(x + moveX, y, obj_collision)) {
		repeat (abs(moveX)) {
			if (!place_meeting(x + sign(moveX), y, obj_collision))  { x += sign(moveX);	} 
			else { break; }	
		}	
		moveX = 0;
	}	
}

//vertical collision check
if (moveY != 0) {
	if (place_meeting(x, y + moveY, obj_collision)) {
		repeat (abs(moveY)) {
			if (!place_meeting(x, y + sign(moveY), obj_collision)) { y += sign(moveY); } 
			else { break; }	
		}	
		moveY = 0;
	}	
}



//------------------ APPLY MOVEMENT
x += moveX;
y += moveY;



