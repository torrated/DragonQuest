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

arriba = false; //false: no camino; true: camino
abajo = false;
derecha = false;
izquierda = false;

#macro HORARIO -90
#macro ANTIHORARIO +90

ficha = "";

/// @function		colocar()
/// @description	coloca una ficha en el lugar actual
function colocar()
{
	if !(colocable)
		exit;
	fija = true;
	struct_set(obj_grid.grid,posicion,[arriba,derecha,abajo,izquierda]);
}

/// @function		randomiza()
/// @description	selecciona una ficha al azar
function randomiza()
{
	ficha = fnc_dame_letra();
	sprite_index = struct_get(sprite_ficha,string(ficha));
	switch(ficha)
	{
		case "A": arriba=false;derecha=false;abajo=true;izquierda=true;break;
		case "B": arriba=false;derecha=true;abajo=true;izquierda=false;break;
		case "C": arriba=true;derecha=true;abajo=true;izquierda=true;break;
		case "D": arriba=true;derecha=false;abajo=true;izquierda=false;break;
		case "E": arriba=false;derecha=false;abajo=true;izquierda=false;break;
	}
}


/// @function		rotar(_giro)
/// @description	rota la ficha 90º en sentido horario o antihorario
/// @param {Real}  _giro  El sentido del giro. Puede ser HORARIO o ANTIHORARIO
function rotar(_giro)
{
	var _aux = true;
	switch(_giro)
	{
		case(HORARIO):	image_angle -= 90;
						_aux=arriba;arriba=izquierda;izquierda=abajo;abajo=derecha;derecha=_aux;
						break;
		case(ANTIHORARIO):	image_angle += 90; 
							_aux=arriba;arriba=derecha;derecha=abajo;abajo=izquierda;izquierda=_aux;
							break;
	}
}