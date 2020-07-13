currentPlayer = instance_nearest(x,y,PlayerInterface);

if(instance_exists(currentPlayer)){
    xOffset = x - currentPlayer.x;
    yOffset = y - currentPlayer.y;
}

image_xscale = 0.5;
image_yscale = 0.5;

timerItembox = 1 * room_speed;

available_arrows[0] = Arrow;
available_arrows[1] = oPistolArrow;
available_arrows[2] = oKnockbackArrow;