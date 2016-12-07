///aggro_charger_melee()

if((distance_to_object(Player) + (sprite_width/2))  <= attack_range){
    ai_attack();
} else {
    drawevent_dispatcher_remove("gotyou");
    move_to_object(Player);
}


