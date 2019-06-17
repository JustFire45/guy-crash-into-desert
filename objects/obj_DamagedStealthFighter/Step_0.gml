/// Step

// Smoke
var i;
for (i = 0; i < obj_GameManager.DSF_Smoke; i += 1)
{
	var xx = 0;
	var yy = 0;
	while (!point_in_triangle(xx, yy, x, y + 3, x + 32, y + 3, x + 16, y + 30))
	{
		xx = x + irandom_range(0, 32);
		yy = y + irandom_range(0, 30);
	}
	instance_create_depth(xx, yy, -1, obj_Smoke);
}

if (obj_GameManager.Steps > 12) image_index = 1;

// Op1 (Undestroyed "Loot") Ground Items
if (Op1 == 1 and obj_GameManager.Text[0] == "")
{
	Op1 = 2;
	var i;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	for (i = 0; i < 8; i += 1)
	{
		// Water Bottle (50%)
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 3;
			j.Count = 1;
			break;
		}
	}
	for (i = 0; i < 8; i += 1)
	{
		// Match [x2]
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 0;
			j.Count = 2;
			break;
		}
	}
}

// Op2_1 (Destroyed "Salvage Parts") Ground Items
if (Op2_1 == 1 and obj_GameManager.Text[0] == "")
{
	Op2_1 = 2;
	var i;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	for (i = 0; i < 8; i += 1)
	{
		// Metal Scraps [x4]
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 7;
			j.Count = 4;
			instance_destroy();
			break;
		}
	}
}