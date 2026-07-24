var camera_id = view_camera[0]
var handle_worm = objectWorm
var worm_posx = handle_worm.x
var worm_posy = handle_worm.y

var camera_width = self.width
var camera_height = self.height
var camera_x = camera_get_view_x(camera_id);
var camera_y = camera_get_view_y(camera_id);

var camera_worm_posx_offset = worm_posx - (camera_width / 2)
var camera_worm_posy_offset = worm_posy - (camera_height / 2)

var maxDistance = 300

var distance_x = min(abs(camera_worm_posx_offset - camera_x), maxDistance)
var distance_y = min(abs(camera_worm_posy_offset - camera_y), maxDistance)

var distance_percent_x = distance_x / maxDistance
var distance_percent_y = distance_y / maxDistance

var maxSpeed = 10

var speed_x = lerp(0, maxSpeed, distance_percent_x)
var speed_y = lerp(0, maxSpeed, distance_percent_y)

camera_set_view_speed(camera_id, speed_x, speed_y)