// Stretch the worm outwards

var worm_stretch_new = self.worm_stretch + 0.1
var worm_stretch_max = self.worm_stretch_max
if (worm_stretch_new < worm_stretch_max && self.is_bound) {
	self.worm_stretch = worm_stretch_new
}