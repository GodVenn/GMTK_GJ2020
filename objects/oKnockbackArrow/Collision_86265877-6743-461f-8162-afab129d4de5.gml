/// @description Insert description here
// You can write your code in this editor
event_inherited();

// Apply knockback
if(other != shooter) other.hsp_knockback += knockback * dir * current_speed;
