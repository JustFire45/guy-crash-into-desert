/// scr_get_option_text()

var op = obj_GameManager.OptionsCursor;
var ob = obj_GameManager.TextObj;
var d = obj_GameManager.TextID;

scr_tick();

if (ob == "obj_DamagedStealthFighter")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.Text[0] = "You search for any salvageable items...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You search for any salvageable items...\n...but you find nothing.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_DamagedStealthFighter2")
{
	if (op == 0)
	{
		if (d.Op2_1 == 0)
		{
			d.Op2_1 = 1;
			obj_GameManager.Text[0] = "You pick up some metal scraps...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "You attempt to pick up some metal scraps...\n...but there are none.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_Crate")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			obj_GameManager.TextID.image_index = 1;
			obj_GameManager.Text[0] = "You break open the box...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "The box is empty.";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}
else if (ob == "obj_Cactus")
{
	if (op == 0)
	{
		if (d.Op1 == 0)
		{
			d.Op1 = 1;
			if (irandom_range(1, 100) <= 80)
			{
				obj_GameManager.Text[0] = "You drank some cactus juice.\nIt didn't taste very good...";
				obj_GameManager.Text[1] = "Your THIRST went up by 10!";
				obj_GameManager.P_THR += 10;
			}
			else
			{
				obj_GameManager.Text[0] = "You drank some cactus juice.\nYou feel sick...";
				obj_GameManager.Text[1] = "Your THIRST went down by 5!\nYour HEALTH went down by 10!";
				obj_GameManager.P_THR -= 5;
				obj_GameManager.P_HP -= 10;
			}
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
		else
		{
			obj_GameManager.Text[0] = "There is no more cactus juice left...";
			obj_GameManager.OptionsCursor = 0;
			obj_GameManager.Options = ["", "", "", ""];
		}
	}
}