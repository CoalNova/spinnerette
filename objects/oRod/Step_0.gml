image_angle = (image_angle + 1) % 360;

endpoint = {
	e_x: x + sprite_width * sin(-image_angle * (pi / 180)),
	e_y: y + sprite_height * -cos(image_angle * (pi / 180)),
};

if (instance_exists(oPellet))
{
	var pellet = instance_find(oPellet, 0);
	pellet.x = endpoint.e_x - pellet.sprite_width * 0.5;
	pellet.y = endpoint.e_y - pellet.sprite_height * 0.5;
}

if (keyboard_check_pressed(vk_space))
{
	var inst = instance_position(endpoint.e_x, endpoint.e_y, oNode);
	if (inst != noone) {
		x = inst.x;
		y = inst.y;
		}
	
}
