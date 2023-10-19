execute as @s[tag=InGame] at @s run function scaffolding_rush:lobby/tp_to_lobby
execute as @s[tag=inTutorial] at @s run function scaffolding_rush:lobby/tp_to_lobby

gamemode adventure

execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score #admin.exist options matches 0 as @a run function scaffolding_rush:options/activate_all

scoreboard players enable @s option_admin
scoreboard players enable @s tutorial

bossbar set reset_lobby_en players @s[scores={language=0}]
bossbar set reset_lobby_fr players @a[scores={language=1}]

bossbar set reset_map_en players @s[scores={language=0}]
bossbar set reset_map_fr players @a[scores={language=1}]