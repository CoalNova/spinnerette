self.rooms_stretch = [
	level3StretchEasy,
	level4StretchHard,
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

self.rooms_speed = [
	level5SpeedEasy,
	level6SpeedHard,
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

self.rooms_jump = [
	level7JumpEasy,
	level8JumpHard,
	level9AllEasy,
	level10AllHard,
]

self.rooms_debug = [
	qaSmokeAll,
]

var handle_room = room
var flag_debug = array_contains(rooms_debug, handle_room)
self.flag_stretch = flag_debug || array_contains(rooms_stretch, handle_room)
self.flag_speed = flag_debug || array_contains(rooms_speed, handle_room)
self.flag_jump = flag_debug || array_contains(rooms_jump, handle_room)
self.flag_debug = flag_debug

self.is_debug_level = function(r) {
	return array_contains(self.rooms_debug, r)
}

self.is_stretch_level = function(r) {
	return self.is_debug_level(r) || array_contains(self.rooms_stretch, r)
}

self.is_speed_level = function(r) {
	return self.is_debug_level(r) || array_contains(self.rooms_speed, r)
}


self.is_jump_level = function(r) {
	return self.is_debug_level(r) || array_contains(self.rooms_jump, r)
}



