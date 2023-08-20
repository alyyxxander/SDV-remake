
function instance_create_crop(crop_x, crop_y, crop_type){
	
	var instance_grid = crop.ds_crop_instances;
	
	var cs = crop.cellSize;
	var gx = argument0 div cs;
	var gy = argument1 div cs;
	xx = gx*cs;
	yy = gy*cs;
	
	var cell = instance_grid[# gx, gy];
	
	if (cell == 0) { //only plant if the cell doesn't have anything already planted
	
		#region check if dirt is hoed before planting
			var layer_id = layer_get_id("T_Hoed_Dirt");
			var map_id = layer_tilemap_get_id(layer_id);
			var hoed_dirt = tilemap_get_at_pixel(map_id, argument0, argument1);
	
			if (hoed_dirt == 0) {
				show_debug_message("There is no soil here.");
				return false; //this stops the script and doesnt run any of the code below
			} else {
				show_debug_message("There is soil here.");
			}
		#endregion
	
		#region create the instance
			//instance_create__layer also returns the id of the crop being planted
			var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);
			//add the crop to the instance grid
			instance_grid[# gx, gy] = inst;
	
			//give the crop its characteristics
			with (inst) {
				cropType = argument2;
				growthStageDuration = crop.ds_crop_types[# 0, cropType];
				maxGrowthStage = crop.ds_crop_types[# 2, cropType];
				
			}
	
			return inst;
		#endregion
		
	} else {
		show_debug_message("Something is already planted here!");
		return false;
	}
}