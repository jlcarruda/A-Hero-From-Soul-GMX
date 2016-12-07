///aggro_charger_melee()

if((distance_to_object(Player) + (sprite_width/2))  <= attack_range){
    draw_set_color(c_red);
    
    drawArgs[0] = x - sprite_width/2;
    drawArgs[1] = y-40;
    drawArgs[2] = "Got You!";
    drawevent_dispatcher_add("gotyou", dp_draw_text, drawArgs);
} else {
    drawevent_dispatcher_remove("gotyou");
    move_to_object(Player);
}


