tag @e[tag=ded.executing_command] remove ded.executing_command
tag @e[tag=ded.selected_entity] remove ded.selected_entity

tag @s add ded.executing_command
tellraw @s {color:red,text:"Select an entity:"}
execute positioned as @s as @e[type=!player,distance=..3] run function ded:internal/select/list_entity with entity @s