execute if entity @s[type=player] run return run tellraw @s {text:"Cannot debug player data!",color:red}

# Remove data
scoreboard players reset @s ded.length_index
data remove entity @s data.ded
tag @s remove ded.do_update
execute on passengers if entity @s[type=text_display,tag=ded.main] run kill @s