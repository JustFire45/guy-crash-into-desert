/// Step

// Increment Delta Time
DT += 1;

// Debug
var test = 1;
if (test == 1)
{
	show_debug_message("Seed: " + string(random_get_seed()));
	show_debug_message("");
	
	if (keyboard_check_pressed(ord("R"))) room_restart();
}

// Other
if (Steps >= 30) DSF_Smoke = 0;
else if (Steps >= 25) DSF_Smoke = 19;
else if (Steps >= 20) DSF_Smoke = 5;
else if (Steps >= 15) DSF_Smoke = 4;
else if (Steps >= 10) DSF_Smoke = 3;
else if (Steps >= 5) DSF_Smoke = 2;

// Open / Close Inventory
if (keyboard_check_pressed(vk_tab) and obj_Pilot.Move == 0 and Text[0] == "") Inventory *= -1;

// Inventory Update
if (Inventory > 0)
{
	if (keyboard_check_pressed(vk_left) and InventorySelect > 0) InventorySelect -= 1;
	else if (keyboard_check_pressed(vk_right) and InventorySelect < P_INVS - 1) InventorySelect += 1;
}
else
{
	InventorySelect = 0;
}