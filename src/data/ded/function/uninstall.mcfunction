execute if score @s ded.uin matches 1 run return run function ded:internal/uin/uin

tellraw @s {text:"Are you sure you want to uninstall? This action can't be undone!",color:yellow}
tellraw @s {text:"Run this command again in the next 10s to uninstall",color:"red"}

scoreboard players set @s ded.uin 1
schedule function ded:internal/uin/cancel 10s