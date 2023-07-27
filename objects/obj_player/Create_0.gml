/// @description Insert description here
// You can write your code in this editor

/* THE CREATE EVENT:
	This event happens when an instance of the object is first created, 
	and is the very first thing that happens within an instance placed 
	in the room through the Room Editor when a room is entered. */

walk_spd = 2;
run_spd = 3;
spd = walk_spd;

enum dir {
	up,
	down,
	left,
	right
}

currentDirection = dir.down;
