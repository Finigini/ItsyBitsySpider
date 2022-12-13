if keyboard_check_pressed(vk_left)
and room_exists(room_previous(room))
{
	room_goto_previous();
}

if keyboard_check_pressed(vk_right)
and room_exists(room_next(room))
{
	room_goto_next();
}