extends Node2D

export var enemy_count = 3

#onready var camara = $Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func enemy_die():
	enemy_count -= 1
	if enemy_count <= 0 :
		$Area2D.start()

# Called when the node enters the scene tree for the first time.
func _ready():
	#camara.current = true
	GlobalVariables.current_level = "Main"
	$Area2D.next_scene = "level2"
	$Player.connect("update_health_player",$Control,"update_health")
	$Player.escena = "Main"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
