/// @description 

enter = keyboard_check_pressed(vk_enter);

click = mouse_check_button_pressed(mb_left);

rotar_horario = keyboard_check_pressed(ord("E"));
rotar_antihorario = keyboard_check_pressed(ord("Q"));

eje_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
eje_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));