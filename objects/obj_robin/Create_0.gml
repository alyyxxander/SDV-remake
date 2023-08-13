/// @description

//thhiss create event will override the inherited create evennt, but
// we still want the inherited create evennt to run, so we have to add:
event_inherited(); //this is basically equvalent to `super();`


up_animation = spr_robin_walk_up;
down_animation = spr_robin_walk_down;
left_animation = spr_robin_walk_left;
right_animation = spr_robin_walk_right;