function scriptCheckCollisionWall(in_worm){
	if (collision_line(in_worm.x, in_worm.y, in_worm.end_x, in_worm.end_y, objectWall, true, true) != noone){
		if (in_worm.is_bound) {
			in_worm.worm_flip *= -1;
		} else {
			if (self.flag_debug) {
				self.x = self.start_x
				self.y = self.start_y
				self.is_bound = true
			}
		}
	}
}