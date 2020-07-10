if(lastX != x){
	dir = lastX < x? 1 : -1;
}
image_xscale = dir;
lastX = x;