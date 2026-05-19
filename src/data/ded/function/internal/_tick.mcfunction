# Update the values
execute as @e[tag=ded.do_update] positioned as @s run function ded:internal/update_data with entity @s data.ded
execute as @e[tag=ded.do_update_list] positioned as @s run function ded:internal/update_list_data with entity @s data.ded

# Delete if not riding any entity
execute as @e[type=text_display,tag=dbg] unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{}}} run kill @s
execute as @e[type=text_display,tag=dbg_l] unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{}}} run kill @s