///ai_move()

// Horizontal Collision
if(place_meeting(x+hspd, y, P_MapSolidObject)){
    while(!place_meeting(x + sign(hspd), y, P_MapSolidObject)){
        x+=sign(hspd);
    }
    hspd=0;
}

//Horizontal Stopping when face to player
if(place_meeting(x+1, y, Player)){
    hspd = 0;
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
