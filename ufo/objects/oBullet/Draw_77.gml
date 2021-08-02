if(place_meeting(x,y,oAsteroids)) {
	with (oAsteroids) {
		if(place_meeting(x,y,oBullet)) {
			instance_destroy();
			global.scorecount++;
		}
	}
	instance_destroy();
}

if (place_meeting(x,y,oSpawner)) {
	instance_destroy();	
}