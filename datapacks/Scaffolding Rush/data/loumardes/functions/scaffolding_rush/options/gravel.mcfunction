
execute store success score UseGravel options if score UseGravel options matches 0

execute if score UseGravel options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The gravel has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score UseGravel options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The gravel has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseGravel options matches 0 run clear @a minecraft:gravel
execute unless score UseGravel options matches 0 run loot give @a loot loumardes:lobby_gravel

scoreboard players set @a opt_gravel 0
scoreboard players enable @a opt_gravel

function loumardes:scaffolding_rush/options/refresh
