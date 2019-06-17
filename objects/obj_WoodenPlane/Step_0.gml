/// Step

if (Op1 == 1 and obj_GameManager.Text[0] == "")
{
	Op1 = 2;
	var i;
	var k;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	for (k = 0; k < 5; k += 1)
	{
		// Random Items [x5]
		var a = irandom_range(1, 8);
		for (i = 0; i < 8; i += 1)
		{
			if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
			{
				var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
				j.image_index = a;
				j.Count = 1;
				break;
			}
		}
	}
	for (i = 0; i < 8; i += 1)
	{
		// Match [x3]
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 0;
			j.Count = 3;
			break;
		}
	}
}
else if (Op2 == 1 and obj_GameManager.Text[0] == "")
{
	Op2 = 2;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	for (i = 0; i < 8; i += 1)
	{
		// Charcoal [x3~4]
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 6;
			j.Count = choose(3, 4);
			break;
		}
	}
}d