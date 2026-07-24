ui_button_hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
if (ui_button_hovering && mouse_check_button_pressed(mb_left))
{
	ui_button_clicked = true;
}

if(mouse_check_button_released(mb_left))
{
	ui_button_clicked = false;
	if(ui_button_hovering)
{
		//audio_play_sound(uiSoundTest, 0, 0, 1, undefined, 1);	
		ui_activate_button();
}
}
if(ui_button_clicked)
{
	image_index = 2
}

	else
{
		if(ui_button_hovering)
{
			image_index = 1
}

		else
{
			image_index = 0
}
}