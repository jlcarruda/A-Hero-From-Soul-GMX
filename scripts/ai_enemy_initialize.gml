///ai_enemy_initialize(sight_range, isDirectional)

sight_range = argument[0]; // If 0 or noone = no need for sight
is_directional = argument[1]; // boolean

sight_direction = 1;

_state = noone;

idle_state = noone;
follow_state = noone;
attack_state = noone;

