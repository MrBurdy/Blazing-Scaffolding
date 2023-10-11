
# Actualize global data -------------------------------------------------------

execute as @e store result score @s pos.x run data get entity @s Pos[0]
execute as @e store result score @s pos.y run data get entity @s Pos[1]
execute as @e store result score @s pos.z run data get entity @s Pos[2]

# Update times ----------------------------------------------------------------

scoreboard players remove @a player.pick_villager_cooldown 1

# timer for animation
scoreboard players add tick200 data 1
execute if score tick200 data matches 200.. run scoreboard players set tick200 data 1

# Game management -------------------------------------------------------------

# Game management (when a game is started)
execute as @a[scores={start_game=1..}] run function scaffolding_rush:game/start/pre_start_checks

execute if entity @a[scores={reset=1..}] run function scaffolding_rush:reset

# ORDER IS IMPORTANT!
execute if score #lobby.active data matches 1 run function scaffolding_rush:lobby/__main__
execute if score #game.running data matches 1 run function scaffolding_rush:game/__main__
function scaffolding_rush:tutorial/__main__
function scaffolding_rush:options/__main__
function scaffolding_rush:mechanics/__main__
function scaffolding_rush:villager/__main__
function scaffolding_rush:player/__main__

# Admin mode
execute unless entity @a[tag=admin] if score #admin.exist options matches 1 run function scaffolding_rush:options/admin

scoreboard players reset @a reset
execute if score #admin.exist options matches 1 as @a[tag=admin] run scoreboard players enable @s reset
execute if score #admin.exist options matches 0 run scoreboard players enable @a reset

# Others generic behvaiors ----------------------------------------------------

kill @e[type=item]
effect give @a minecraft:saturation infinite 1 true
advancement revoke @a everything

# Cosmetics -------------------------------------------------------------------

execute as @a[scores={player.win_streak=1..2}] at @s run particle smoke ~ ~0.1 ~ 0.3 0 0.3 0 1 normal
execute as @a[scores={player.win_streak=3..}] at @s run particle flame ~ ~0.1 ~ 0.3 0 0.3 0 1 normal
execute as @a[scores={player.win_streak=5..9}] at @s run particle smoke ~ ~0.1 ~ 0.3 0 0.3 0.01 1 normal
execute as @a[scores={player.win_streak=10..}] at @s run particle flame ~ ~0.2 ~ 0.5 0.2 0.5 0 5 normal
execute as @a[scores={player.win_streak=10..19}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.1 ~ 0.3 0 0.3 0.01 1 normal
execute as @a[scores={player.win_streak=20..}] at @s run particle large_smoke ~ ~0.2 ~ 0.5 0.2 0.5 0.01 1 normal
execute as @a[scores={player.win_streak=20..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.1 ~ 0.3 0 0.3 0.05 1 normal

execute at @a[scores={player.kill_streak=3..4}] run particle flame ~ ~1 ~ 0 0.5 0 0 1 normal
execute at @a[scores={player.kill_streak=5..}] run particle lava ~ ~ ~ 0 0 0 0 1 normal
execute as @a run scoreboard players operation @s player.kill_streak += @s player.killed_villager
scoreboard players set @a player.killed_villager 0