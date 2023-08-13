/// @description

walk_spd = 1;
run_spd = 2;
spd = walk_spd;
show_bounding_box = false;


// up = 0, down = 1, left = 2, right = 3
currentDirection = 1;


//=== default animation will be of abigail. make sure to override these for each NPC!
up_animation = spr_abigail_walk_up;
down_animation = spr_abigail_walk_down;
left_animation = spr_abigail_walk_left;
right_animation = spr_abigail_walk_right;

//set which shadow sprite to use
spr_shadow = spr_character_shadow;

//The speed value given is a multiplier, with 1 being the default value, and setting it to 0.5 will half the animation speed - as set in the Sprite Editor or Image Editor- while setting it to 2 will double it.
default_image_speed = 1;

moveX = 0;
moveY = 0;


// alarm #1 will be triggered 1 frame after the create event
alarm[1] = 1;
