extends Node2D

var isHurt = false

func _ready():
	pass
	animate()

func hurt():
	isHurt = true
	animate()
	$Health.rect_size.x -= 6.2
	if($Health.rect_size.x <= 0):
		get_tree().call_group("SceneManager", "removeLife")
		$Health.rect_size.x = 35

func animate():
	if (isHurt):
		$PlayerAnimation.play("hurt")
		isHurt = false
	else:
		$PlayerAnimation.play("idle")

func _on_PlayerAnimation_animation_finished(anim_name):
	if(anim_name == "hurt"):
		$PlayerAnimation.play("idle")
