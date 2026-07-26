self.depth = -200

var controls = [
	{sprite: spritePromptEsc, text: "Main Menu" },
	{sprite: spritePromptPause, text: "Pause" },
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


var draw_sprites = function(in_sprite, _index) {
	var icon_height = 64
    draw_sprite(in_sprite.sprite, 0, 0, _index * icon_height)
	draw_text_colour(165, 32 + _index * icon_height, in_sprite.text, c_white, c_white, c_white, c_white, 1)
}

array_foreach(controls, draw_sprites);
surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, surface_width, surface_height, false, false, 0, 0)
self.loaded = false