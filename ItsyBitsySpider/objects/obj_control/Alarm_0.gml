/// @description raindrops
alarm[0] = raindropRate;

for(var i = 0; i < raindropPerDrop; i++)
{
	var dropX = random(room_width);
	var dropY = random(room_height)
	if instance_exists(obj_dryZone)
	{
		if !point_in_rectangle(dropX,dropY,obj_dryZone.bbox_left,obj_dryZone.bbox_top,obj_dryZone.bbox_right,obj_dryZone.bbox_bottom)
		{
			with(instance_create_depth(dropX,dropY,0,obj_rainDrop))
			{
				size = (other.raindropSizeMin+round(random(other.raindropSizeMax-other.raindropSizeMin)))-1;
			}
		}
	}
	else
	{
		with(instance_create_depth(dropX,dropY,0,obj_rainDrop))
		{
			size = (other.raindropSizeMin+round(random(other.raindropSizeMax-other.raindropSizeMin)))-1;
		}
	}
}