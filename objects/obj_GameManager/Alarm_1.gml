/// Generate World

// Fill "Map" with 0
var xx;
var yy;
for (yy = 0; yy < 500; yy += 1)
{
	for (xx = 0; xx < 500; xx += 1) Map[xx, yy] = 0;
}

// Add "obj_WoodenPlane" x12
var i = 0;
while (i < 12)
{
	var xx = irandom_range(2, 497);
	var yy = irandom_range(2, 497);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 2;
		instance_create_depth(xx * 16, yy * 16, 0, obj_WoodenPlane);
	}
}

// Add "obj_Crate" x200
var i = 0;
while (i < 200)
{
	var xx = irandom_range(2, 497);
	var yy = irandom_range(2, 497);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 3;
		instance_create_depth(xx * 16, yy * 16, 0, obj_Crate);
	}
}

// Add "obj_Cactus" x1000
var i = 0;
while (i < 1000)
{
	var xx = irandom_range(2, 497);
	var yy = irandom_range(2, 497);
	if (!position_meeting(xx * 16, yy * 16, obj_Wall) and !position_meeting(xx * 16, yy * 16, obj_Pilot))
	{
		i += 1;
		Map[xx, yy] = 1;
		instance_create_depth(xx * 16, yy * 16, 0, obj_Cactus);
	}
}	