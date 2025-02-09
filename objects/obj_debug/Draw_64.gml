/// @description 

with (obj_controles)
{
	if (enter)
		draw_text(0,0,"ENTER");
	if (click)
		draw_text(0,20,"CLICK");
}

if (keyboard_check_pressed(ord("P")))
	with (obj_ficha)
	{
		image_index += 1;
	}