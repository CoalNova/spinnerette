var monitor_width = display_get_width()
var monitor_height = display_get_height()

window_set_size(monitor_width / 2, monitor_height / 2)
window_center()

surface_resize(application_surface, monitor_width, monitor_height)