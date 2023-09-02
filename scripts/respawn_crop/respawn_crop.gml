
function respawn_crop(grid_x, grid_y, crop_type, days_old){
	
	//convert grid positon from cells into pixels
	var xx = argument0 * cellSize;
	var yy = argument1 * cellSize;
	
	//create the instance
	var inst = instance_create_layer(xx + (cellSize/2), yy + (cellSize/2), "Instances", obj_crop);
	
	//add to the instance grid
	ds_crop_instances[# argument0, argument1] = inst;
	show_debug_message("Respawned a " + ds_crop_types[# 3, argument2]);
	
	//give the crop its characteristics
	with(inst) {
		cropType = argument2;
		daysOld = argument3;
		growthStageDuration = crop.ds_crop_types[# 0, cropType];
	}
	
	return inst;
}