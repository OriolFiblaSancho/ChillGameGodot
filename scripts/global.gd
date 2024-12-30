extends Node

var currentScene = "world"
var transition_scene = false

var player_exit_camping_posx = 1136
var player_exit_camping_posy = 185
var player_start_posx = 32
var player_start_posy = 80

var game_first_loading = true

func finish_changeScenes():
	if transition_scene == true:
		transition_scene = false
