self.stretch = 1
self.flip = 1
self.worm_speed = 2
self.worm_speed_min = 1
self.worm_speed_max = 6

var rooms_stretch = [
	level3StretchEasy,
	level4StretchHard,
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard
]

var rooms_speed = [
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard
]

var rooms_jump = [
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard
]

self.flag_stretch = (room == qaSmokeAll) || ds_list_find_index(rooms_stretch, room)
self.flag_speed = (room == qaSmokeAll) || ds_list_find_index(rooms_speed, room)
self.flag_jump = (room == qaSmokeAll) || ds_list_find_index(rooms_jump, room)