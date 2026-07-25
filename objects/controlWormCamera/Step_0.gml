var camera_id = self.camera_id
var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

var camera_scale = self.camera_scale
var camera_width = self.camera_width * camera_scale
var camera_height = self.camera_height * camera_scale
var camera_posx = camera_get_view_x(camera_id)
var camera_posy = camera_get_view_y(camera_id)
var camera_center_posx = camera_posx + (camera_width / 2)
var camera_center_posy = camera_posy + (camera_height / 2)

var camera_worm_distance_x = worm_posx - camera_center_posx
var camera_worm_distance_y = worm_posy - camera_center_posy

var distance_max = 300

var distance_x = min(abs(camera_worm_distance_x), distance_max)
var distance_y = min(abs(camera_worm_distance_y), distance_max)

var distance_percent_x = distance_x / distance_max
var distance_percent_y = distance_y / distance_max

var speed_max = 10

var speed_x = lerp(0, speed_max, distance_percent_x)
var speed_y = lerp(0, speed_max, distance_percent_y)

var camera_posx_new = camera_posx + (sign(camera_worm_distance_x) * speed_x)
var camera_posy_new = camera_posy + (sign(camera_worm_distance_y) * speed_y)

camera_set_view_pos(camera_id, camera_posx_new, camera_posy_new)