event_inherited();

// Player Model
legs = AskLegs;
torso = AskTorso;
dead_model = AskDead;
legs_instance = instance_create_layer(x,y,"Player",legs);
torso_instance = instance_create_layer(x,y,"Player",torso);
shooting_animation = AskShooting;
idle_animation = AskIdle;

with(legs_instance){
	player_reference = other;
}
with(torso_instance){
	player_reference = other;
}
image_alpha = 0;//Make placeholder sprite invisible

// Input keys;
input_left = ord("A");
input_right = ord("D");
input_jump= ord("W");
input_bow = ord("F");
input_select_arrow = ord("S");

