image_angle += (1 * self.flip)

if (self.flag_stretch) {
	var worm_yscale = image_yscale
	image_yscale = self.stretch
}

if (self.flag_speed) {
	image_angle += (self.wormSpeed * self.flip) - (self.flip ? 1 : 0)
}