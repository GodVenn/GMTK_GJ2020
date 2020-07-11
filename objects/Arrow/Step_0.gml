/// @description Destroy if outside of room
life_timer++;
x = x + (current_speed * dir);
image_xscale = dir;

DestroyIfOutsideRoom();