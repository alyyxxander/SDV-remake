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
}



