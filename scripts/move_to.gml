///move_to(x, y);
var targetX = argument0;
var targetY = argument1;

// TODO: Move object towards the location
if(targetX > x){
    //Will see if spd is bellow the maxspd, and if it will not fall into enything
    if(hspd < maxspd){
        hspd += spd;
    } else {
        hspd -= spd;
    }
}else{
    if(hspd > -maxspd){
        hspd -= spd;    
    }else {
        hspd += spd;
    }   
}
