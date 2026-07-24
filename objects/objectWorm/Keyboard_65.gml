var worm_speed_old = self.wormSpeed
var worm_speed_max = self.wormSpeedMax
var worm_speed_new = self.flip ? worm_speed_old + 0.4 : worm_speed_old - 0.1
if ((worm_speed_new <= worm_speed_max) && (worm_speed_new >= 0)) {
	self.wormSpeed = worm_speed_new
} else if (worm_speed_new < 0) {
	self.flip *= -1
}