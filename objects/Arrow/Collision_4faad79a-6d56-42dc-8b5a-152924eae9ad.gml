/// @description Decrement hp and destroy self
if(life_timer > min_life){
	other.hp-=dmg;
	instance_destroy(self);
	audio_play_sound(HitLyd,5,false);
}