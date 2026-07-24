var camera_id = view_camera[0]

var camera_scale = self.scale

var camera_width = self.width
var camera_height = self.height

var camera_width_scaled = camera_width * camera_scale
var camera_height_scaled = camera_height * camera_scale

var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

var camera_worm_posx_offset = worm_posx - (camera_width_scaled / 2)
var camera_worm_posy_offset = worm_posy - (camera_height_scaled / 2)

camera_set_view_size(
	camera_id,
	camera_width_scaled,
	camera_height_scaled
)

camera_set_view_pos(
	camera_id,
	camera_worm_posx_offset,
	camera_worm_posy_offset
)