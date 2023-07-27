
/// @description Insert description here




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
