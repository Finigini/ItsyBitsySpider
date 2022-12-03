/// @description update every frame

if size <= 6
{
	image_index = size-1;
}
else
{
	image_index = 5;
	image_xscale = 1+size/60
	image_yscale = 1+size/60
}
//streaking

if streaking == false
and size >= 6
{
	streaking = true;
}

if streaking = true
{
	part_type_size(global.trailType,size/6,size/6,-0.1,0);
	part_particles_create(global.rainTrails,x,y,global.trailType,1);
	direction = 270+random(15)-random(30);
	speed = size;
}

//combining
with(instance_place(x,y,obj_rainDrop))
{
	if id > other.id
	{
		size += other.size;
		instance_destroy(other);
	}
}