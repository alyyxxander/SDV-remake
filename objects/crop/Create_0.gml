/// @description Insert description here

//data strutcure grid
ds_crop_types = 0;

enum crops {
	parsnip,
	cauliflower,
	beet,
	green_bean,
	potato,
	kale,
	corn
}

// create_crop_type(growth_stage_duration, sell_price)
create_crop_type(4, 35);	// parsnip
create_crop_type(12, 175);  // cauliflower
create_crop_type(6, 100);	// beet
create_crop_type(10, 40);	// green bean
create_crop_type(6, 80);	// potato
create_crop_type(6, 110);	// kale
create_crop_type(14, 50);	// corn

//toggles planting mode
planting_mode = false;

//chooses which crop to plant
selectCrop = 0;

//mouse variables
mx = 0;
my = 0;
