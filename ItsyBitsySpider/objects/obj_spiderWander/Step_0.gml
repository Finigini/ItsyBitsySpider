/// @description wander if not in dry zone

/// @description every frame
image_angle = direction;

if canMove = true and !place_meeting(x,y,obj_dryZone)
{
	canMove = false;
	direction += random_range(-10,10);
	speed = moveSpeed+random_range(-1,1);
	alarm[0] = obj_control.spiderMoveRate;
}

if obj_control.spiderWrap == true
{
	move_wrap(true,true,8);
}