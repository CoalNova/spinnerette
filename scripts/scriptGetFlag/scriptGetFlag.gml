function room_is_debug() {
	return room == qaSmoke
}

function room_has_stretch() {
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

	return room_is_debug() || array_contains(rooms_stretch, room)
}

function room_has_speed() {
	var rooms_speed = [
		level5SpeedEasy,
		level6SpeedHard,
		level7JumpEasy,
		level8JumpHard,
		level9AllEasy,
		level10AllHard,
	]
	return room_is_debug() || array_contains(rooms_speed, room)
}

function room_has_jump() {
	var rooms_jump = [
		level7JumpEasy,
		level8JumpHard,
		level9AllEasy,
		level10AllHard,
	]
	return room_is_debug() || array_contains(rooms_jump, room)
}