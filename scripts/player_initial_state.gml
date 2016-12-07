/// player_move_state()

if(PlayerStats.hp <= 0){
    game_restart();
}

if(vspd == 0){
    if(Input.right){
        if(hspd < maxspd){
            hspd += spd;
        }
        image_xscale = 1;
        sprite_index = player_alt_running;
        image_speed = hspd/maxspd*.3;
    }
    
    if(Input.left){
        if(hspd > -maxspd){
            hspd -= spd;
        }
        image_xscale = -1;
        sprite_index = player_alt_running;
        image_speed = - (hspd/maxspd*.3);
    }
    
    if(!Input.right && !Input.left){
        image_speed = spd/maxspd;
        sprite_index = player_alt_idle;
    }
    
    if(Input.attack){
        image_index = 0;
        state = player_attack_one_state;
    }
}

// Gravity
if(!check_apply_gravity() && Input.up){
   vspd += jump;    
}


// apply collision
move();
