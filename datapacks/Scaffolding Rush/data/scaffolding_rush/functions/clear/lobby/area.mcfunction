


execute at @e[type=marker,name="ScR_ClearLobby",limit=1] run fill ~-90 ~ ~-90 ~90 ~ ~90 air replace #scaffolding_rush:clear_lobby
execute at @e[type=marker,name="ScR_ClearLobby",limit=1] run fill ~-90 ~-1 ~-90 ~90 ~-1 ~90 air replace #scaffolding_rush:clear_lobby

execute as @e[type=marker,name="ScR_ClearLobby",limit=1] at @s run teleport @s ~ ~-2 ~
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] store result score @s pos.y run data get entity @s Pos[1]

scoreboard players operation RESET_LOBBY data = @e[type=marker,name="ScR_ClearLobby",limit=1] pos.y
scoreboard players operation RESET_LOBBY data *= -1 const
scoreboard players operation RESET_LOBBY data += 256 const
execute store result bossbar reset_lobby_en value run scoreboard players get RESET_LOBBY data
execute store result bossbar reset_lobby_fr value run scoreboard players get RESET_LOBBY data

#execute unless score @s pos.y matches 2 at @s run function scaffolding_rush:clear/lobby/area
execute unless score @e[type=marker,name="ScR_ClearLobby",limit=1] pos.y matches ..1 run schedule function scaffolding_rush:clear/lobby/area 1t
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] if score @s pos.y matches ..1 at @s run function scaffolding_rush:clear/lobby/finish
