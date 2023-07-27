/// @description


/* GMS uses an algorithm based on the game seed to choose a "random" direction
	for NPC's to move in. If the game seed is the same every time (this is by 
	default), the order of the directions chosen will be the same every time
	i.e. not random. So we have to add a line of code to tell GMS to have a new
	seed everytime.
	
	"persistent" is checked because we want this game object to still exist
	even after we change a room or something */

//randomize the game seed
randomize();

//this will run on the next step, so any code after this line will still run
room_goto_next();

//a variable to toggle for debug mode
debug = false;