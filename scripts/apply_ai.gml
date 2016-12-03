///apply_ai()

// If the AI gets the player in its sight
// If sight_range is defined and is greater than 0

//Updates the sight_direction
update_sight_direction();

// Verify if player is in range (by direction )
if((is_directional && position_meeting(x + (sight_direction*sight_range), y, Player)) || (!is_directional && distance_to_object(Player) < sight_range)){
    switch(_state){
    case ai_state.IDLE:
        if(idle_state_sighted_behavior != noone){
        
            script_execute(idle_state_sighted_behavior);
        }
        break;
    case ai_state.AGGRO:
        if(aggro_state_sighted_behavior != noone){
        
            script_execute(aggro_state_sighted_behavior);
        }
        break;   
    }
// If player is not on sight
} else {
    switch(_state){
        case ai_state.IDLE:
            if(idle_state_behavior != noone){
            
               script_execute(idle_state_behavior);
            }
            break;
        case ai_state.AGGRO:
            if(aggro_state_behavior != noone){
            
               script_execute(aggro_state_behavior);
            }
            break;   
    }
}

