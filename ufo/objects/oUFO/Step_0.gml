keyup = keyboard_check(ord("W"));
keydown = keyboard_check(ord("S"));

var move = keydown - keyup;

vsp = move * movespeed;

if(place_meeting(x,y+vsp,oWall)) {
	while(!place_meeting(x,y+sign(vsp),oWall)) {
		y += sign(vsp);	
	}
	vsp = 0;
}

y += vsp;

firingdelay--;
if(keyboard_check_pressed(ord("F")) && firingdelay < 0) {
	firingdelay = 5;
	with(instance_create_layer(x+65,y+40, "Bullets", oBullet)) {
		speed = 15;
		direction = other.image_angle;
		image_angle = direction;
	}
	totalbullets--;
}

if(totalbullets == 0 ) {
	//alarm[0] = 60;
}