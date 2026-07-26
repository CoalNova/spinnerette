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

scriptComputeEnd(self)

var rooms_stretch = [
	level3StretchEasy,
	level4StretchHard,
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

var rooms_speed = [
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

var rooms_jump = [
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

var rooms_debug = [
	qaSmokeAll,
]

var handle_room = room
var flag_debug = array_contains(rooms_debug, handle_room)
self.flag_stretch = flag_debug || array_contains(rooms_stretch, handle_room)
self.flag_speed = flag_debug || array_contains(rooms_speed, handle_room)
self.flag_jump = flag_debug || array_contains(rooms_jump, handle_room)
self.flag_debug = flag_debug