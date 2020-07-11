/// @description Check for death
if (hp <= 0){
	dead = true;
	instance_create_layer(x,y,"Player",dead_model);
	instance_destroy(legs_instance);
	instance_destroy(torso_instance);
	instance_destroy(bow);
	instance_destroy();
}
