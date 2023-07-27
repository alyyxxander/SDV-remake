/// @description Insert description here

//if we're not in debug mode, don't run any code below
if (!debug) { exit; }


//otherwise, draw a border around all collision objects and the player
with (obj_collision) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}
with (obj_player) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}

