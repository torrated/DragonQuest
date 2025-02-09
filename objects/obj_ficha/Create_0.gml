/// @description 

sprite_ficha = {
	 A: spr_A ,
	 B: spr_B ,
	 C: spr_C ,
	 D: spr_D ,
	 E: spr_E 
};

fija = false;
colocable = true;
posicion = ""; // x,y

arriba = false;
abajo = false;
derecha = false;
izquierda = false;

#macro HORARIO -90
#macro ANTIHORARIO +90

ficha = "";

/// @function		colocar()
/// @description	coloca una ficha en el lugar actual
/// @return {Bool}
function colocar()
{
	if (
		(x >= 48 && x <= 432	&& y >= 80 && y <= 368)
		&& !(struct_exists(obj_grid.grid,posicion))
		)
	{
		colocable = true;
		fija = true;
		struct_set(obj_grid.grid,posicion,self);
	}
	else
	{
		colocable = false;
	}
	
	return colocable;
}

/// @function		randomiza()
/// @description	selecciona una ficha al azar
function randomiza()
{
	ficha = fnc_dame_letra();
	sprite_index = struct_get(sprite_ficha,string(ficha));
}


/// @function		rotar(_giro)
/// @description	rota la ficha 90º en sentido horario o antihorario
/// @param {Real}  _giro  El sentido del giro. Puede ser HORARIO o ANTIHORARIO
function rotar(_giro)
{
	switch(_giro)
	{
		case(HORARIO): image_angle -= 90; break;
		case(ANTIHORARIO): image_angle += 90; break;
	}
}
