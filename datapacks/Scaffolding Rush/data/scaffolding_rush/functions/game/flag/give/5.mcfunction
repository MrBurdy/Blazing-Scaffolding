
clear @s minecraft:red_banner

item replace entity @s weapon.offhand with minecraft:light_blue_banner{BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:mr,Color:3},{Pattern:ts,Color:0},{Pattern:drs,Color:0},{Pattern:bo,Color:3}]}}
function scaffolding_rush:game/flag/give/head/5

item replace entity @s armor.head with minecraft:light_blue_banner{BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:mr,Color:3},{Pattern:ts,Color:0},{Pattern:drs,Color:0},{Pattern:bo,Color:3}]}}

title @s times 0 20 20
title @s title {"text":""}
title @s subtitle {"translate":"blazing_scaffolding.bring_it_back_to_your_villager","color":"aqua"}