///apply_friction(amount)
var amount = argument0;
if(!Input.left && !Input.right) {
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
}
