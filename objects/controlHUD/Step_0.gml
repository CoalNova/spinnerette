var countdown_passed = (current_time - self.countdown_epoch) / self.countdown_flatten
var countdown_current = self.countdown_time - countdown_passed

var handle_worm = objectWorm
var worm_is_alive = handle_worm.is_alive

if (worm_is_alive) {
	if (countdown_current > 0) {
		self.countdown_todraw = countdown_current
	} else if (countdown_current <= 0) {
		self.countdown_todraw = 0
		script_death(handle_worm)
	}
} else if (((current_time - self.countdown_death) / self.countdown_flatten) >= 2) {
	room_restart()
}