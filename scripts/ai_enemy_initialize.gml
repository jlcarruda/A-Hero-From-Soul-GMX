///ai_enemy_initialize(sight_range, isDirectional)

sight_range = argument[0]; // If 0 or noone = no need for sight
is_directional = argument[1]; // boolean

sight_direction = 1;

enum ai_state {
    IDLE,
    AGGRO
};

idle_state_sighted_behavior = noone;
idle_state_behavior = noone;
aggro_state_sighted_behavior = noone;
aggro_state_behavior = noone;

