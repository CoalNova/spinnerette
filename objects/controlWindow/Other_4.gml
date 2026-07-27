var monitor_width = display_get_width()
var monitor_height = display_get_height()

var monitor_width_half = monitor_width / 2
var monitor_height_half = monitor_height / 2

window_set_size(monitor_width_half, monitor_height_half)
window_center()

surface_resize(application_surface, room_width, room_height)

global.worm_deaths = 0

draw_set_font(uiFont1)