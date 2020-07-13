/// @description Decrement hp and destroy self
if(other != shooter){
	other.hp-=dmg;
	instance_destroy(self);
	audio_play_sound(HitLyd,5,false);
}
