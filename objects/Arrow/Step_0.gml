/// @description Destroy if outside of room
life_timer++;

//Speed is reduced by air friction
current_speed = max(0,current_speed - air_friction);
x = x + (current_speed * dir);
image_xscale = dir;

// Effective Gravity depends on the speed
var effective_gravity = lerp(0, arrow_gravity, 1-power(current_speed/max_speed,2));
vsp += effective_gravity;
y += vsp;

// "Animation"
if(current_speed == 0) image_angle = 270;
else if(vsp == 0) image_angle = dir==1? 0 : 180;
else image_angle = dir==1? lerp(270,359,1-vsp/current_speed) : lerp(270,180,1-vsp/current_speed);

DestroyIfOutsideRoom();