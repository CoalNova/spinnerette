function script_check_collision_single(in_worm, in_target) {
	var start_x = in_worm.x + (in_worm.end_x - in_worm.x) * 0.15;
	var start_y = in_worm.y + (in_worm.end_y - in_worm.y) * 0.15;
	return collision_line(start_x, start_y, in_worm.end_x, in_worm.end_y, in_target, true, true)

}