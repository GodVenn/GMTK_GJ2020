event_inherited();

// Input keys;
input_left = ord("A");
input_right = ord("D");
input_jump= ord("W");
input_bow = ord("F");
input_select_arrow = ord("S");

// edit
hsp = 0;
vsp = 0;
grv = 0.4;
walksp = 4;

//Coyote jumping
coyote_counter = 0;
coyote_max = 6;
jumped = true;
on_ground = false;

// Bow and Arrow
bow_reference = instance_nearest(x,y,Bow);
current_arrow = Arrow;