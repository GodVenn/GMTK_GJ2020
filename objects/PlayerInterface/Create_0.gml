/// @description Init variables
InitScaleWithDir();

// Health
hp = 1;
dead = false;

// General
hsp = 0;
vsp = 0;
grv = 0.8;
jumpsp = 25;
walksp = 10;
airborne = true;
landed = false;

//Coyote jumping
coyote_counter = 0;
coyote_max = 6;
jumped = true;
on_ground = false;

// Bow and Arrow
bow = instance_nearest(x,y,Bow);
current_arrow = Arrow;

// Model
legs = AskLegs;
torso = AskTorso;
dead_model = AskDead;

