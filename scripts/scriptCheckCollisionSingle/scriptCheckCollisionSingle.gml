function script_check_collision_single(in_worm, in_target) {
	
	return collision_line(in_worm.x, in_worm.y, in_worm.end_x, in_worm.end_y, in_target, true, true)

}