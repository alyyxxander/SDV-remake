/// @description

roomWidth = room_width;
roomHeight = room_height;


//if it's the first time the player is loaded, the spawn coordinates would still be 0,0
//so dont move the player the first time
if (spawn_room == -1) exit;

//move the player to the correct coords when spawning into a new room
obj_player.x = spawnX;
obj_player.y = spawnY;
