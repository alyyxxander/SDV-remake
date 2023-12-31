
function create_crop_type(growth_stage_duration, sell_price, max_growth_stage) {
	var argNum = argument_count;

	// if the crop is being planted for the first time, we need to add it to the DS grid
	// if the data structure grid doesn't exist at all yet, create one
	if (!ds_exists(ds_crop_types, ds_type_grid)) {
		ds_crop_types = ds_grid_create(argNum, 1);
		var grid_height = 1;
	} else {
	
		var grid_height = ds_grid_height(ds_crop_types);
		ds_grid_resize(ds_crop_types, argNum, grid_height+1);
		grid_height += 1;
	}

	// no idea what's being done here tbh
	// actuallly i think this is just iterating through each grid row and filling in the data for it
	var yy = grid_height-1;
	var i = 0; repeat(argNum) {
		ds_crop_types[# i, yy] = argument[i];
		i += 1;
	}

}