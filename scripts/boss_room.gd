extends Node2D


onready var player = $Player
onready var boss = $KinematicBody2D
# Called when the node enters the scene tree for the first time.

func enemy_die():
	pass

func _ready():
	GlobalVariables.current_level = "boss_room"
	player.connect("update_health_player",$Control,"update_health")
	boss.connect("update_health_boss",$ProgressBar,"update_health")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
