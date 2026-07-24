var worm_speed_new = self.flip ? self.wormSpeed - 0.4 : self.wormSpeed + 0.1
if ((worm_speed_new <= 4) && (worm_speed_new >= 0)) {
	self.wormSpeed = worm_speed_new
} else if (worm_speed_new < 0) {
	self.flip *= -1
}