execute unless score @s ded.uin matches 1 run return run tellraw @s {text:"Use /function ded:uninstall",color:"red"}

# Stop schedules functions
schedule clear ded:internal/uin/cancel

# Clean scoreboards
scoreboard objectives remove ded.length_index
scoreboard objectives remove ded.uin

# Remove tags
tag @e remove ded.selected_entity
tag @e remove ded.executing_command

# Clear data
execute as @e[tag=ded.do_update] run function ded:unbind

# Kill entities
kill @e[tag=ded.main]

tellraw @s {text:"Datapack uninstalled, you can now safely remove the files",color:blue}
tellraw @s [{text:"Check out my other datapacks though (: ",color:"aqua"},{text:"https://yoavtc.work/minecraft",click_event:{action:"open_url",url:"https://yoavtc.work/minecraft"},underlined:true}]