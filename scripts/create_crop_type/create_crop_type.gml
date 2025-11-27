
//function create_crop_type(growth_stage_duration, sell_price, max_growth_stage) {
function create_crop_type(total_days_to_grow, sell_price, max_growth_stage, crop_name) {
	var argNum = argument_count;
	
	//FIX THIS, SEE TO-DO NOTE
	var growth_stage_duration = total_days_to_grow div max_growth_stage;
	
	if (growth_stage_duration == 0) { growth_stage_duration = 1; }
	
	var grid_width = argNum + 1; //added an extra column bc gorwth_stage_dduration isnt a parameter

	// if the crop is being planted for the first time, we need to add it to the DS grid
	// if the data structure grid doesn't exist at all yet, create one
	if (!ds_exists(ds_crop_types, ds_type_grid)) {
		ds_crop_types = ds_grid_create(grid_width, 1);
		var grid_height = 1;
	} else {
		var grid_height = ds_grid_height(ds_crop_types);
		ds_grid_resize(ds_crop_types, grid_width, grid_height+1); 
		grid_height += 1;
	}

	// no idea what's being done here tbh
	// actuallly i think this is just iterating through each grid row and filling in the data for it
	var yy = grid_height-1;
	
	/*
	var i = 1; repeat(argNum) {
		ds_crop_types[# i, yy] = argument[i];
		i += 1;
	}
	*/
	
	
	//manually inserting data instead of looping though
	ds_crop_types[# 0, yy] = growth_stage_duration;
	ds_crop_types[# 1, yy] = total_days_to_grow;
	ds_crop_types[# 2, yy] = max_growth_stage;
	ds_crop_types[# 3, yy] = sell_price;
	ds_crop_types[# 4, yy] = crop_name;
	
}