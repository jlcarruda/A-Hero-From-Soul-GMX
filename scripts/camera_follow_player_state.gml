///camera_follow_player_state()

var targetx = Player.x+(Player.image_xscale*129);
var targety = Player.y;

camera_move_to_target(targetx, targety, System.camera_spd);
