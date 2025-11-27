/// @description

if (room == room_farm) {
	
	//number of crops planted
	var crop_count = instance_number(obj_crop);
	
	//if theres no crops, dont save any NEW data
	if (crop_count == 0) { 
		//reset the data to be empty though, in case there's 
		//any leftover data from a crop that was picked
		ds_grid_clear(ds_crops_data, -1);
	} else {
		
		//resize the data grid to the correct number of crops
		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), crop_count);
		
		//loop through each cell in the instance grid
		var grid_width = ds_grid_width(ds_crop_instances);
		var grid_height = ds_grid_height(ds_crop_instances);
		var row = 0; //each crop has its own row
		var xx = 0; repeat(grid_width) {
			var yy = 0; repeat (grid_height) {
				
				//holds the value of the cell
				var inst = ds_crop_instances[# xx, yy];
				
				//if there's an instance in the cell, save its data
				if (inst != 0) {
					ds_crops_data[# 0, row] = xx;					//save x pos
					ds_crops_data[# 1, row] = yy;					//save y pos 
					ds_crops_data[# 2, row] = inst.cropType;		//save crop type
					ds_crops_data[# 3, row] = inst.daysOld;			//save days old
					ds_crops_data[# 4, row] = inst.growthStage;		//save growth stage
					row += 1;
				}
				yy += 1;
			}
			xx += 1;
		}	
	} //end of else-statement
		
		
	//because the room is ending and we dont need the data anymore,
	//we can destroy the instance grid. A new onne will be created at 
	//the start of each room
	ds_grid_destroy(ds_crop_instances);
	
}










