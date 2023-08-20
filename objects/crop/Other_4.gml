/// @description 
//this event runs at the start of every room

if (room == room_farm and ds_crop_instances == -1) {
	ds_crop_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
	
}


