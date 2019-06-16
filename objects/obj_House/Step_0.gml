/// Step

if (Op1 == 1 and obj_GameManager.Text[0] == "")
{
	Op1 = 2;
	var i;
	var k;
	var sqrsX = [0, 0, -16, 16, -16, -16, 16, 16];
	var sqrsY = [-16, 16, 0, 0, 16, -16, 16, -16];
	if (choose(0, 1) == 1)
	{
		// Random Bag
		var a = irandom_range(1, 100);
		var b = 10;
		if (a <= 10) b = 12;
		else if (a <= 40) b = 11;
		var a = irandom_range(1, 8);
		for (i = 0; i < 8; i += 1)
		{
			if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
			{
				var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
				j.image_index = b;
				j.Count = 1
				break;
			}
		}
	}
	for (k = 0; k < 5; k += 1)
	{
		// Random Items [x5~10]
		var a = irandom_range(1, 8);
		for (i = 0; i < 8; i += 1)
		{
			if (!position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_Wall) and !position_meeting(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], obj_GroundItem))
			{
				var j = instance_create_depth(obj_Pilot.x + sqrsX[i], obj_Pilot.y + sqrsY[i], 0, obj_GroundItem);
				j.image_index = a;
				j.Count = irandom_range(1, 2);
				break;
			}
		}
	}
}