var worm_stretch = self.worm_stretch
image_yscale = self.flag_stretch ? worm_stretch : 1
if(is_bound)
	image_angle += (self.flag_speed ? self.worm_speed * (1 / worm_stretch) : 1) * self.worm_flip
else
{
	x += (end_x - x) * self.worm_speed * 0.1
	y += (end_y - y) * self.worm_speed * 0.1
	scriptGrabNode()
}

// End position of worm
end_x = x + sprite_height * sin(-image_angle * (pi / 180));
end_y = y + sprite_height * -cos(image_angle * (pi / 180));
