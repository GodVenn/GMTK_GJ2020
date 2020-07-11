/// @description set the offsets to player
currentPlayer = instance_nearest(x,y,PlayerInterface);

if(instance_exists(currentPlayer)){
	xOffset = x - currentPlayer.x;
	yOffset = y - currentPlayer.y;
}

InitScaleWithDir();

// Shooting arrows
drawing = false;
released = false;
bow_counter = 0;
bow_counter_thresh = 1 * room_speed;
bow_step = 0;
bow_step_max = 3;
release_image_index = 4;

//Arrow settings
arrow_xoffset = 0;
arrow_yoffset = 0;
