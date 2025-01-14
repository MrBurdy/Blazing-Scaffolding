worldborder center 0 0

function scaffolding_rush:game/summon_markers

execute if score #game.running data matches 1 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.game_stopped","color":"gray"}]

execute if score #game.loading data matches 1 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.launching_stopped","color":"gray"}]

execute if score DevelopementMode data matches 1 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.reset_in_progress","color":"gray"}]


function scaffolding_rush:game/lava/global_rising/stop

scoreboard players set #lava.level data 2
scoreboard players set #lobby.active data 1
scoreboard players set #game.end data 0
scoreboard players set #game.running data 0
scoreboard players set #game.loading data 0
scoreboard players set #game.clear data 0
scoreboard players set #lobby.clear data 0
scoreboard players set WBAddTemp options 0
scoreboard players set Language options 0
execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

scoreboard players set @a player.item.spawn_egg.timer 0

scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0

scoreboard players reset * listener.death

team modify blue seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false

scoreboard players add #game.id data 1
scoreboard players operation @a game.id = #game.id data

tag @a remove TeamEliminated
tag @a remove player.item.have_egg
tag @a remove VillagerRecup
tag @a remove Respawning
tag @a remove flag_carry
tag @a remove flagOne
tag @a remove flagTwo
tag @a remove flagFive

effect clear @a
clear @a
tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg

effect give @a minecraft:instant_health 1 100 true

function scaffolding_rush:game/map/reset/__start__

#advancement use_item
advancement revoke @a from scaffolding_rush:use_item

scoreboard players reset @a start_game

execute as @a run function scaffolding_rush:options/disable_all
execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score #admin.exist options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @a option_admin

#Bossbar
bossbar set minecraft:filling_lava visible false
bossbar set minecraft:time_limit visible false

effect give @a minecraft:jump_boost 5 255 true

#confirmation message
execute if score DevelopementMode data matches 1 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.reset_done","color":"gray"}]

execute as @a run function scaffolding_rush:lobby/tp_to_lobby