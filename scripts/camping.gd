extends Node2D

func _process(delta):
	change_scene()
	
func _on_camping_to_world_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_camping_to_world_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false
		
func change_scene():
	if global.transition_scene == true:
		if global.currentScene == "camping":
			
			get_tree().change_scene_to_file("res://scenes/world.tscn")
			global.currentScene = "world"
			global.finish_changeScenes()




