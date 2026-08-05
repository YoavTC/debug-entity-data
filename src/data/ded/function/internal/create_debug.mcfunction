# Dialogue commands always execute as player, so reexetute as selected entity
$execute if entity @s[type=player] run return run execute as @n[tag=ded.selected_entity] run function ded:internal/create_debug {key:$(key)}

# Clean up the temp tags
tag @s remove ded.selected_entity
tag @p[tag=ded.executing_command] remove ded.executing_command

# Summon & bind
summon text_display ~ ~ ~ {billboard:"center",Tags:[temp],Passengers:[{id:"interaction",Tags:[ded.debug_interaction]}]}
data modify entity @n[type=text_display,tag=temp] data.target set from entity @s UUID
$data modify entity @n[type=text_display,tag=temp] data.path set value $(key)
data modify entity @n[type=text_display,tag=temp] Tags set value [ded.debug]