// Apply stretch

var worm_stretch = self.worm_stretch
self.image_yscale = self.flag_stretch ? worm_stretch : 1

// Apply rotation
if (is_bound) {
	self.image_angle += (self.flag_speed ? self.worm_speed * (1 / worm_stretch) : 1) * self.worm_flip
} else {
	// Apply flight
	var worm_speed = self.worm_speed
	self.x += ((self.end_x - self.x) * (worm_speed)) * (1 / worm_stretch) * 0.05
	self.y += ((self.end_y - self.y) * (worm_speed)) * (1 / worm_stretch) * 0.05
	scriptGrabNode(self)
}

scriptComputeEnd(self)

if (scriptCheckCollision(self, objectWall)) {
	if (self.is_bound) {
			self.worm_flip *= -1;
		} else {
			if (self.flag_debug) {
				self.x = self.start_x
				self.y = self.start_y
				self.is_bound = true
			}
	}
}

var handle_key = scriptCheckCollision(self, objectWindKey)
if (handle_key) {
	instance_destroy(handle_key)
}
