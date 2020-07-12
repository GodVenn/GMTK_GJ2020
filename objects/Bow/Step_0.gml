/// @description Animate and Follow Player and Shoot arrrows

drawing = false;
released = false;

// Follow player
var currentXoffset = dir * xOffset;
if(instance_exists(currentPlayer)){
	FollowObject(currentPlayer, currentXoffset, yOffset);
}

// Get Shoot Input
with(currentPlayer){
	other.dir = dir;
	other.current_arrow = current_arrow;
	if(key_drawing_bow){
		other.drawing = true;
	}
}

// Charge bow
if (drawing) bow_counter ++;
bow_step = min((bow_counter div bow_counter_thresh), bow_step_max);

// Release arrow
if (currentPlayer.key_arrow_released) bow_counter = 0;
if (currentPlayer.key_arrow_released && bow_step > 0){
	if(bow_step == bow_step_max) {audio_play_sound(FullSpennetBue,5,false);}
	released = true;
	bow_counter = 0;
	with(instance_create_layer(x+arrow_xoffset, y+arrow_yoffset,"Arrows", current_arrow)){
		current_speed = base_speed * other.bow_step;
		dir = other.dir;
		shooter = other.currentPlayer;
	}
	bow_step = 0;
}

// Animation
with(currentPlayer){
	if(!dead){
		if(other.drawing || other.released){
			torso_instance.sprite_index = shooting_animation;
			torso_instance.image_index = other.released? other.release_image_index : other.bow_step;
		}
		else{
			if (torso_instance.sprite_index == shooting_animation){
				torso_instance.sprite_index = idle_animation;
				torso_instance.image_index = 0;
			}
		}
	}
}

ScaleWithDir();


