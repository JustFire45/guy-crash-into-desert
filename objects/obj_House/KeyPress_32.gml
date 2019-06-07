/// Interact

if (place_meeting(x + 1, y, obj_Pilot) and obj_Pilot.Dir == 2 and obj_GameManager.Inventory == -1 and obj_GameManager.Text[0] == "")
{
	obj_GameManager.TextObj = "obj_House";
	obj_GameManager.TextID = id;
	obj_GameManager.Text[0] = "Choose an action (Press [X] to close).";
	obj_GameManager.Options = ["Loot", "", "", ""];
	obj_GameManager.OptionsCursor = 0;
}