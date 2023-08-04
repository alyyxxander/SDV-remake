/// @description Insert description here

if(do_transition) {
	
	//handle black fade and room transition
	
	//while we're not yet in the room we want to go to...
	if (room != spawn_room) {
		
		//slowly increase the alpha
		black_alpha += 0.1;
		
		//when the alpha is at it's max (1), THEN go to the next room
		if (black_alpha >= 1) {
			room_goto(spawn_room);
		}
	}
	
	//but if our room does equal the spawn room, then we know we've completed the room change
	//and we can do the fade effect in reverse
	else {
		//slowly decrease the alpha
		black_alpha -= 0.1;
		
		//when the alpha is at it's min (0), we can stop running the code for the fade effect
		if (black_alpha <= 0) {
			do_transition = false;;
		}
	}
	
	
	//draw black fade
	draw_set_alpha(black_alpha);

	draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);

	//remember to reset the draw alpha
	draw_set_alpha(1);

}
