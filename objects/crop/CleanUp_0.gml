/// @description

if (ds_exists(ds_crop_types, ds_type_grid)) {
	ds_grid_destroy( ds_crop_types);
}
if (ds_exists(ds_crop_instances, ds_type_grid)) {
	ds_grid_destroy( ds_crop_instances);
}
