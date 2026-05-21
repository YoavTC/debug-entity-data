# List the possible entities to the player
execute if entity @s[type=player] run return run function ded:internal/select/list

# Ran after the player selects an entity (as the entity)
tag @s add ded.selected_entity
dialog show @p[tag=ded.executing_command] ded:bind