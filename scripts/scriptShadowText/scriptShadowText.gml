function script_shadow_text(in_text, in_x, in_y) {
	var text_offset = 2
	draw_set_colour(c_black)
    draw_text(in_x - text_offset, in_y - text_offset, in_text)
	draw_text(in_x + text_offset, in_y - text_offset, in_text)
	draw_text(in_x - text_offset, in_y + text_offset, in_text)
	draw_text(in_x + text_offset, in_y + text_offset, in_text)
	draw_set_color(c_white)
	draw_text(in_x, in_y, in_text)
}