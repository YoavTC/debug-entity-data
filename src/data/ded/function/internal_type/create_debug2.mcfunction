summon text_display ~ ~ ~ {billboard:"center",Tags:[temp],Passengers:[{id:"interaction",Tags:[ded.debug_interaction_type]}]}
$data modify entity @n[type=text_display,tag=temp] data.type set value $(type)
$data modify entity @n[type=text_display,tag=temp] data.path set value $(key)
data modify entity @n[type=text_display,tag=temp] Tags set value [ded.debug_type]