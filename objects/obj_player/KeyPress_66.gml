/// @description toggle the bounding box being displayed

show_bounding_box = !show_bounding_box;
var bb_string;
if (show_bounding_box) { bb_string = "true"; }
else  { bb_string = "false"; }
show_debug_message("bounding box: ");
show_debug_message(bb_string);