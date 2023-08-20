/// @description 

moveCam = keyboard_check(ord("C"));

if (moveCam) {
	x += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 6;
	y += (keyboard_check(vk_down) - keyboard_check(vk_up)) * 6;
} else {
	
	//didnt like that effect, im just gonna have the camera be locked on the player
	// follow the player, but give vertical and horizontal room to move before the camera starts following
	//x = clamp(x, (following.x - h_border), (following.x + h_border));
	//y = clamp(y, (following.y - v_border), (following.y + v_border));
	
	x = following.x;
	y = following.y;
	
	
	#region trying to fix camera jitter
	/*
		//this makes the camera move faster when it is further away from the target
		//but most of the time the camera will be right over the player
		x += (xTo - x)/25;
		y += (yTo - y)/25;
		
		
		camera_set_view_pos
			(view_camera[0], 
			x-(camWidth*0.5), 
			y-(camHeight*0.5));
	*/
	#endregion
	
}



