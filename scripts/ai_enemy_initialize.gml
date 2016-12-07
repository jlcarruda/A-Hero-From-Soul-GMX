///ai_enemy_initialize(sight_range, isDirectional)

sight_range = argument[0]; // If 0 or noone = no need for sight
is_directional = argument[1]; // boolean

random_seed = irandom(1000);

sight_direction = point_direction(x, y, x+1, y);

idle_state = noone;
follow_state = noone;
attack_state = noone;

_state = idle_state;

