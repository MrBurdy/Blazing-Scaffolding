
execute if score TeamNumber options matches 2.. if score @s option_team_number matches 2..4 run scoreboard players operation TeamNumber options = @s option_team_number

execute if score TeamNumber options matches 2.. if score @s option_team_number matches 2..4 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The number of teams has been set to ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]
execute if score TeamNumber options matches 2.. if score @s option_team_number matches 2..4 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le nombre d'équipe a été mis sur ","color":"gray"},{"score":{"name":"TeamNumber","objective":"options"},"color":"gold"}]

#When the number of team decrease, send the players to a random team when their team no longer exists
execute if score TeamNumber options matches 2 as @a[team=yellow] run function scaffolding_rush:team/join/random
execute if score TeamNumber options matches 2..3 as @a[team=green] run function scaffolding_rush:team/join/random

function scaffolding_rush:team/killbase

scoreboard players set @s option_team_number 0
scoreboard players enable @s option_team_number

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh
function scaffolding_rush:options/refresh