/// @description 

if (fija) exit;


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
	if (obj_controles.click)
	{
		var _ficha = instance_copy(false);
		_ficha.fija = true;
		ficha = fnc_dame_letra();
		sprite_index = struct_get(tipo_ficha,ficha);
	}
}

x = 16+(32*int64((mouse_x)/32));
y = 16+(32*int64((mouse_y)/32));
