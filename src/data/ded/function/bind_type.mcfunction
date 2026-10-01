$execute unless entity @n[type=$(type),distance=..20] run return run tellraw @s {text:"Entity of type $(type) was not found!",color:red}

$data modify storage ded:bind type set value $(type)
dialog show @s ded:bind_type