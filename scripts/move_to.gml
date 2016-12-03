///move_to(x, y);
var targetX = argument0;
var targetY = argument1;

// TODO: Move object towards the location
if(targetX > x){
    //Will see if spd is bellow the maxspd, and if it will not fall into enything
    if(hspd < maxspd && place_meeting(x+(hspd + spd), y+1, P_SolidObject)){
        hspd += spd;
    } else {
        hspd = 0;
    }
}else{
    if(hspd > -maxspd && place_meeting(x+(hspd - spd), y+1, P_SolidObject)){
        hspd -= spd;    
    }else {
        hspd = 0;
    }   
}
apply_gravity();

ai_move();
