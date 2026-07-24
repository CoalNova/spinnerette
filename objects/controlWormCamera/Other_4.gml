view_enabled = true;
view_visible[0] = true;

var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

self.width = 640
self.height = 480
self.scale = 1

var camera_width = self.width
var camera_height = self.height

var camera_worm_posx_offset = worm_posx - (camera_width / 2)
var camera_worm_posy_offset = worm_posy - (camera_height / 2)

view_camera[0] = camera_create_view(
	camera_worm_posx_offset,
	camera_worm_posy_offset,
	camera_width,
	camera_height,
	0,
	handle_worm,
	0.5,
	0.5,
	infinity,
	infinity
)