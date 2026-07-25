function scriptGrabNode(in_worm) {

	var handle_node = instance_position(in_worm.end_x, in_worm.end_y, objectGearBasic);

	if (handle_node != noone) {
	    in_worm.x = handle_node.x;
	    in_worm.y = handle_node.y;
		in_worm.image_angle = (in_worm.image_angle + 180) % 360;
		in_worm.worm_flip *= -1;
		in_worm.is_bound = true;
	}

}