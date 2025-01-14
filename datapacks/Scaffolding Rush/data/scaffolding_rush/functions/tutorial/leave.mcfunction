
execute unless entity @e[type=marker,tag=TutorialCellClear,limit=1] run summon marker -1021.5 1 1000.5 {Tags:["TutorialCellClear"]}
execute store result entity @e[type=marker,tag=TutorialCellClear,limit=1] Pos[2] double 1 run scoreboard players get @s tutorial.cell.z
execute as @e[type=marker,tag=TutorialCellClear] at @s run function scaffolding_rush:tutorial/room/clear

function scaffolding_rush:player/join/lobby

scoreboard players set @s pos.x 0
scoreboard players set @s pos.y 24
scoreboard players set @s pos.z 0

tag @s remove TutorialMessage1
tag @s remove TutorialMessage2
tag @s remove TutorialMessage3
tag @s remove TutorialMessage4
tag @s remove TutorialMessage5

tag @s remove inTutorial

scoreboard players set @s tutorial 0
scoreboard players set @s lobby 0
scoreboard players enable @s tutorial

clear @s
tag @s remove player.item.can_have_items
tag @s remove player.item.have_egg

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"translate":"blazing_scaffolding.exited_the_tutorial","color":"gray"},{"translate":"blazing_scaffolding.join","color":"green","clickEvent":{"action":"run_command","value":"/trigger tutorial"},"hoverEvent":{"action":"show_text","contents":"/trigger tutorial"}}]
