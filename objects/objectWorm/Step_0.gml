if (self.is_alive) {

	// Apply stretch
	var worm_stretch = self.worm_stretch
	self.image_yscale = worm_stretch
	script_compute_end(self)

	// Apply rotation
	if (is_bound) {
		self.image_angle += (self.flag_speed ? self.worm_speed * (1 / worm_stretch) : 2) * self.worm_flip
	} else {
		// Apply flight
		var worm_speed = self.worm_speed
		self.x += ((self.end_x - self.x) * (worm_speed)) * (1 / worm_stretch) * 0.05
		self.y += ((self.end_y - self.y) * (worm_speed)) * (1 / worm_stretch) * 0.05
		script_grab_node(self)
	}

	if (script_check_collision(self, objectWall)) {
		if (self.is_bound) {
			self.worm_flip *= -1;
			self.image_angle += (self.flag_speed ? self.worm_speed * (1 / worm_stretch) : 2) * self.worm_flip * 2
		} else if (self.flag_debug) {
			self.x = self.start_x
			self.y = self.start_y
			self.is_bound = true
		} else {
			script_death(self)
		}
	} else if (script_check_collision(self, objectSpike)) {
		script_death(self)
	}

	var handle_key = script_check_collision(self, objectWindKey)
	if (handle_key) {
		if (self.bound_node && self.bound_node.object_index == objectGearGoal) {
			room_goto_next()
		}
		instance_destroy(handle_key)
	}

}