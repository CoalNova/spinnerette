self.camera_index = 0

view_enabled = true
view_visible[self.camera_index] = true

var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

self.camera_width = window_get_width() / 2
self.camera_height = window_get_height() / 2
self.camera_scale = 1
self.camera_scale_min = 0.8
self.camera_scale_max = 1.6
self.camera_scale_step = 0.08
self.camera_modified = 0

var camera_width = self.camera_width
var camera_height = self.camera_height

var camera_worm_posx_offset = worm_posx - (camera_width / 2)
var camera_worm_posy_offset = worm_posy - (camera_height / 2)

view_camera[self.camera_index] = camera_create_view(
	camera_worm_posx_offset,
	camera_worm_posy_offset,
	camera_width,
	camera_height,
	0,
	-1,
	-1,
	-1,
	0,
	0
)

self.camera_id = view_camera[self.camera_index]