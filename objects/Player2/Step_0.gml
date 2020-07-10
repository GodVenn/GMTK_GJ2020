// Player input
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);



// Player reacts to input

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv; 


// Jumping

if (place_meeting(x,y+1,oBoxGround)) && (key_jump)
{
	vsp = -10	
}


// Horizontal Collision
if(place_meeting(x+hsp,y,oBoxGround))
{
	while (!place_meeting(x+sign(hsp),y,oBoxGround))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Vertical Collision
if(place_meeting(x,y+vsp,oBoxGround))
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





