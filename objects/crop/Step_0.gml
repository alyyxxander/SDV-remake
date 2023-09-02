/// @description

if(room != room_farm)  {planting_mode = false; exit};

#region =========== PLANTING
	if (planting_mode) {
		mx = mouse_x;
		my = mouse_y;
	
		if (mouse_wheel_up()) selectCrop += 1;
		if (mouse_wheel_down()) selectCrop -= 1;
	
		//if selectCrop is at a number thats more than the number of crops we have, we want to restart from the beginning
		if (selectCrop > sprite_get_number(spr_crops_picked)-1) {
			selectCrop = 0;
		} else if (selectCrop < 0) {
			selectCrop = sprite_get_number(spr_crops_picked) - 1;
		}

		if (mouse_check_button_pressed(mb_left)) {
			instance_create_crop(mx, my, selectCrop);
		}
	}
#endregion


if (instance_exists(obj_crop) and keyboard_check_pressed(ord("G"))) {
	with (obj_crop) {
		if (growthStage < maxGrowthStage) {
			daysOld += 1;
			
			//set crop to be in the first growth stage the next day
			var firstGrowth = 0;
			if (daysOld > 0) { firstGrowth = 1; }
			
			growthStage = firstGrowth + daysOld div growthStageDuration;
			
		} else {
			growthStage = maxGrowthStage;
			fullyGrown = true;
		}
	}
}

