self.depth = -200

// esc pause r space f

var controls = [
	{sprite: spritePromptEsc, text: "Back to main menu" },
	{sprite: spritePromptPause, text: "Pause game" },
	{sprite: spritePromptR, text: "Restart"},
	{sprite: spritePromptSpace, text: "Switch gears"},
	{sprite: spritePromptF, text: "Flip direction"}
]

var worm = objectWorm

var flags = controlFlag

show_debug_message( array_length(controls))

if (worm.flag_speed || worm.flag_debug) {
	array_push(controls, {sprite: spritePromptA, text: "speed up"}, {sprite: spritePromptD, text: "slow down"})
}

if (worm.flag_stretch || worm.flag_debug) {
	array_push(controls, {sprite: spritePromptW, text: "extend"}, {sprite: spritePromptS, text: "retract"})
}

if (worm.flag_jump || worm.flag_debug) {
	array_push(controls, {sprite: spritePromptShift, text: "jump!"})
}

show_debug_message( array_length(controls))

var icon_height = 64
var surface_height = icon_height * array_length(controls)

var handle_surface = surface_create(250, surface_height)
surface_set_target(handle_surface)


var draw_sprites = function(s, _index) {
    draw_sprite(s.sprite, 0, 0, _index * 64)
	//draw_text(165, 32 + _index * 64, s.text)
	draw_text_colour(165, 32 + _index * 64, s.text, c_white, c_white, c_white, c_white, 1)
}

array_foreach(controls, draw_sprites);

surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, 250, surface_height, false, false, 0, 0)

show_debug_message("a")
self.loaded = false