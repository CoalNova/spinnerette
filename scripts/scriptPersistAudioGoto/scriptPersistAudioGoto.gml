function scriptPersistAudioGoto(in_room, in_persist) {
	controlSound.audio_persist = in_persist
	room_goto(in_room)
}