/// @description

//if we're not in debug mode, don't run any code below
if (!debug) { exit; }

//otherwise, draw a border around all collision objects and the player
with (obj_collision) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}
with (obj_player) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}


#region =========== DRAWING THE GRID

	//setting opacity of the grid
	draw_set_alpha(0.5);

	var cellSize = crop.cellSize;

	//drawing the vertical lines
	var r = roomWidth div cellSize;
	var xx = 0;
	repeat (r) {
		draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
		xx += cellSize;
	}

	//drawing the horizontal lines
	var r = roomHeight div cellSize;
	var yy = 0;
	repeat (r) {
		draw_line_color(0, yy, roomWidth, yy, c_white, c_white);
		yy += cellSize;
	}
	
	//resetting the opacity for anything else that needs drawn
	draw_set_alpha(1);
#endregion
