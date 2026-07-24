view_enabled = true;
view_visible[0] = true;

var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

self.camera = {}
self.camera.width = 480
self.camera.height = 640
self.camera.scale = 1

var camera_width = self.camera.width
var camera_height = self.camera.height

var camera_worm_posx_offset = worm_posx - (camera_width / 2)
var camera_worm_posy_offset = worm_posy - (camera_height / 2)

view_camera[0] = camera_create_view(
	camera_worm_posx_offset,
	camera_worm_posy_offset,
	camera_width,
	camera_height,
	0,
	handle_worm,
	-1,
	-1,
	0,
	0
)