

function instance_create_crop(crop_x, crop_y, crop_type){
	
	// create the instance
	//instance_create__layer also returns the id
	var inst = instance_create_layer(argument0, argument1, "Instances", obj_crop);
	
	//give the crop its characteristics
	with (inst) {
		cropType = argument2;
		growthStageDuration = crop.ds_crop_types[# 0, cropType];
	}
	
	return inst;
	
}