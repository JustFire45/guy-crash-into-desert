/// Interact

if (((place_meeting(x + 1, y, obj_Pilot) and obj_Pilot.Dir == 2) or (place_meeting(x - 1, y, obj_Pilot) and obj_Pilot.Dir == 0)) and obj_GameManager.Steps < 11 and obj_GameManager.Inventory == -1 and obj_GameManager.Text[0] == "")
{
	obj_GameManager.TextObj = "obj_DamagedStealthFighter";
	obj_GameManager.TextID = id;
	if (obj_GameManager.Steps < 4) obj_GameManager.Text[0] = "A small fire has started inside.\nChoose an action (Press [X] to close).";
	else if (obj_GameManager.Steps < 8) obj_GameManager.Text[0] = "The fire is growing.\nChoose an action (Press [X] to close).";
	else obj_GameManager.Text[0] = "The fire is very large.\nChoose an action (Press [X] to close).";
	obj_GameManager.Options = ["Loot", "", "", ""];
	obj_GameManager.OptionsCursor = 0;
}
else if (((place_meeting(x + 1, y, obj_Pilot) and obj_Pilot.Dir == 2) or (place_meeting(x - 1, y, obj_Pilot) and obj_Pilot.Dir == 0) or (place_meeting(x, y + 1, obj_Pilot) and obj_Pilot.Dir == 1) or (place_meeting(x, y - 1, obj_Pilot) and obj_Pilot.Dir == 3)) and obj_GameManager.Inventory == -1 and obj_GameManager.Steps >= 11 and obj_GameManager.Text[0] == "")
{
	if (image_index == 1)
	{
		obj_GameManager.TextObj = "obj_DamagedStealthFighter2";
		obj_GameManager.TextID = id;
		obj_GameManager.Text[0] = "The aircraft has burned down.\nChoose an action (Press [X] to close).";
		obj_GameManager.Options = ["Salvage Parts", "", "", ""];
		obj_GameManager.OptionsCursor = 0;
	}
	else
	{
		obj_GameManager.TextObj = "obj_DamagedStealthFighter";
		obj_GameManager.TextID = id;
		obj_GameManager.Text[0] = "The fire is too dangerous to retrieve anything.";
	}
}