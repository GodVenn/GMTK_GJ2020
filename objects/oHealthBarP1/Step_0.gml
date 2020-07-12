/// @description Update Healthbar
if(!instance_exists(player_reference)){
	instance_destroy();
	return;
}
image_xscale = lerp(0,1,player_reference.hp/player_reference.max_hp);
if(last_xscale != image_xscale) x -= (sprite_width * (1-image_xscale))/2;
last_xscale = image_xscale;