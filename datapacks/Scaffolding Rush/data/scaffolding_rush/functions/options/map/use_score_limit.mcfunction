
#generated option function

execute store success score UseScoreLimit options if score UseScoreLimit options matches 0

execute if score UseScoreLimit options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The use_score_limit option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseScoreLimit options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The use_score_limit option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseScoreLimit options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option use_score_limit a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseScoreLimit options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option use_score_limit a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option.use_score_limit 0
scoreboard players enable @s option.use_score_limit

function scaffolding_rush:options/refresh
