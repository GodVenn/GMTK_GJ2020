/// @description Find target and Fire bullet
var targetType = shooter.object_index == PlayerAsk? PlayerEmbla : PlayerAsk;
var targetInstance = instance_nearest(x,y,targetType);

var bullet = instance_create_layer(x,y,"Arrows",oBullet);
if(instance_exists(targetInstance)){	
	bullet.targetX = targetInstance.x;
	bullet.targetY = targetInstance.y;
}

instance_destroy();

