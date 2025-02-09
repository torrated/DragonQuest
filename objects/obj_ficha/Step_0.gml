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
	}
}

x = mouse_x;
y = mouse_y;
