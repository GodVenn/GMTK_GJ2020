if(instance_exists(currentPlayer)){
    FollowObject(currentPlayer, xOffset, yOffset);
}

// Animation
if (currentPlayer.key_choose_arrow && !currentPlayer.key_drawing_bow) 
{
    image_speed = 0;
    alarm[0] = timerItembox;
}