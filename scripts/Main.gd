extends Node2D

onready var camara = $Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	camara.current = true
	$Player.connect("update_health_player",$Control,"update_health")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass