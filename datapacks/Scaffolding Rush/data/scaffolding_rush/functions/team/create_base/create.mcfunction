
# Place a volcano in the middle and rise one layer of lava
place template scaffolding_rush:volcano 994 2 994
execute as @e[type=marker,name="lava.level"] at @s run function scaffolding_rush:game/lava/rise_globally

execute if entity @a[team=blue] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=green] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=red] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=yellow] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

# Spread in borders (1 block away from it)
execute positioned 0 0 0 if score WBSize options matches 15..19 run spreadplayers 0 0 5 6 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 20..34 run spreadplayers 0 0 7 9 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 35..79 run spreadplayers 0 0 14 16 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 80..119 run spreadplayers 0 0 35 39 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 120..165 run spreadplayers 0 0 55 59 false @e[type=marker,tag=spread]
tag @e[type=marker,tag=spread] remove spread

# Sync with lobby position if villager exist
execute at @e[tag=respawn_villager,tag=red_villager] run tp @e[type=marker,tag=baseTeam,name="Red"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=blue_villager] run tp @e[type=marker,tag=baseTeam,name="Blue"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=green_villager] run tp @e[type=marker,tag=baseTeam,name="Green"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=yellow_villager] run tp @e[type=marker,tag=baseTeam,name="Yellow"] ~ 3 ~

execute as @e[tag=baseTeam] at @s run tp @s ~1000 5 ~1000

execute as @e[tag=baseTeam] at @s run function scaffolding_rush:team/create_base/load_structure

execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Blue"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/blue
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Green"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/green
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Red"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/red
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Yellow"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/yellow

team join blue @e[type=villager,tag=new_villager,tag=blue_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager]
tag @e[type=villager,tag=new_villager] remove new_villager

function scaffolding_rush:team/create_base/armor

effect give @a minecraft:jump_boost infinite 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 5 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 5 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 5 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 5 ~
tag @a[team=!spectator] add InGame

execute as @e[type=villager,tag=LobbyBase] run function utils:clean_kill

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit
