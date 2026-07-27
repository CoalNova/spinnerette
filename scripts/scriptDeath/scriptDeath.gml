function script_death(in_worm) {
	
	if (!in_worm.is_alive) {
		return
	}
	
	in_worm.is_alive = false
	controlHUD.countdown_freeze = current_time
	global.worm_deaths += 1
	
	var worm_stretch = in_worm.worm_stretch
	
	var worm_x = in_worm.x
	var worm_y = in_worm.y

	var worm_sprite_height = in_worm.sprite_height
	var explosion_size = 32
	var explosion_length = worm_sprite_height + (explosion_size / 2)
	var worm_image_angle = in_worm.image_angle
	var depth_layer = -110

	for (var temp_scale = 0; temp_scale <= explosion_length; temp_scale += explosion_size) {
		var target_x = worm_x + (temp_scale * sin(-worm_image_angle * (pi / 180)))
		var target_y = worm_y + (temp_scale * -cos(worm_image_angle * (pi / 180)))
		instance_create_depth(target_x, target_y, depth_layer, objectExplosion)
	}

}