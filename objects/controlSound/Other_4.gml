self.audio_persist = false
self.timer_epoch = current_time
self.pitch_proc = 2
self.pitch_min = 1
self.pitch_max = 1.25
self.pitch_death = 0.8
self.has_died = false

var rooms_main = [
	roomMainMenu,
	roomLevelSelect,
	roomSettings,
	roomCredits
]

var check_main = array_contains(rooms_main, room)
self.is_main = check_main

if (check_main && !audio_is_playing(soundTickTock)) {
	audio_play_sound(soundTickTock, 0, true)
} else if (!check_main) {
	audio_sound_pitch(soundMain, 1)
	audio_sound_loop_start(soundMain, 58)
	audio_sound_loop_end(soundMain, 82)
	audio_play_sound(soundMain, 0, true)
}