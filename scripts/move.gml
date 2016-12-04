///move()

// Horizontal Collision
if(place_meeting(x+hspd, y, P_MapSolidObject)){
    while(!place_meeting(x + sign(hspd), y, P_MapSolidObject)){
        x+=sign(hspd);
    }
    hspd=0;
}
x+=hspd;

//Vertical Collision
if(place_meeting(x, y+vspd, P_MapSolidObject)){
    while(!place_meeting(x, y + sign(vspd), P_MapSolidObject)){
        y+=sign(vspd);
    }
    vspd=0;
}
y+=vspd;
