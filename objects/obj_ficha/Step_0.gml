/// @description 

if (fija) exit;

x = 16+(32*int64((mouse_x)/32));
y = 16+(32*int64((mouse_y)/32));

if (struct_exists(obj_grid.grid,string(x)+","+string(y)))
{
	colocable = false;
	exit;
}
else
	colocable = true;

if (instance_exists(obj_controles))
{
	// genera una ficha aleatoria
	if (obj_controles.enter)
	{
		ficha = fnc_dame_letra();
		sprite_index = struct_get(tipo_ficha,ficha);
	}
	
	// rota la dicha
	if (obj_controles.rotar_horario)
		image_angle -= 90;
	if (obj_controles.rotar_antihorario)
		image_angle += 90;
	
	
	// fija la ficha en pantalla
	if ((obj_controles.click)
		&& (x >= 48 && x <= 432)
		&& (y >= 80 && y <= 368)
		)
	{
		if (instance_exists(obj_grid))
		{
			if (struct_exists(obj_grid.grid,string(x)+","+string(y)))
			{
				colocable = false;
				exit;
			}
		}
		var _ficha = instance_copy(false);
		_ficha.fija = true;
		if (instance_exists(obj_grid))
		{
			struct_set(obj_grid.grid,string(x)+","+string(y),_ficha);
		}
		
		// genera una ficha nueva
		ficha = fnc_dame_letra();
		sprite_index = struct_get(tipo_ficha,ficha);
	}
}