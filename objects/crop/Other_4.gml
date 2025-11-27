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
				ds_crops_data[# 0, row], //grid_x
				ds_crops_data[# 1, row], //grid_y
				ds_crops_data[# 2, row], //crop_type
				ds_crops_data[# 3, row], //days_old
				ds_crops_data[# 4, row]  //growth stage
			);
			
			row += 1;
		}
		
		with (obj_crop) {  //this loops through all of the obj_crop's that exist
			if (daysOld < totalDaysToGrow) {
				daysOld += 1;
			
				//set crop to be in the first growth stage the next day
				var firstGrowth = 0;
				if (daysOld > 0) { firstGrowth = 1; }
			
				growthStage = firstGrowth + daysOld div growthStageDuration;
			
				//dont allow maxGrowthStage unless it's the correct number of days old
				if (growthStage >= maxGrowthStage and daysOld < totalDaysToGrow) { growthStage = maxGrowthStage - 1; }
			
			
				//sometimes growthStage will go over maxGrowthStage, need to fix this
				if (growthStage > maxGrowthStage) { growthStage = maxGrowthStage; }
			
			} else {
				growthStage = maxGrowthStage;
				fullyGrown = true;
			}
		}
		
	}
	
	
}


