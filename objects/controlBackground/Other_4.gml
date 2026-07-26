self.depth = 100

var real_max = 3.402823 * (10^38)

random_set_seed(real_max, true)

var sprite_size = 64

var monitor_width = display_get_width()
var monitor_height = display_get_height()

self.monitor_width = monitor_width
self.monitor_height = monitor_height

var room_maxx = room_width + (monitor_width * 2)
var room_maxy = room_height + (monitor_height * 2)

var handle_surface = surface_create(room_maxx, room_maxy)
surface_set_target(handle_surface)

for (var temp_posy = 0; temp_posy <= room_maxx; temp_posy += sprite_size) {
	for (var temp_posx = 0; temp_posx <= room_maxy; temp_posx += sprite_size) {
		var sprite_coin_flip = irandom_range(0, 1) == 0 ? spriteWallSet1 : spriteWallSet2
		var sprite_choose = floor(random(sprite_get_number(sprite_coin_flip)))
		draw_sprite(sprite_coin_flip, sprite_choose, temp_posx, temp_posy)
	}
}

surface_reset_target()

self.handle_surface = sprite_create_from_surface(handle_surface, 0, 0, room_maxx, room_maxy, false, false, 0, 0)