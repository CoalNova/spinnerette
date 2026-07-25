self.camera_index = 0

view_enabled = true
view_visible[self.camera_index] = true

var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

self.width = window_get_width() / 2
self.height = window_get_height() / 2
self.scale = 1
self.modified = 0

var camera_width = self.width
var camera_height = self.height

var camera_worm_posx_offset = worm_posx - (camera_width / 2)
var camera_worm_posy_offset = worm_posy - (camera_height / 2)

view_camera[self.camera_index] = camera_create_view(
	camera_worm_posx_offset,
	camera_worm_posy_offset,
	camera_width,
	camera_height,
	0,
	handle_worm,
	1,
	1,
	0,
	0
)

self.camera_id = view_camera[self.camera_index]