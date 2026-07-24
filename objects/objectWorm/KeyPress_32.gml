var worm_xpos = x
var worm_ypos = y
var worm_sprite_height = sprite_height
var worm_image_angle = image_angle

var handle_endpoint = {
    xpos: worm_xpos + worm_sprite_height * sin(-worm_image_angle * (pi / 180)),
    ypos: worm_ypos + worm_sprite_height * -cos(worm_image_angle * (pi / 180)),
}

var handle_collide = instance_position(handle_endpoint.xpos, handle_endpoint.ypos, objectGearBasic)

if (handle_collide != noone) {
    x = handle_collide.x;
    y = handle_collide.y;
}