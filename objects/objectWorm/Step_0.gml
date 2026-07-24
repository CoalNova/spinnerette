var worm_stretch = self.worm_stretch
image_yscale = self.flag_stretch ? worm_stretch : 1
image_angle += (self.flag_speed ? self.worm_speed * (1 / worm_stretch) : 1) * self.worm_flip