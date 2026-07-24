if (self.modified) {
	
	self.modified = 0
	
	var camera_id = view_camera[0]

	var camera_scale = self.scale
	var camera_width = self.width
	var camera_height = self.height

	var camera_width_scaled = camera_width * camera_scale
	var camera_height_scaled = camera_height * camera_scale
	
	var camera_xpos_old = camera_get_view_x(camera_id)
	var camera_ypos_old = camera_get_view_y(camera_id)
	var camera_width_old = camera_get_view_width(camera_id)
	var camera_height_old = camera_get_view_height(camera_id)

	var camera_xpos_offset = camera_xpos_old + ((camera_width_old / 2) - (camera_width_scaled / 2))
	var camera_ypos_offset = camera_ypos_old + ((camera_height_old / 2) - (camera_height_scaled / 2))

	camera_set_view_size(
		camera_id,
		camera_width_scaled,
		camera_height_scaled
	)

	camera_set_view_pos(
		camera_id,
		camera_xpos_offset,
		camera_ypos_offset
	)

}