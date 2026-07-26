self.audio_persist = false

var rooms_main = [
	roomMainMenu,
	roomLevelSelect,
	roomSettings,
	roomCredits
]

var check_main = array_contains(rooms_main, room)

if (check_main && !audio_is_playing(soundTickTock)) {
	audio_play_sound(soundTickTock, 0, true)
} else if (!check_main) {
	audio_sound_loop_start(soundMain, 58)
	audio_sound_loop_end(soundMain, 82)
	audio_play_sound(soundMain, 0, true)
}