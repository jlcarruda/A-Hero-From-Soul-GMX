///move_to_object(targetObj);

// Moves the obj towards other object
var targetObj = argument0;
if(!place_meeting(x, y, targetObj)){
    move_to(targetObj.x, targetObj.y);
}

