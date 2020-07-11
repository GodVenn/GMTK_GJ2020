/// @description Follow Player and Shoot arrrows
//Follow player
if(instance_exists(currentPlayer)){
	FollowObject(currentPlayer, xOffset, yOffset);
}


// Get Shoot Input
with(currentPlayer){
	other.dir = dir;
	other.current_arrow = current_arrow;
	if(key_drawing_bow){
		other.drawing = true;
		other.released = false;
	}
	if(key_arrow_released){
		other.drawing = false;
		other.released = true;
	}	
}

// Charge bow
if (drawing) bow_counter++;
bow_step = min((bow_counter div bow_counter_thresh), bow_step_max);

// Release arrow
if (released && bow_step > 0){
	bow_counter = 0;
	with(instance_create_layer(x+arrow_xoffset, y+arrow_yoffset,"Arrows", current_arrow)){
		current_speed = other.arrow_base_speed * other.bow_step;
		dir = other.dir;
	}
	bow_step = 0;
	released = false;
}

//Animation
ScaleWithDir();
var	currentXOffset = dir * xOffset;


