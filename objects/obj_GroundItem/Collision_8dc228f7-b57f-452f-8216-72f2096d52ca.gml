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
			if (obj_GameManager.P_INV[i] == image_index and obj_GameManager.P_INVC[i] < 10)
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
					obj_GameManager.P_INV[i] = image_index;
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
	else if (image_index == 1)
	{
		// Water Bottle (100%)
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a water bottle.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 2)
	{
		// Water Bottle (75%)
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a water bottle.";
				instance_destroy();
				break;
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
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a water bottle.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 4)
	{
		// Water Bottle (25%)
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a water bottle.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 5)
	{
		// Water Bottle (0%)
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Empty Water Bottle"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up water bottle.\nIt is empty.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 6)
	{
		// Charcoal
		var i;
		var j = 0;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == image_index and obj_GameManager.P_INVC[i] < 5)
			{
				obj_GameManager.P_INVC[i] += Count;
				Count = 0;
				if (obj_GameManager.P_INVC[i] > 5)
				{
					Count = obj_GameManager.P_INVC[i] - 5;
					obj_GameManager.P_INVC[i] = 5;
				}
				j = 1;
				obj_GameManager.Text[0] = "You picked up some charcoal.";
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
					obj_GameManager.P_INV[i] = image_index;
					obj_GameManager.P_INVN[i] = "Charcoal"
					obj_GameManager.P_INVC[i] = Count;
					Count = 0;
					if (obj_GameManager.P_INVC[i] > 5)
					{
						Count = obj_GameManager.P_INVC[i] - 5;
						obj_GameManager.P_INVC[i] = 5;
					}
					obj_GameManager.Text[0] = "You picked up some charcoal.";
					if (Count <= 0) instance_destroy();
					break;
				}
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
			if (obj_GameManager.P_INV[i] == image_index and obj_GameManager.P_INVC[i] < 4)
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
					obj_GameManager.P_INV[i] = image_index;
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
	else if (image_index == 8)
	{
		// Nutrition Bar
		var i;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == -1)
			{
				obj_GameManager.P_INV[i] = image_index;
				obj_GameManager.P_INVN[i] = "Nutrition Bar"
				obj_GameManager.P_INVC[i] = Count;
				obj_GameManager.Text[0] = "You picked up a nutrition bar.";
				instance_destroy();
				break;
			}
		}
	}
	else if (image_index == 9)
	{
		// Cactus Fruit
		var i;
		var j = 0;
		for (i = 0; i < array_length_1d(obj_GameManager.P_INV); i += 1)
		{
			if (obj_GameManager.P_INV[i] == image_index and obj_GameManager.P_INVC[i] < 2)
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
					obj_GameManager.P_INV[i] = image_index;
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