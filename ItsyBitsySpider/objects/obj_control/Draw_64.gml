/// @description draw text info

draw_text(32,32,"number of raindrops: "+string(instance_number(obj_rainDrop)));
draw_text(32,48,"raindrops per time step: "+string(raindropPerDrop));
draw_text(32,64,"number of spiders: "+string(instance_number(obj_spiderParent)));
draw_text(32,96,"spiders washed out: "+string(spidersWashed));