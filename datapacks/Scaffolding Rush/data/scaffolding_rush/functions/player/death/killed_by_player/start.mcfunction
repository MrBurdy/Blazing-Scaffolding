# Execute as & at the player
# Called by function scaffolding_rush:player/death/trigger

function scaffolding_rush:player/death/just_died

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"translate":"blazing_scaffolding.was_killed","color":"gray"}]

# Replace with a pumpkin head to have the color death message
item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":""}'},HideFlags:1,CustomModelData:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

summon armor_stand ~ ~ ~ {Tags:["player.death.killed_by_player.animation","player.death.killed_by_player.animation.new"],NoGravity:1,Small:1,Marker:1,Invisible:1}

execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=player.death.killed_by_player.animation.new,limit=1,sort=nearest] ~ ~ ~ ~ 0
gamemode spectator @s
# spectate @e[tag=player.death.killed_by_player.animation.new,limit=1,sort=nearest] @s

scoreboard players set @e[tag=player.death.killed_by_player.animation.new] player.death.animation 40
scoreboard players set @s player.death.animation 40
tag @s add player.death.killed_by_player

scoreboard players set @s listener.death 0

tag @e[tag=player.death.killed_by_player.animation.new] remove player.death.killed_by_player.animation.new
