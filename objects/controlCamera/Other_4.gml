self.camera_index = 0

view_enabled = true
view_visible[self.camera_index] = true

var handle_worm = objectWorm
var worm_x = handle_worm.x
var worm_y = handle_worm.y

var target_width = 1920 / 2
var target_height = 1080 / 2

self.camera_width = target_width
self.camera_height = target_height
self.camera_scale = 1
self.camera_scale_min = 0.8
self.camera_scale_max = 1.8
self.camera_scale_step = 0.08
self.camera_modified = 0

var camera_width = self.camera_width
var camera_height = self.camera_height

var camera_worm_x_offset = worm_x - (camera_width / 2)
var camera_worm_y_offset = worm_y - (camera_height / 2)

view_camera[self.camera_index] = camera_create_view(
	camera_worm_x_offset,
	camera_worm_y_offset,
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

surface_resize(application_surface, target_width, target_height)