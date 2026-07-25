// Stretch the worm inwards

var worm_stretch_new = self.worm_stretch - 0.1
var worm_stretch_min = self.worm_stretch_min
if (worm_stretch_new >= worm_stretch_min && self.is_bound) {
	self.worm_stretch = worm_stretch_new
}