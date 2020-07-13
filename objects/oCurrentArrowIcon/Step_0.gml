/// @description Display current arrow of player
if(instance_exists(player)){
	if(player.current_arrow == -1){
		sprite_index = blank_ikon;
		return;
	} 

	switch(player.current_arrow){
		case oPistolArrow: {sprite_index = pistol_ikon; break;}
		case oKnockbackArrow: {sprite_index = spring_ikon; break;}
		default: {sprite_index = regular_ikon_ikon; break;}
	}
}