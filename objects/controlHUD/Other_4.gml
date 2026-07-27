var controls = [
	{sprite: spritePromptEsc, text: "Main Menu" },
	{sprite: spritePromptR, text: "Restart"},
	{sprite: spritePromptSpace, text: "Grab"},
	{sprite: spritePromptF, text: "Flip"}
]

if (room_has_speed()) {
	array_push(controls, {sprite: spritePromptA, text: "Faster"}, {sprite: spritePromptD, text: "Slower"})
}

if (room_has_stretch()) {
	array_push(controls, {sprite: spritePromptW, text: "Extend"}, {sprite: spritePromptS, text: "Retract"})
}

if (room_has_jump()) {
	array_push(controls, {sprite: spritePromptShift, text: "Jump"})
}

var icon_height = 64
var surface_height = icon_height * array_length(controls)
var surface_width = 250

var handle_surface = surface_create(surface_width, surface_height)
surface_set_target(handle_surface)

var draw_sprites = function(in_pair, in_index) {
	var icon_height = 64
	var buffer_y = in_index * icon_height
	draw_set_color(c_black)
	draw_rectangle(10, buffer_y + 18, 53, buffer_y + 45, false)
    draw_sprite(in_pair.sprite, 0, 0, buffer_y)
	var buffer_text_x = 165
	var buffer_text_y = 32 + (in_index * icon_height)
	script_shadow_text(in_pair.text, buffer_text_x, buffer_text_y)
}

array_foreach(controls, draw_sprites);
surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, surface_width, surface_height, false, false, 0, 0)

var countdown_timer = 0

switch (room) {
	case qaSmoke:
		countdown_timer = 10
		break
	case level1GrabEasy:
		countdown_timer = 20
		break
	case level2GrabHard:
		countdown_timer = 20
		break
	case level3StretchEasy:
		countdown_timer = 0
		break
	case level4StretchHard:
		countdown_timer = 0
		break
	case level5SpeedEasy:
		countdown_timer = 0
		break
	case level6SpeedHard:
		countdown_timer = 0
		break
	case level7JumpEasy:
		countdown_timer = 0
		break
	case level8JumpHard:
		countdown_timer = 0
		break
	case level9AllEasy:
		countdown_timer = 0
		break
	case level10AllHard:
		countdown_timer = 0
		break
}

self.countdown_timer = countdown_timer
self.countdown_epoch = current_time
self.countdown_freeze = 0