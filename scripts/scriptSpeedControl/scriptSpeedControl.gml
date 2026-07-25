function scriptSpeedControl(in_worm, delta){
	var worm_speed_old = in_worm.worm_speed
	var worm_speed_min = in_worm.worm_speed_min
	var worm_speed_max = in_worm.worm_speed_max
	var worm_speed_new = in_worm.worm_flip ? worm_speed_old * (1 - delta) : worm_speed_old * (1 + delta)
	var worm_speed_gate = (worm_speed_new >= worm_speed_min) && (worm_speed_new <= worm_speed_max)
	if (worm_speed_gate) {
		self.worm_speed = worm_speed_new
	}}