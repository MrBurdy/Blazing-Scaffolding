
execute store success score UseGravel options if score UseGravel options matches 0

execute if score UseGravel options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The gravel has been "},{"text":"desactivate","color":"red"}]
execute unless score UseGravel options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The gravel has been "},{"text":"activate","color":"green"}]

scoreboard players set @a opt_gravel 0
scoreboard players enable @a opt_gravel
