/// Get Item

if (obj_Pilot.Move == 0)
{
	if (image_index == 0)
	{
		// Match
		var i;
		var j = 0;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == 0 and obj_GameManager.P_INVC[i] < 10)
			{
				obj_GameManager.P_INVC[i] += Count;
				Count = 0;
				if (obj_GameManager.P_INVC[i] > 10)
				{
					Count = obj_GameManager.P_INVC[i] - 10;
					obj_GameManager.P_INVC[i] = 10;
				}
				j = 1;
				obj_GameManager.Text[0] = "You picked up some matches.";
				if (Count <= 0) instance_destroy();
				break;
			}
		}
		if (j == 0)
		{
			for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
			{
				if (obj_GameManager.P_INV[i] == -1)
				{
					obj_GameManager.P_INV[i] = 0;
					obj_GameManager.P_INVN[i] = "Match"
					obj_GameManager.P_INVC[i] = Count;
					Count = 0;
					if (obj_GameManager.P_INVC[i] > 10)
					{
						Count = obj_GameManager.P_INVC[i] - 10;
						obj_GameManager.P_INVC[i] = 10;
					}
					obj_GameManager.Text[0] = "You picked up some matches.";
					if (Count <= 0) instance_destroy();
					break;
				}
			}
		}
	}
	else if (image_index == 3)
	{
		// Water Bottle (50%)
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = 3;
				obj_GameManager.P_INVN[i] = "Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a water bottle.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 7)
	{
		// Metal Scrap
		var i;
		var j = 0;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == 7 and obj_GameManager.P_INVC[i] < 4)
			{
				obj_GameManager.P_INVC[i] += Count;
				Count = 0;
				if (obj_GameManager.P_INVC[i] > 4)
				{
					Count = obj_GameManager.P_INVC[i] - 4;
					obj_GameManager.P_INVC[i] = 4;
				}
				j = 1;
				obj_GameManager.Text[0] = "You picked up some metal scraps.";
				if (Count <= 0) instance_destroy();
				break;
			}
		}
		if (j == 0)
		{
			for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
			{
				if (obj_GameManager.P_INV[i] == -1)
				{
					obj_GameManager.P_INV[i] = 7;
					obj_GameManager.P_INVN[i] = "Metal Scrap"
					obj_GameManager.P_INVC[i] = Count;
					Count = 0;
					if (obj_GameManager.P_INVC[i] > 4)
					{
						Count = obj_GameManager.P_INVC[i] - 4;
						obj_GameManager.P_INVC[i] = 4;
					}
					obj_GameManager.Text[0] = "You picked up some metal scraps.";
					if (Count <= 0) instance_destroy();
					break;
				}
			}
		}
	}
	else if (image_index == 12)
	{
		// Cactus Fruit
		var i;
		var j = 0;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == 12 and obj_GameManager.P_INVC[i] < 2)
			{
				obj_GameManager.P_INVC[i] += Count;
				Count = 0;
				if (obj_GameManager.P_INVC[i] > 2)
				{
					Count = obj_GameManager.P_INVC[i] - 2;
					obj_GameManager.P_INVC[i] = 2;
				}
				j = 1;
				obj_GameManager.Text[0] = "You picked up some prickly pears.";
				if (Count <= 0) instance_destroy();
				break;
			}
		}
		if (j == 0)
		{
			for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
			{
				if (obj_GameManager.P_INV[i] == -1)
				{
					obj_GameManager.P_INV[i] = 12;
					obj_GameManager.P_INVN[i] = "Prickly Pear"
					obj_GameManager.P_INVC[i] = Count;
					Count = 0;
					if (obj_GameManager.P_INVC[i] > 2)
					{
						Count = obj_GameManager.P_INVC[i] - 2;
						obj_GameManager.P_INVC[i] = 2;
					}
					obj_GameManager.Text[0] = "You picked up some prickly pears.";
					if (Count <= 0) instance_destroy();
					break;
				}
			}
		}
	}
}