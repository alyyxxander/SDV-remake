/// @description 
//this event runs at the start of every room

//we only need to recreate the crop grid when we're in the farm room
if (room == room_farm) {
	ds_crop_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
	
	//clear the grid just in case theres any data artifacts leftover
	ds_grid_clear(ds_crop_instances, 0);
	
	//respawn the crops
	
	//if any cell (we're just checking the first cell) is != -1, then we know we have data saved somewhere
	if (ds_crops_data[# 0, 0] != -1) {
		//get the number of instances
		var num_of_crops = ds_grid_height(ds_crops_data);
		
		//loop through each instannce and respawn it
		var row = 0;
		repeat (num_of_crops) {
			respawn_crop(
				ds_crops_data[# 0, row],
				ds_crops_data[# 1, row],
				ds_crops_data[# 2, row],
				ds_crops_data[# 3, row]
			);
			
			row += 1;
		}
		
		
	}
	
	
}


