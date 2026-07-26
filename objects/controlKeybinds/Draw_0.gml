if (!self.loaded)
{
	self.start_x = objectWorm.x
	self.start_y = objectWorm.y
	self.loaded = true
}

var camera_id = controlWormCamera.camera_id

var camera_x = camera_get_view_x(camera_id)
var camera_y = camera_get_view_y(camera_id)

var scale = controlWormCamera.camera_scale

draw_sprite_ext(self.handle_surface, 0, camera_x, camera_y, 0.5 * scale, 0.5 * scale, 0, c_white, 1)
//draw_text_ext_transformed(camera_x, camera_y, "Banana", 5, 1000, 0.7 * scale, 0.7 * scale, 0)