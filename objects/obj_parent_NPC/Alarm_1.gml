/// @description randomized movement

//reset any movement
moveX = 0;
moveY = 0;

// 50/50 chance to choose either 0 or 1 (false or true, respectively)
var idle = choose(0, 1);


if (idle == false) {
	//this will choose a random direction
	var direc = choose(0,1,2,3);
	
	// up = 0, down = 1, left = 2, right = 3
	
	switch (direc) {
		case 0:  moveY = -spd;	break;	//move up
		case 1:  moveY = spd;	break;	//move down
		case 2:  moveX = -spd;	break;	//move left
		case 3:  moveX = spd;	break;	//move right
	}	
}	


//retrigger this alarm after a randomized amount of time
minWaitTime = 2.5;
maxWaitTime = 4;
alarm[1] = random_range(minWaitTime, maxWaitTime) * room_speed;




