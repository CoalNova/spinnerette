var camera_id = self.camera_id

var handle_worm = objectWorm
var worm_x = handle_worm.is_bound ? handle_worm.x : handle_worm.end_x
var worm_y = handle_worm.is_bound ? handle_worm.y : handle_worm.end_y

var camera_scale = self.camera_scale
var camera_width = self.camera_width * camera_scale
var camera_height = self.camera_height * camera_scale
var camera_x = camera_get_view_x(camera_id)
var camera_y = camera_get_view_y(camera_id)
var camera_center_x = camera_x + (camera_width / 2)
var camera_center_y = camera_y + (camera_height / 2)

var camera_worm_distance_x = worm_x - camera_center_x
var camera_worm_distance_y = worm_y - camera_center_y

var distance_max = 300

var distance_x = min(abs(camera_worm_distance_x), distance_max)
var distance_y = min(abs(camera_worm_distance_y), distance_max)

var distance_percent_x = distance_x / distance_max
var distance_percent_y = distance_y / distance_max

var speed_max = 20

var speed_x = lerp(0, speed_max, distance_percent_x)
var speed_y = lerp(0, speed_max, distance_percent_y)

var camera_x_new = camera_x + (sign(camera_worm_distance_x) * speed_x)
var camera_y_new = camera_y + (sign(camera_worm_distance_y) * speed_y)

camera_set_view_pos(camera_id, camera_x_new, camera_y_new)