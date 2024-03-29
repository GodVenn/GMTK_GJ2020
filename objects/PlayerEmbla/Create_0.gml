event_inherited();
// Arrow
current_arrow = -1;

// Player Model
legs = AskLegs;
torso = EmblaTorso;
dead_model = EmblaDead;
legs_instance = instance_create_layer(x,y,"Player",legs);
torso_instance = instance_create_layer(x,y,"Player",torso);
shooting_animation = EmblaShooting;
idle_animation = EmblaIdle;

with(legs_instance){
	player_reference = other;
}
with(torso_instance){
	player_reference = other;
}
image_alpha = 0;//Make placeholder sprite invisible

// Input keys;
input_left = vk_left;
input_right = vk_right;
input_jump= vk_up;
input_bow = vk_enter;
input_select_arrow = vk_down;

