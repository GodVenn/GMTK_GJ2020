/// @description Set life timer to not collide with shooter

// This base speed will be multiplied by a number between 0-3 depending on
// the draw of the bow
base_speed = 20;
vsp = 0;
max_speed = 20 * 3;
air_friction = 0.2;
arrow_gravity = 1;
audio_play_sound(PilSkytingOrginal,5,false);
dmg = PlayerInterface.max_hp * 0.1;

// Shooter
shooter = PlayerInterface;