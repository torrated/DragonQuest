/// @description 

if (instance_exists(obj_controles) && obj_controles.enter && ficha == noone)
{
	ficha = instance_create_layer(mouse_x,mouse_y,"Instances",obj_ficha);
	ficha.randomiza();
}

if (instance_exists(obj_controles) && obj_controles.rotar_horario)
	ficha.rotar(HORARIO);
if (instance_exists(obj_controles) && obj_controles.rotar_antihorario)
	ficha.rotar(ANTIHORARIO);

if (instance_exists(obj_controles) && obj_controles.click && ficha <> noone && ficha.colocable)
{
	ficha.colocar();
	ficha = noone;
}