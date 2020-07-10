/// @description Follow Player

ScaleWithDir();
var	currentXOffset = dir * xOffset;

if(instance_exists(currentPlayer)){
	FollowObject(currentPlayer, currentXOffset, yOffset);
}
