extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$npc1/AnimationPlayer.play("idle")
	
	if global.game_first_loading == true:
		$player.position.x = global.player_start_posx
		$player.position.y = global.player_start_posy
	else:
		$player.position.x = global.player_exit_camping_posx
		$player.position.y = global.player_exit_camping_posy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()
	


func _on_camping_trans_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_camping_trans_point_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false
		
func change_scene():
	if global.transition_scene == true:
		if global.currentScene == "world":
			get_tree().change_scene_to_file("res://scenes/camping.tscn")
			global.currentScene = "camping"
			global.game_first_loading = false
			global.finish_changeScenes()
