/// @description Float if selected
if(selected){
	timer = timer >= 2 * pi? timer = 0 : ++timer;
	y = origin_y + amplitude * sin(frequency * timer);
}
else{
	y = origin_y;
	timer = 0;
}