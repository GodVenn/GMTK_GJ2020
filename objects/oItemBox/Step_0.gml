if(instance_exists(currentPlayer)){
    FollowObject(currentPlayer, xOffset, yOffset);

	// Animation
	if (currentPlayer.key_choose_arrow && !currentPlayer.key_drawing_bow) 
	{
	    image_speed = 0;
		var newArrow =  available_arrows[image_index];
		currentPlayer.current_arrow =  newArrow;
		currentPlayer.alarm[0] = currentPlayer.timerLength * room_speed;
	    alarm[0] = timerItembox;
	}
}