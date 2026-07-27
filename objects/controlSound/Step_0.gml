if (!self.is_main) {
	var handle_worm = objectWorm
	if (handle_worm.is_alive) {
		var seconds_passed = floor((current_time - self.timer_epoch) / 1000)
		if (seconds_passed >= self.pitch_proc) {
			self.timer_epoch = current_time
			var handle_hud = controlHUD
			var countdown_time = handle_hud.countdown_time
			var countdown_todraw = handle_hud.countdown_todraw
			var time_passed = countdown_time - countdown_todraw
			var pitch_min = self.pitch_min
			var time_percent = (1 / countdown_time) * time_passed
			var pitch_percent = (self.pitch_max - pitch_min) * time_percent
			var pitch_set = pitch_percent + pitch_min
			audio_sound_pitch(soundMain, pitch_set)
		}
	} else if (!self.has_died) {
		self.has_died = true
		audio_sound_pitch(soundMain, self.pitch_death)
	}
}