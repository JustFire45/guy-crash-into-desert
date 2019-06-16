/// scr_get_option_text()

var a = obj_GameManager.P_INV[obj_GameManager.InventorySelect];

scr_tick();

if (a > 0 and a < 5)
{
	if (obj_GameManager.P_THR <= 80)
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
	if (obj_GameManager.P_HNG <= 80)
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
	if (obj_GameManager.P_HNG <= 75)
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