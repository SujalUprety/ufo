if(place_meeting(x,y,oAsteroids)) {
	with (oAsteroids) {
		if(place_meeting(x,y,oBullet)) {
			instance_destroy();
		}
	}
	instance_destroy();
}

if (place_meeting(x,y,oSpawner)) {
	instance_destroy();	
}