/// @descriptions

//------------------ UPDATE INPUT
input_left		= keyboard_check(ord("A"));
input_right		= keyboard_check(ord("D"));
input_up		= keyboard_check(ord("W"));
input_down		= keyboard_check(ord("S"));
input_run		= keyboard_check(vk_shift);


//------------------ ALTER SPEED
if (input_run) { spd = run_spd; } 
else		   { spd = walk_spd; }


//------------------ RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

 
//------------------ GET THE INTENDED MOVEMENT (where the player *wants* to go)
moveX = (input_right - input_left) * spd;
if (moveX == 0) { //this will prevent diagonal movement
	moveY = (input_down - input_up) * spd;
}	


#region =========== COLLISION CHECKS
	//horizontal collision check
	if (moveX != 0) { //we only want to do thsese checks if we're moving left/right
		if (place_meeting(x + moveX, y, obj_collision)) {
			repeat (abs(moveX)) {
				if (!place_meeting(x + sign(moveX), y, obj_collision))  { x += sign(moveX);	} 
				else { break; }	
			}	
			moveX = 0;
		}	
	}
	//vertical collision check
	if (moveY != 0) {  //we only want to do thsese checks if we're moving up/down
		if (place_meeting(x, y + moveY, obj_collision)) {
			repeat (abs(moveY)) {
				if (!place_meeting(x, y + sign(moveY), obj_collision)) { y += sign(moveY); } 
				else { break; }	
			}	
			moveY = 0;
		}	
	}

	//------------------ COLLISION CHECKS FOR OBJECTS/TRANSITION

	//this will either return the ID of the transition object the player is colliding with
	// or it will return "noone" if the player isnt colliding with a transition object
	var inst = instance_place(x, y, obj_transition); 

	//if colliding with obj_transition, go to that instances target room
	if (inst != noone) {
		with(game) {
			//only do this if we're not already doing a transition
			if(!do_transition) {
				spawn_room = inst.targetRoom;
				spawnX = inst.targetX;
				spawnY = inst.targetY;
				do_transition = true;
			}
		}
	}
#endregion


//------------------ APPLY MOVEMENT
x += moveX;
y += moveY;
