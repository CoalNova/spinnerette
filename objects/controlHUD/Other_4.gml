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

function text_drop_shadow(_x, _y, _color, _color_shadow, _string, _h_offset, _v_offset){  
    draw_set_color(_color_shadow);
    draw_text(_x, _y, _string);
    draw_set_color(_color);
    draw_text(_x+_h_offset, _y+_v_offset, _string);
   
}

var draw_sprites = function(in_pair, in_index) {
	var icon_height = 64
    draw_sprite(in_pair.sprite, 0, 0, in_index * icon_height)
	draw_set_color(c_black)
	var buffer_x = 165
	var buffer_y = 32 + (in_index * icon_height)
	var text_offset = 3
    draw_text(buffer_x - text_offset, buffer_y - text_offset, in_pair.text)
	draw_text(buffer_x + text_offset, buffer_y - text_offset, in_pair.text)
	draw_text(buffer_x - text_offset, buffer_y + text_offset, in_pair.text)
	draw_text(buffer_x + text_offset, buffer_y + text_offset, in_pair.text)
	draw_set_color(c_white)
	draw_text(buffer_x, buffer_y, in_pair.text)
}

array_foreach(controls, draw_sprites);
surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, surface_width, surface_height, false, false, 0, 0)