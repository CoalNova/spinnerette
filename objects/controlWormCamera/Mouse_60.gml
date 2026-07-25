var camera_scale = self.camera_scale
var camera_scale_scaled = camera_scale - 0.1
if (camera_scale_scaled >= self.camera_scale_min) {
	self.camera_scale = camera_scale_scaled
	self.camera_modified = 1
}