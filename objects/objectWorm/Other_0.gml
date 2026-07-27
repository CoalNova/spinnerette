if (self.flag_debug) {
	self.x = self.start_x
	self.y = self.start_y
	self.is_bound = true
} else {
	script_death(self)
}