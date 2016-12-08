/// player_move_state()

//Gravity
if(!place_meeting(x, y+1, P_MapSolidObject)){
    apply_gravity();
}else{
    if(!Input.right && !Input.left){
        image_speed = spd/maxspd;
        sprite_index = player_alt_idle;
    }
    
    if(Input.attack){
        image_index = 0;
        state = player_attack_one_state;
    }
    
    if(Input.up){
        vspd += jump;    
        sprite_index = player_alt_onair;
    }
}

if(Input.right){
    if(hspd < maxspd){
        hspd += spd;
    }
    image_xscale = 1;
    
    if(vspd == 0){
        sprite_index = player_alt_running;
        image_speed = hspd/maxspd*.3;   
    }
    
}

if(Input.left){
    if(hspd > -maxspd){
        hspd -= spd;
    }
    
    image_xscale = -1;
    if(vspd == 0){
        sprite_index = player_alt_running;
        image_speed = - (hspd/maxspd*.3);
    }
}

// apply collision
move();
