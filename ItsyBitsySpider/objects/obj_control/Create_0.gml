/// @description initialize values

//RAIN----------------------------
raindropRate = 1;
raindropPerDrop = 0;
raindropSizeMin = 1;
raindropSizeMax = 6;
//start raindrops
alarm[0] = raindropRate;

//particle system
global.rainTrails = part_system_create();
global.trailType = part_type_create();
part_type_sprite(global.trailType,spr_rainDropPart,false,false,false);
part_type_life(global.trailType,60,60);
//part_type_alpha3(global.trailType,0.7,0.4,0.1);
//trailEmitter = part_emitter_create(global.rainTrails);

//SPIDERS--------------------------------
spiderMoveRate = 60;
spiderWrap = true;
spidersWashed = 0;

spidersAvoid = 10;
spidersWander = 10;

function spawn_spiders()
{
	var i, spawnX, spawnY;
	for(i = 0; i < spidersAvoid; i++)
	{
		spawnX = random(room_width);
		spawnY = random(room_height);
		if !position_meeting(spawnX,spawnY,obj_dryZone)
		{
			instance_create_depth(spawnX,spawnY,0,obj_spiderAvoid);
		}
		else
		{
			i--;
		}
	}
	for(i = 0; i < spidersWander; i++)
	{
		spawnX = random(room_width);
		spawnY = random(room_height);
		if !position_meeting(spawnX,spawnY,obj_dryZone)
		{
			instance_create_depth(spawnX,spawnY,0,obj_spiderWander);
		}
		else
		{
			i--;
		}
	}
}

if room != RoomRelax
{
	spawn_spiders();
}

function addSpiderAvoid()
{
	spawnX = random(room_width);
	spawnY = random(room_height);
	instance_create_depth(spawnX,spawnY,0,obj_spiderAvoid);
}

function addSpiderWander()
{
	spawnX = random(room_width);
	spawnY = random(room_height);
	instance_create_depth(spawnX,spawnY,0,obj_spiderWander);
}