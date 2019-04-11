//Get Player Input
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
keyJump = keyboard_check(ord("W")) or keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);

//Calculate Movement
var move = keyRight - keyLeft;
var moveud = keyDown - keyJump;

if(disMovement == false){
	if(keyboard_check(vk_shift))
	{
		hspdd = move * (walksp + round(walksp / 3));
	}
	else
	{
		hspd = move * walksp;
	}	
	if(keyboard_check(vk_shift))
	{
		vspd = moveud * (walksp + round(walksp / 3));
	}
	else
	{
	vspd = moveud * walksp;
	}
}


/// Movement
move_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
move_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
move_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
move_right = keyboard_check(vk_right) or keyboard_check(ord("D"));

xx = move_right - move_left;
yy = move_down - move_up;

hspdd = xx*spd;
vspdd = yy*spd;

if(place_meeting(x+hspdd,y,spr_wall)){
	while(!place_meeting(x+sign(hspdd),y,spr_wall)){
		x+=sign(hspdd);
	}
	hspdd = 0;
}
x += hspdd;

if(place_meeting(x,y+vspdd,spr_wall)){
	while(!place_meeting(x,y+sign(vspdd),spr_wall)){
		y+=sign(vspdd);
	}
	vspdd = 0;
}
y += vspdd;


//changes sprite based on direction
if(disMovement == false){
	if(keyboard_check(ord("D")) or keyboard_check(vk_right))
	{
		sprite_index = sprite2;
	}
	else if(keyboard_check_released(ord("D")) or keyboard_check_released(vk_right))
	{
		sprite_index = sprite1;
	}

	if(keyboard_check(ord("A")) or keyboard_check(vk_left))
	{
		sprite_index = sprite3;
	}
	else if(keyboard_check_released(ord("A")) or keyboard_check_released(vk_left))
	{
		sprite_index = sprite1;
	}

	if(keyboard_check(ord("S")) or keyboard_check(vk_down))
	{
		sprite_index = sprite1;
	}	
	else if(keyboard_check_released(ord("S")) or keyboard_check_released(vk_down))
	{
		sprite_index = sprite1;
	}

	if(keyboard_check(ord("W")) or keyboard_check(vk_up))
	{
		sprite_index = sprite0;
	}	
	else if(keyboard_check_released(ord("W")) or keyboard_check_released(vk_up))
	{
		sprite_index = sprite1;
	}	
}