execute if entity @s[type=player] run return run tellraw @s {text:"Cannot debug player data!",color:red}

tag @s add ded.do_update_list

# Calculate length of list
## Count the elements & store in scoreboard
$execute store result score @s ded.length_index run data get entity @s $(key)
## Store element count in data
execute store result entity @s data.ded.length int 1 run scoreboard players get @s ded.length_index

# Create debug text entity
$summon text_display ~ ~ ~ {alignment:"left",billboard:"center",Tags:[ded.main,_dbg],data:{ded:{paired:""}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},text:{"color":"red","text":"$(key)"}}

# Initialize debug text entity
ride @n[type=text_display,tag=_dbg] mount @s
execute on passengers run tag @s add dbg_l
function ded:internal/init_list
execute on passengers run tag @s remove _dbg