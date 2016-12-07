///update_ai_state()
// Verify if player is in range (by direction )

/*
    Core Main Idea:
        - AI starts idle
        - When sees the Player, it gets Aggroed
            - Sight of AI is Doubled, and starts chase the Player
        - When player gets out of double sight range, AI gets idle again
        - If it sees a ledge or wall, stops moving.
        
    First Iteration Idea:
        - AI starts chasing player
        - If gets near attack range, Attacks player
        - Chases Player independently of its distance
*/

if(point_distance(x, y, Player.x, Player.y) < attack_range){
    _state = attack_state
} else {
    _state = follow_state
}


/*
if(is_directional){
    // If distance to object is in sight 
    //TODO: Needs to implement the directional sighting

    if(ai_target_in_sight(Player)){
        show_debug_message("Player in Sight");
        if(target_in_range(Player, attack_range)){
            show_debug_message("State = Attack");
            _state = attack_state;
        }else{
            show_debug_message("State = Follow!");
            _state = follow_state;
        }
    // It will follow the player if the player is as far as the double of its sight    
    }else if(_state != idle_state && point_distance(x, y, Player.x, Player.y) < sight_range*2) { 
        show_debug_message("State = Chasing Player!");
        _state = follow_state;
    }else{ 
        show_debug_message("State = Idle");
        _state = idle_state;
    }
    
// If sight type is radial
} else {
    if((distance_to_object(Player) < sight_range)){
        if(target_in_range(Player, attack_range)){
            _state = attack_state;
        } else {
            _state = follow_state;
        }    
    } else {
        _state = idle_state;
    }
}*/
