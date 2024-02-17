extends Area2D

@onready var mapInfo = get_node("/root/MainNode")
@onready var menu = $PopupMenu
var inputs = {
	"right": Vector2.RIGHT,
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN,
}


func _ready():
	pass

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
				move(dir)
		
func move(dir):
	position += inputs[dir] * mapInfo.tileSize


func _on_popup_menu_id_pressed(id):
	if id == 0:
		print("attack")
		menu.hide()
