var camera_scale = self.camera_scale
var camera_scale_scaled = camera_scale - self.camera_scale_step
if (camera_scale_scaled >= self.camera_scale_min) {
	self.camera_scale = camera_scale_scaled
	self.camera_modified = 1
}