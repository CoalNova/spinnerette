function scriptGrabNode(){

	var node = instance_position(end_x, end_y, objectGearBasic);

	if (node != noone) {
	    x = node.x;
	    y = node.y;
		image_angle = (image_angle + 180) % 360;
		self.worm_flip *= -1;
	}
}