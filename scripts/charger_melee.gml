///aggro_charger_melee()
if(distance_to_object(Player) <= attack_range){
    draw_set_color(c_red);
    
    drawArgs[0] = x;
    drawArgs[1] = y-20;
    drawArgs[2] = "Got You!";
    drawevent_dispatcher_add("gotyou", dp_draw_text, drawArgs)  ;
    //draw_text(x, y+80, "Got you!");
} else {
    drawevent_dispatcher_remove("gotyou");
    move_to_object(Player);
}


