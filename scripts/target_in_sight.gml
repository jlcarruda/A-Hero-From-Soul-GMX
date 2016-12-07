///target_in_sight(target, )

var target = argument0;
var player_direction = point_direction(x, y, target.x, target.y);

(point_distance(x, y, target.x, target.y) < sight_range && is_in_range(player_direction, sight_direction+45, sight_direction-45))
