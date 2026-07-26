function scriptCheckCollision(in_worm, in_target) {
	
	var handle_collide = collision_line(in_worm.x, in_worm.y, in_worm.end_x, in_worm.end_y, in_target, true, true)
	if (handle_collide != noone) {
		return handle_collide
	}
	return noone

}