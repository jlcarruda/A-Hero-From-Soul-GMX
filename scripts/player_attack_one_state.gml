///player_attack_one_state();
image_speed = .5;
sprite_index = player_alt_attack_one;

if(image_index >= 2 && image_index <= 4){
    with(instance_create(x, y, PlayerAttackHitbox)){
        image_xscale = other.image_xscale;
        with(instance_place(x, y, P_EnemyObj)){
            hp -= PlayerStats.attack_dmg;
            vspd = -3;
            hspd = sign(x - other.x)*15;
        }
    }
}

