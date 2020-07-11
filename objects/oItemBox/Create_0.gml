currentPlayer = instance_nearest(x,y,PlayerInterface);

if(instance_exists(currentPlayer)){
    xOffset = x - currentPlayer.x;
    yOffset = y - currentPlayer.y;
}


timerItembox = 2 * room_speed;