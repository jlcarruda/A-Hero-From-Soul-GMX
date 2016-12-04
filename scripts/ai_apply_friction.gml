///ai_apply_friction(amount)

//TODO: Verify if AI stopped moving
var amount = argument0;
if (hspd != 0 ) {
    if(abs(hspd) > amount){
        if(hspd > 0) {
            hspd -= amount;
        } else {
            hspd += amount;
        }    
    } else {
        hspd = 0;
    }    
}

