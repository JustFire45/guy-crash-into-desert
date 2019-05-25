/// Interact

if (((place_meeting(x + 1, y, obj_Pilot) and obj_Pilot.Dir == 2) or (place_meeting(x - 1, y, obj_Pilot) and obj_Pilot.Dir == 0) or (place_meeting(x, y + 1, obj_Pilot) and obj_Pilot.Dir == 1) or (place_meeting(x, y - 1, obj_Pilot) and obj_Pilot.Dir == 3)) and obj_GameManager.Inventory == -1 and obj_GameManager.Text[0] == "")
{
	obj_GameManager.TextObj = "obj_Cactus";
	obj_GameManager.TextID = id;
	obj_GameManager.Text[0] = "Choose an action (Press [X] to close).";
	obj_GameManager.Options = ["Drink", "Collect Fruit", "", ""];
	obj_GameManager.OptionsCursor = 0;
}