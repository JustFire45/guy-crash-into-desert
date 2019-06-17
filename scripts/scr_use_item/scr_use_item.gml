/// scr_get_option_text()

var a = obj_GameManager.P_INV[obj_GameManager.InventorySelect];

scr_tick();

if (a == 0)
{
	var j;
	var i = -1;
	for (j = 0; j < obj_GameManager.P_INVS; j += 1)
	{
		if (obj_GameManager.P_INV[j] == 6)
		{
			i = j
			break;
		}
	}
	if (i > -1)
	{
		if (obj_GameManager.P_INVC[i] >= 5)
		{
			if ((obj_Pilot.Dir == 0 and position_meeting(obj_Pilot.x + 20, obj_Pilot.y + 4, obj_Wall)) or (obj_Pilot.Dir == 1 and position_meeting(obj_Pilot.x + 4, obj_Pilot.y - 8, obj_Wall)) or (obj_Pilot.Dir == 2 and position_meeting(obj_Pilot.x - 8, obj_Pilot.y + 4, obj_Wall)) or (obj_Pilot.Dir == 3 and position_meeting(obj_Pilot.x + 4, obj_Pilot.y +	20, obj_Wall))) Text[0] = "You can't start a campfire in this direction.";
			else
			{
				obj_GameManager.P_INVC[obj_GameManager.InventorySelect] -= 1;
				if (obj_GameManager.P_INVC[obj_GameManager.InventorySelect] <= 0)
				{
					obj_GameManager.P_INV[obj_GameManager.InventorySelect] = -1;
					obj_GameManager.P_INVN[obj_GameManager.InventorySelect] = "";
					obj_GameManager.P_INVC[obj_GameManager.InventorySelect] = 0;
				}
				obj_GameManager.P_INV[i] = -1;
				obj_GameManager.P_INVN[i] = "";
				obj_GameManager.P_INVC[i] = 0;
				Text[0] = "You placed some charcoal down and threw a match...\nUpon hitting the charcoal, a fire starts.";
				if (obj_Pilot.Dir == 0) instance_create_depth(obj_Pilot.x + 16, obj_Pilot.y, 0, obj_Campfire);
				else if (obj_Pilot.Dir == 1) instance_create_depth(obj_Pilot.x, obj_Pilot.y - 16, 0, obj_Campfire);
				else if (obj_Pilot.Dir == 2) instance_create_depth(obj_Pilot.x - 16, obj_Pilot.y, 0, obj_Campfire);
				else if (obj_Pilot.Dir == 3) instance_create_depth(obj_Pilot.x, obj_Pilot.y + 16, 0, obj_Campfire);
			}
		}
		else Text[0] = "You need more charcoal to start a fire...";
	}
	else Text[0] = "You need charcoal to start a fire...";
}
else if (a > 0 and a < 5)
{
	if (obj_GameManager.P_THR < 90)
	{
		Text[0] = "You drank some water.\nYou became less thirsty (25).";
		a += 1;
		obj_GameManager.P_INV[obj_GameManager.InventorySelect] = a;
		if (a >= 5) obj_GameManager.P_INVN[obj_GameManager.InventorySelect] = "Empty Water Bottle";
		obj_GameManager.P_THR += 25;
		if (obj_GameManager.P_THR > 100) obj_GameManager.P_THR = 100;
	}
	else Text[0] = "You're not thirsy enough...";
}
else if (a == 8)
{
	if (obj_GameManager.P_HNG < 90)
	{
		Text[0] = "You ate the nutrition bar.\nYou became less hungry (50).";
		obj_GameManager.P_INV[obj_GameManager.InventorySelect] = -1;
		obj_GameManager.P_INVN[obj_GameManager.InventorySelect] = "";
		obj_GameManager.P_INVC[obj_GameManager.InventorySelect] = 0;
		obj_GameManager.P_HNG += 50;
		if (obj_GameManager.P_HNG > 100) obj_GameManager.P_HNG = 100;
	}
	else Text[0] = "You're not hungry enough...";
}
else if (a == 9)
{
	if (obj_GameManager.P_HNG < 90)
	{
		Text[0] = "You carefully cut open the prickly pear and ate it.\nYou became less hungry (25).";
		obj_GameManager.P_INVC[obj_GameManager.InventorySelect] -= 1;
		if (obj_GameManager.P_INVC[obj_GameManager.InventorySelect] <= 0)
		{
			obj_GameManager.P_INV[obj_GameManager.InventorySelect] = -1;
			obj_GameManager.P_INVN[obj_GameManager.InventorySelect] = "";
			obj_GameManager.P_INVC[obj_GameManager.InventorySelect] = 0;
		}
		obj_GameManager.P_HNG += 25;
		if (obj_GameManager.P_HNG > 100) obj_GameManager.P_HNG = 100;
	}
	else Text[0] = "You're not hungry enough...";
}
else Text[0] = "You can't use this!";