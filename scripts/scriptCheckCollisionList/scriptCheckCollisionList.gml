function script_check_collision_list(in_worm, in_target) {
	
	var handle_list = ds_list_create()
	var collide_amount = collision_line_list(in_worm.x, in_worm.y, in_worm.end_x, in_worm.end_y, in_target, true, true, handle_list, true)
	return handle_list

}