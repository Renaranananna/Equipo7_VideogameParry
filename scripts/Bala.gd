extends Area2D

var SPEED=10
export var DAMAGE = 10
var look_vec = Vector2.ZERO
var move = Vector2.ZERO
var player = null

func _ready():
	connect("body_entered", self, "_on_body_entered")
	look_vec = player.position - global_position

func devolver():
	SPEED = -SPEED
	
func _on_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(DAMAGE)
		queue_free()
	
func _physics_process(delta):
	move = Vector2.ZERO
	move = move.move_toward(look_vec, delta)
	move = move.normalized() * SPEED
	position += move
	
	
	
	
	position+=SPEED*transform.x*delta
	