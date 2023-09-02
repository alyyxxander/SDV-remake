
//data structure grids
//holds all of the info about each crop type
ds_crop_types = -1;
//holds the instances of existing/planted crops
ds_crop_instances = -1;
//holds data about the existing/planted crops
ds_crops_data = ds_grid_create(4,1);
//sets all of the cells equal to -1, to basically say that its empty
ds_grid_clear(ds_crops_data, -1);


enum crops {
	parsnip,
	cauliflower,
	beet,
	green_bean,
	potato,
	kale,
	corn
}

// create_crop_type(growth_stage_duration, sell_price, max_growth_stage, name)
create_crop_type(4,  35,  5, "parsnip");
create_crop_type(12, 175, 6, "cauliflower");
create_crop_type(6,	 100, 5, "beet");
create_crop_type(10, 40,  7, "green bean");
create_crop_type(6,  80,  6, "potato");
create_crop_type(6,  110, 5, "kale");
create_crop_type(14, 50,  7, "corn");

//toggles planting mode
planting_mode = false;

//chooses which crop to plant
selectCrop = 0;

//mouse variables
mx = 0;
my = 0;

//for grid snapping
cellSize = 16;





