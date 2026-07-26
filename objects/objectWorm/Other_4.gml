self.depth = -100

enum DIR {
	LEFT,
	RIGHT
}

enum STRETCH {
	OUT,
	IN
}

self.worm_stretch = 1
self.worm_stretch_out = 1.05
self.worm_stretch_in = 0.96
self.worm_stretch_min = 1
self.worm_stretch_max = 3
self.worm_flip = 1
self.worm_speed = 2
self.worm_speed_acc = 1.10
self.worm_speed_dec = 0.80
self.worm_speed_min = 1
self.worm_speed_max = 4
self.is_bound = true

self.start_x = self.x
self.start_y = self.y

script_compute_end(self)

self.flag_stretch = room_has_stretch()
self.flag_speed = room_has_speed()
self.flag_jump = room_has_jump()
self.flag_debug = room_is_debug()