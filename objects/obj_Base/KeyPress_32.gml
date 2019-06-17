/// Interact

if (place_meeting(x, y + 1, obj_Pilot) and obj_Pilot.Dir == 1 and obj_GameManager.Inventory == -1 and obj_GameManager.Text[0] == "")
{
	obj_GameManager.P_HP = 0;
	obj_GameManager.FadeInc = 0.01;
	obj_GameManager.FadeCause = 2;
	obj_GameManager.Text[0] = "You quietly snuck inside the base.\nYou started up a plane and flew out.";
}