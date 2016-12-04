if(!place_meeting(x, y+1, P_MapSolidObject)){ 
    
    apply_gravity();
    return true;
} else {
    return false;
//    vspd = 0;
}
