/// @description 

ScaleWithDir();
// Knockback
hsp_knockback = max(0, hsp_knockback-1); 

// Player input
key_right = keyboard_check(input_right);
key_left = keyboard_check(input_left);
key_jump = keyboard_check_pressed(input_jump);
key_choose_arrow = keyboard_check_pressed(input_select_arrow);
key_drawing_bow = keyboard_check(input_bow);
key_arrow_released = keyboard_check_released(input_bow);

// Player reacts to input

var move = key_right - key_left;

hsp = move * walksp;
hsp += hsp_knockback;

vsp += sign(vsp) > 0 ? grv : (grv / 1.7); 


// Jumping
with(legs_instance){
	other.landed = (other.airborne 
					&& place_meeting(other.x, other.y + 1, oBoxGround) 
					&& sign(other.vsp) > 0);
	other.airborne = !place_meeting(other.x, other.y + 1, oBoxGround);
}

if ((!airborne) && (key_jump) && (vsp >= 0))
{
	vsp = -jumpsp;
}


// Horizontal Collision
with(legs_instance){
	if(place_meeting(other.x + other.hsp, other.y, oBoxGround))
	{
		while (!place_meeting(other.x+sign(other.hsp),y,oBoxGround))
		{
			other.x += sign(other.hsp);
		}
		other.hsp = 0;
	}
}

x = x + hsp;

// Vertical Collision
with(legs_instance){

	if(place_meeting(other.x, other.y + other.vsp, oBoxRoof))
	{
		while (!place_meeting(other.x, other.y + sign(other.vsp), oBoxRoof))
		{
			other.y += sign(other.vsp);
		}
		other.vsp = 0;
	}
	
	if((sign(other.vsp) > 0) && place_meeting(other.x, other.y + other.vsp, oBoxGround))
	{
		while (!place_meeting(other.x, other.y + sign(other.vsp), oBoxGround))
		{
			other.y += sign(other.vsp);
		}
		other.vsp = 0;
	}
}
y = y + vsp;


//Coyote jumping
if (place_meeting(x,y+1,oBoxGround))
{on_ground = true;}
else
{on_ground = false;}

if on_ground = false
{
	if coyote_counter > 0 
	{
		coyote_counter -= 6;
		
		if jumped = false
		{
			if keyboard_check_pressed(vk_space)
			{
				vsp = -10;
				jumped = true;
			}
		}
	}
}
else
{
	jumped = false;
	coyote_counter = coyote_max;
}

//Animation
if(landed) {
	audio_play_sound(Landing, 5, false);
	landed = false;
}

if(airborne){
	if(legs_instance.sprite_index != AskJumping){
		legs_instance.sprite_index = AskJumping;
		legs_instance.image_index = 0;
		legs_instance.image_speed = 1;
	}
	if (legs_instance.image_index >= 1) {
		legs_instance.image_speed = 0;
		if (sign(vsp) > 0) {
			legs_instance.image_index = 2;
		}
	}
}
else{
	legs_instance.sprite_index = AskWalking;
	if(move==0){
		legs_instance.image_speed = 0;
	}
	else{
		legs_instance.image_speed = 1;
	}
}