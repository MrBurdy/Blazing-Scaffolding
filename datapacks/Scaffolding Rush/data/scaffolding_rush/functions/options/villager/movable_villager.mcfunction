
#generated option function

execute store success score MovableVillager options if score MovableVillager options matches 0

execute if score MovableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score MovableVillager options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"moveable","color":"green"}]

execute if score MovableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score MovableVillager options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est","color":"gray"},{"text":"déplaçable","color":"green"}]

scoreboard players set @s opt_movable_villager 0
scoreboard players enable @s opt_movable_villager

function scaffolding_rush:options/refresh
