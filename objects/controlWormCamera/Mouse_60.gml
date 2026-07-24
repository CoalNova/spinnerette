var camera_scale = self.camera.scale
var camera_scale_scaled = camera_scale - 0.1
if (camera_scale_scaled >= 0.3) {
	self.camera.scale = camera_scale_scaled
}