
# 1 team left -----------------------------------------------------------------

# Count active teams
scoreboard players set RemainingTeam data 4
execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=green,tag=!TeamEliminated,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=red,tag=!TeamEliminated,limit=1] run scoreboard players remove RemainingTeam data 1
execute unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] run scoreboard players remove RemainingTeam data 1

execute unless score DevelopementMode data matches 1 if score RemainingTeam data matches ..1 run function scaffolding_rush:game/stop/end_game

# Time's up -------------------------------------------------------------------

execute if score UseTimeLimit options matches 1.. run scoreboard players remove #game.time.left timer 1
function scaffolding_rush:game/timer_bossbar
execute if score UseTimeLimit options matches 1.. if score #game.time.left timer matches 0 run function scaffolding_rush:game/stop/end_game

# Objective reached -----------------------------------------------------------

execute if score UseScoreLimit options matches 1.. if score Blue game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Green game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Red game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game
execute if score UseScoreLimit options matches 1.. if score Yellow game.score >= ScoreLimit options run function scaffolding_rush:game/stop/end_game

