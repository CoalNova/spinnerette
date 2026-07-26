self.audio_persist = false

if (room == mainMenu && !audio_is_playing(TickTockBase)) {
	audio_play_sound(TickTockBase, 100, true)
}