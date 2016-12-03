///aggro_charger_melee()
if(_state == ai_state.AGGRO){
    if(target_in_range(Player, attack_range)){
        draw_set_color(c_red);
        draw_text(x, y+80, "Got you!");
    } else {
        move_to_object(Player);
    }
}

