///ai_enemy_initialize(sight_range)

sight_range = argument[0]; // If 0 or noone = no need for sight
sight_direction = -1; // 1 = right, -1 = left
//can_interact = argument[1];  // Boolean that says if can be interacted or not
enum ai_state {
    IDLE,
    AGGRO
};


