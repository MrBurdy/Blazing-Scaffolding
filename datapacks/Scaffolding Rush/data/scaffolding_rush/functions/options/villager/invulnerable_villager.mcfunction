
#generated option function

execute store success score #villager.invulnerable options if score #villager.invulnerable options matches 0

execute if score #villager.invulnerable options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The invincibility of the Villager has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #villager.invulnerable options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"invincible","color":"green"}]

execute if score #villager.invulnerable options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'Invincibilité du Villageois a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #villager.invulnerable options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois est ","color":"gray"},{"text":"invincible","color":"green"}]

scoreboard players set @s option_invulnerable_villager 0
scoreboard players enable @s option_invulnerable_villager

function scaffolding_rush:options/refresh