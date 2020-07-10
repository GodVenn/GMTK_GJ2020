/// @description FollowObject(object, xOffset, yOffset)
/// @arg object
/// @arg xOffset
/// @arg yOffset

var object = argument0;
var xOffset = argument1;
var yOffset = argument2;


if(instance_exists(object)){
	x = object.x + xOffset;
	y = object.y + yOffset;
}