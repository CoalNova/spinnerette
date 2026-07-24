var worm_speed_new = self.flip ? self.wormSpeed + 0.2 : self.wormSpeed - 0.2
if ((worm_speed_new <= 5) && (worm_speed_new >= 0)) {
	self.wormSpeed = worm_speed_new
}