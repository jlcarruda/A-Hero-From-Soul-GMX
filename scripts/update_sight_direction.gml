///update_sight_direction()
// Updates every step the sight_direction value on the AI object.

sight_direction = point_direction(x, y, x+hspd, y);
show_debug_message(string(sight_direction));

/*
if(sign(hspd) != 0){
    sight_direction = sight_direction*sign(hspd);
}*/


//show_debug_message(string(sight_direction));
