/// @description

//data structure grids
ds_crop_types = -1;
ds_crop_instances = -1;


enum crops {
	parsnip,
	cauliflower,
	beet,
	green_bean,
	potato,
	kale,
	corn
}

// create_crop_type(growth_stage_duration, sell_price, max_growth_stage)
create_crop_type(4, 35, 5);		// parsnip
create_crop_type(12, 175, 6);   // cauliflower
create_crop_type(6, 100, 5);	// beet
create_crop_type(10, 40, 7);	// green bean
create_crop_type(6, 80, 6);		// potato
create_crop_type(6, 110, 5);	// kale
create_crop_type(14, 50, 7);	// corn

//toggles planting mode
planting_mode = false;

//chooses which crop to plant
selectCrop = 0;

//mouse variables
mx = 0;
my = 0;

//for grid snapping
cellSize = 16;





