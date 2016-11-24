/// player_move_state()

if(Input.right){
    if(hspd < maxspd){
        hspd += spd;
    }
    image_xscale = 1;
    sprite_index = player_running;
    image_speed = hspd/maxspd*.3;
}

if(Input.left){
    if(hspd > -maxspd){
        hspd -= spd;
    }
    image_xscale = -1;
    sprite_index = player_running;
    image_speed = - (hspd/maxspd*.3);
}

if(!Input.right && !Input.left){
    image_speed = spd/maxspd;
    sprite_index = player_idle;
}

// apply collision
move();
