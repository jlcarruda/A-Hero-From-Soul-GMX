///move()

// Horizontal Collision
if(place_meeting(x+hspd, y, P_SolidObject)){
    while(!place_meeting(x + sign(hspd), y, P_SolidObject)){
        x+=sign(hspd);
    }
    hspd=0;
}
x+=hspd;

//Vertical Collision
if(place_meeting(x, y+vspd, P_SolidObject)){
    while(!place_meeting(x, y + sign(vspd), P_SolidObject)){
        y+=sign(vspd);
    }
    vspd=0;
}
y+=vspd;
