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

if(Input.attack){
    image_index = 0;
    state = player_attack_one_state;
}

// Gravity
if(!place_meeting(x, y+1, P_SolidObject)){
    vspd += grav;
} else {
    vspd = 0;
}

// apply collision
move();
