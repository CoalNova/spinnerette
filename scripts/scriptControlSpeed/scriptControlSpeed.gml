function script_control_speed(in_worm, in_dir){
	
	var worm_speed_old = in_worm.worm_speed
	var worm_speed_min = in_worm.worm_speed_min
	var worm_speed_max = in_worm.worm_speed_max
	
	var worm_speed_adjust = in_dir == DIR.LEFT
		? (in_worm.worm_flip ? in_worm.worm_speed_acc : in_worm.worm_speed_dec)
		: (in_worm.worm_flip ? in_worm.worm_speed_dec : in_worm.worm_speed_acc)
	
	var worm_speed_new = worm_speed_old * worm_speed_adjust
	var worm_speed_gate = (worm_speed_new >= worm_speed_min) && (worm_speed_new <= worm_speed_max)
	if (worm_speed_gate) {
		self.worm_speed = worm_speed_new
	}

}