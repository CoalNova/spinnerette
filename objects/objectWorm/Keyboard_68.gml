var worm_speed_new = self.flip ? self.wormSpeed - 1 : self.wormSpeed + 1
if ((worm_speed_new <= 5) && (worm_speed_new >= 0)) {
	self.wormSpeed = worm_speed_new
}