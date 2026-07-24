var camera_scale = global.camera.scale
var camera_scale_scaled = camera_scale - 0.1
if (camera_scale_scaled >= 0.3) {
	global.camera.scale = camera_scale_scaled
}