/// Generate World

// Fill "Map" with 0
var xx;
var yy;
for (yy = 0; yy < 1000; yy += 1)
{
	for (xx = 0; xx < 1000; xx += 1) Map[xx, yy] = 0;
}

// Add "obj_House" x35
var i = 0;
while (i < 35)
{
	var xx = irandom_range(4, 990);
	var yy = irandom_range(4, 990);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 4;
		instance_create_depth(xx * 16, yy * 16, 0, obj_House);
	}
}

// Add "obj_WoodenPlane" x70
var i = 0;
while (i < 70)
{
	var xx = irandom_range(4, 990);
	var yy = irandom_range(4, 990);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 2;
		instance_create_depth(xx * 16, yy * 16, 0, obj_WoodenPlane);
	}
}

// Add "obj_Crate" x700
var i = 0;
while (i < 700)
{
	var xx = irandom_range(4, 990);
	var yy = irandom_range(4, 990);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 3;
		instance_create_depth(xx * 16, yy * 16, 0, obj_Crate);
	}
}

// Add "obj_Cactus" x4000
var i = 0;
while (i < 4000)
{
	var xx = irandom_range(2, 997);
	var yy = irandom_range(2, 997);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 1;
		instance_create_depth(xx * 16, yy * 16, 0, obj_Cactus);
	}
}

// Add "obj_Base" x1
if (choose(1, 2) == 1)
{
	var xx = choose(64, 15808);
	var yy = irandom_range(64, 15808);
	Map[xx, yy] = 5;
	instance_create_depth(xx * 16, yy * 16, 0, obj_Base);
}
else
{
	var xx = irandom_range(64, 15808);
	var yy = choose(64, 15808);
	Map[xx, yy] = 5;
	instance_create_depth(xx * 16, yy * 16, 0, obj_Base);
}