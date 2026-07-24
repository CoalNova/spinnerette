image_angle = (image_angle + 1) % 360;
if (instance_exists(oPellet))
{
	var pellet = instance_find(oPellet, 0);
	pellet.x = x + sprite_width * sin(-image_angle * (pi / 180)) - pellet.sprite_width * 0.5;
	pellet.y = y + sprite_height * -cos(image_angle * (pi / 180)) - pellet.sprite_height * 0.5;

}
show_debug_message(image_angle);

