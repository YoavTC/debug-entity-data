execute if entity @s[type=player] run return run tellraw @s {text:"Cannot debug player data!",color:red}

# Set the key data reference
$data modify entity @s data.ded.key set value $(key)

# Check if list
$execute if data entity @s $(key)[0] run return run function ded:internal/debug_list {key:$(key)}

tag @s add ded.do_update

# Create debug text entity
$summon text_display ~ ~ ~ {billboard:"center",Tags:[ded.main,_dbg],text:[{text:"$(key): ",color:"red"},{text:"null",color:"yellow"}],data:{ded:{paired:""}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}

# Initialize debug text entity
ride @n[type=text_display,tag=_dbg] mount @s
execute on passengers run tag @s add dbg
execute on passengers run tag @s remove _dbg