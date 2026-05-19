# Key X: text.extra[X].extra[2].text
$data modify entity @n[type=text_display,tag=dbg_l] text.extra[0].extra[2].text set string entity @s $(key)[0]
execute if data entity @s {data:{ded:{length: 1}}} run return 1

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[1].extra[2].text set string entity @s $(key)[1]
execute if data entity @s {data:{ded:{length: 2}}} run return 2

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[2].extra[2].text set string entity @s $(key)[2]
execute if data entity @s {data:{ded:{length: 3}}} run return 3

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[3].extra[2].text set string entity @s $(key)[3]
execute if data entity @s {data:{ded:{length: 4}}} run return 4

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[4].extra[2].text set string entity @s $(key)[4]
execute if data entity @s {data:{ded:{length: 5}}} run return 5

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[5].extra[2].text set string entity @s $(key)[5]
execute if data entity @s {data:{ded:{length: 6}}} run return 6

$data modify entity @n[type=text_display,tag=dbg_l] text.extra[6].extra[2].text set string entity @s $(key)[6]
execute if data entity @s {data:{ded:{length: 7}}} run return 7