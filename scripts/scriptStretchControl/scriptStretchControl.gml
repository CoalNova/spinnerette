function scriptStretchControl(in_worm, in_stretch) {
	
	var check_out = in_stretch == STRETCH.OUT
	var worm_stretch_old = in_worm.worm_stretch
	var worm_stretch_apply = check_out ? in_worm.worm_stretch_out : in_worm.worm_stretch_in
	var worm_stretch_new = worm_stretch_old * worm_stretch_apply
	var worm_stretch_gate = (worm_stretch_new >= in_worm.worm_stretch_min) && (worm_stretch_new <= in_worm.worm_stretch_max)
	
	if (in_worm.flag_stretch && worm_stretch_gate && in_worm.is_bound) {
		if (check_out) {
			in_worm.image_yscale = worm_stretch_new
			scriptComputeEnd(in_worm)
			if (scriptCheckCollision(in_worm, objectWall)) {
				in_worm.image_yscale = worm_stretch_old
				in_worm.worm_stretch = worm_stretch_old
			} else {
				in_worm.worm_stretch = worm_stretch_new
			}
		} else {
			in_worm.worm_stretch = worm_stretch_new
		}
	}

}