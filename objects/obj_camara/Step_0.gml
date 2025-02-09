/// @description 

if (instance_exists(obj_controles))
{
	var _camera = view_camera[0];
	var _nueva_x = clamp(camera_get_view_x(_camera)+obj_controles.eje_x,0,1024);
	var _nueva_y = clamp(camera_get_view_y(_camera)+obj_controles.eje_y,0,768);
	camera_set_view_pos(_camera,_nueva_x,_nueva_y);
}