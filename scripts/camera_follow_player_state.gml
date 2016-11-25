///camera_follow_player_state()

var targetx = Player.x+(Player.image_xscale*32);
var targety = Player.y;

camera_move_to_target(targetx, targety);
