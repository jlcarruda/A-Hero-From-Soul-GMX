///update_ai_state()
// Verify if player is in range (by direction )
if(is_directional){
    // If distance to object is in sight 
    //TODO: Needs to implement the directional sighting
    if((distance_to_object(Player) < sight_range)){
        if(target_in_range(Player, attack_range)){
            _state = attack_state;
        } else {
            _state = follow_state;
        }    
    } else {
        _state = idle_state;
    }
    
// If sight type is radial
} else {
    //TODO: Make radial sighting
}
