/// @description every frame
image_angle = direction;

nearestDrop = instance_nearest(x,y,obj_rainDrop)

if distance_to_object(nearestDrop) < 16
and canMove = true
{
	canMove = false;
	direction = -point_direction(x,y,nearestDrop.x,nearestDrop.y)+random_range(-10,10);
	speed = moveSpeed+random_range(-1,1);
	alarm[0] = obj_control.spiderMoveRate;
}

if obj_control.spiderWrap == true
{
	move_wrap(true,true,8);
}