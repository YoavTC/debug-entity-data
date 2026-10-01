# Update the values
execute as @e[type=text_display,tag=ded.debug_type] positioned as @s if loaded ~ ~ ~ run function ded:internal_type/tick2 with entity @s data