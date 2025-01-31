extends StaticBody

var highlighted = false

onready var shader = $MeshInstance.mesh.surface_get_material(0).next_pass


func _highlight(val):
  highlighted = val
  if highlighted:
    # activate interact_shader
    shader.set_shader_param("border_width", 0.02)
  else:
    # deactivate interact_shader
    shader.set_shader_param("border_width", 0.0)

func _use():
  MainGameLoop.save()

