if (self.flag_stretch) {
	var worm_yscale = image_yscale
	image_yscale = self.stretch
}

image_angle += (self.worm_speed * self.flip)