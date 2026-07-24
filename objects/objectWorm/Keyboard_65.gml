var worm_speed_old = self.worm_speed
var worm_speed_min = self.worm_speed_min
var worm_speed_max = self.worm_speed_max
var worm_speed_new = self.flip ? worm_speed_old + 0.4 : worm_speed_old - 0.1
var worm_speed_gate = (worm_speed_new >= worm_speed_min) && (worm_speed_new <= worm_speed_max)
if (worm_speed_gate) {
	self.worm_speed = worm_speed_new
} else if (worm_speed_new < worm_speed_min) {
	self.flip *= -1
}