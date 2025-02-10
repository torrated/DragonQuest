/// @description 

if (keyboard_check_pressed(ord("P")))
	with (obj_ficha)
	{
		image_index += 1;
	}

draw_text(0,0,"#fichas:"+string(instance_number(obj_ficha)));

with(obj_players.ficha)
{
	//draw_text(0,15,"colocable:"+string(colocable));

	//if (struct_exists(obj_grid.grid,string(x)+","+string(y+32)))
	//{
	//	show_message(obj_grid.grid[$ string(x)+","+string(y+32)])
	//}
}