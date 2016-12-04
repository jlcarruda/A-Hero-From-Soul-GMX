///roam();
// This behavior will move the ai to a random direction

//TODO: execute after a little timer
if(random_range(-1,1) > 0) {
    move_to(x + spd, y);
}else {
    move_to(x - spd, y);
}
