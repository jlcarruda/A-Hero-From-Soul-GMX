if(!place_meeting(x, y+1, P_SolidObject)){ 
    
    apply_gravity();
    return true;
} else {
    return false;
//    vspd = 0;
}
