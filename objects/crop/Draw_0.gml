/// @description crop placement preview

if (!planting_mode) exit;


//determines where to draw
var gx = (mx div cellSize);//figure out the closest cell
var xx = gx * cellSize; //set coord to the pixel position of that cell
var gy = (my div cellSize);
var yy = gy * cellSize;


#region draw a red or green rectangle indicating where the cursor can/can't plant
	
	//indicator is red by default
	var color = c_red;

	//check if something is already planted
	var cell = ds_crop_instances[# gx, gy];
	if (cell == 0) {
		//check if the dirt is hoed
		var layer_id = layer_get_id("T_Hoed_Dirt");
		var map_id = layer_tilemap_get_id(layer_id);
		var hoed_dirt = tilemap_get_at_pixel(map_id, mx, my);
	
		//if there's hoed dirt, make the color green
		if (hoed_dirt != 0) { color = c_lime; }
	}

	draw_rectangle_color(xx, yy, xx+cellSize, yy+cellSize, color, color, color, color, true);
#endregion



//setting opacity of the crops
draw_set_alpha(0.6);
//draw the crop to be planted
draw_sprite(spr_crops_picked, selectCrop, xx+(cellSize/2), yy+(cellSize/2));
//resetting the opacity for anything else that needs drawn
draw_set_alpha(1);