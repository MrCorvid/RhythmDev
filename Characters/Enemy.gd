extends Node2D

var isHurt = false

func _physics_process(delta):
	animate()
	
func animate():
	if (isHurt):
		$EnemyAnimations.play("idle")
	else:
		$EnemyAnimations.play("idle")
