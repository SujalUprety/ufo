spawndelay--;
if(spawndelay < 0 ) {
	spawndelay = random_range(30,60);
	with(instance_create_layer(x,y,"Asteroids",oAsteroids)) {
		speed = -12;
		direction = other.image_angle;
		image_angle = direction;
	}
}