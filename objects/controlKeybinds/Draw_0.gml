if (!self.loaded)
{
	self.start_x = objectWorm.x
	self.start_y = objectWorm.y
	self.loaded = true
}

var camera_id = controlWormCamera.camera_id

var camera_x = camera_get_view_x(camera_id)
var camera_y = camera_get_view_y(camera_id)

var camera_scale = controlWormCamera.camera_scale
var scale_scale = 0.5
var scale_x = scale_scale * camera_scale
var scale_y = scale_scale * camera_scale

draw_sprite_ext(self.handle_surface, 0, camera_x, camera_y, scale_x, scale_y, 0, c_white, 1)