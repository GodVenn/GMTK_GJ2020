/// @description set the offsets to player
currentPlayer = instance_nearest(x,y,PlayerInterface);

if(instance_exists(currentPlayer)){
	xOffset = x - currentPlayer.x;
	yOffset = y - currentPlayer.y;
}

InitScaleWithDir();
