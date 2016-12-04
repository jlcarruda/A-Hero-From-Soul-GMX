///update_ai_state()
// Verify if player is in range (by direction )
if(is_directional){
    // If distance to object is in sight 
    if((distance_to_object(Player) < sight_range)){
        if(target_in_range(Player, attack_range)){
            _state = attack_state;
            show_debug_message("Attack State");
        } else {
            _state = follow_state;
            show_debug_message("follow State");
        }    
    } else {
        _state = idle_state;
        show_debug_message("Idle State");
    }
    
// If sight type is radial
} else {
    //TODO: Make radial sighting
}
