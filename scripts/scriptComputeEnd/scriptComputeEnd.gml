function script_compute_end(in_worm) {
	
	var worm_sprite_height = in_worm.sprite_height - 2
	var worm_image_angle = in_worm.image_angle
	
	in_worm.end_x = in_worm.x + (worm_sprite_height * sin(-worm_image_angle * (pi / 180)))
	in_worm.end_y = in_worm.y + (worm_sprite_height * -cos(worm_image_angle * (pi / 180)))
	
}