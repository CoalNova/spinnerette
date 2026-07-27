var hud_scale = 0.5

draw_sprite_ext(self.handle_surface, 0, 0, 0, hud_scale, hud_scale, 0, c_white, 1)

var handle_camera = controlCamera
var camera_width = controlCamera.camera_width
var camera_width_half = camera_width / 2

var font_size_half = font_get_size(uiFont1) / 2
var buffer_y = font_size_half + 10

script_shadow_text(self.countdown_todraw, camera_width_half, buffer_y)

var worm_deaths_string = $"Deaths: {global.worm_deaths}"
var worm_deaths_string_width = string_width(worm_deaths_string)
var buffer_x = camera_width - worm_deaths_string_width

script_shadow_text(worm_deaths_string, buffer_x, buffer_y)