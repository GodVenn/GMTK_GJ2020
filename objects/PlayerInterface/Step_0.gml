/// @description 

ScaleWithDir();

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

vsp += sign(vsp) > 0 ? grv : (grv / 1.3); 


// Jumping
landed = airborne && place_meeting(x,y+1,oBoxGround);
airborne = !place_meeting(x,y+1,oBoxGround);

if (!airborne) && (key_jump)
{
	vsp = -jumpsp;
}


// Horizontal Collision
with(legs_instance){
	if(place_meeting(other.x + other.hsp, other.y, oBoxGround))
	{
		var collide = true;
		for(var i = 0; i < abs(other.hsp); i++)
		{
			if (!place_meeting(other.x + other.hsp, other.y - i, oBoxGround))
			{
				other.y -= i;
				collide = false;
			}
		}
		if(collide){
			while (!place_meeting(other.x+sign(other.hsp),y,oBoxGround))
			{
				other.x += sign(other.hsp);
			}
			other.hsp = 0;
		}
		
	}
}

x = x + hsp;

// Vertical Collision
if((sign(vsp) > 0) && place_meeting(x,y+vsp,oBoxGround))
{
	while (!place_meeting(x,y+sign(vsp),oBoxGround))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
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