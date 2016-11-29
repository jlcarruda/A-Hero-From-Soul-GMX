///apply_ai()

// If the AI gets the player in its sight
// If sight_range is defined and is greater than 0
if(sight_range > 0 && sight_range != noone && position_meeting(x,y + (sight_direction*sight_range), Player)){
    
    // Check the AI state and execute it correspondly
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
