self.depth = -200

// esc pause r space f

var controls = [
	spritePromptEsc,
	spritePromptPause,
	spritePromptR,
	spritePromptSpace,
	spritePromptF
]

var worm = objectWorm

var flags = controlFlag

show_debug_message( array_length(controls))

if (worm.flag_speed || worm.flag_debug) {
	array_push(controls, spritePromptA, spritePromptD)
}

if (worm.flag_stretch || worm.flag_debug) {
	array_push(controls, spritePromptW, spritePromptS)
}

if (worm.flag_jump || worm.flag_debug) {
	array_push(controls, spritePromptShift)
}

show_debug_message( array_length(controls))

var icon_height = 64
var surface_height = icon_height * array_length(controls)

var handle_surface = surface_create(250, surface_height)
surface_set_target(handle_surface)


var draw_sprites = function(sprite, _index) {
    draw_sprite(sprite, 0, 0, _index * 64)
}

array_foreach(controls, draw_sprites);


//draw_sprite(spritePromptA, 0, 0, 0)

surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, 250, surface_height, false, false, 0, 0)

show_debug_message("a")
self.loaded = false