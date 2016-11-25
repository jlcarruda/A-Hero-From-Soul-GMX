///camera_move_to_target(x, y, spd);

var xx = argument0;
var yy = argument1;
var spd = argument2;

x += (xx - x) *spd;
y += (yy - y) *spd;
