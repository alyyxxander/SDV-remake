/// @description Insert description here
// You can write your code in this editor

/* THE CREATE EVENT:
	This event happens when an instance of the object is first created, 
	and is the very first thing that happens within an instance placed 
	in the room through the Room Editor when a room is entered. */

walk_spd = 1;
run_spd = 2;
spd = walk_spd;
show_bounding_box = false;

enum dir {
	up,
	down,
	left,
	right
}

currentDirection = dir.down;
