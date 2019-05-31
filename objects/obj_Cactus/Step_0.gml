/// Step

// Op2 ("Collect Fruit") Ground Items
if (Op2 == 1 and obj_GameManager.Text[0] == "")
{
	Op2 = 2;
	var i;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	for (i = 0; i < 8; i += 1)
	{
		// Cactus Fruit [x1~2]
		if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
		{
			var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
			j.image_index = 9;
			j.Count = choose(1, 2);
			break;
		}
	}
}