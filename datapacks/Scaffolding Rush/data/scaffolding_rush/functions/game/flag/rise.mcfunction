#recursife function used to rise the armor stand a random amount of blocks
tp @s ~ ~1 ~

scoreboard players remove @s data 1
execute unless score @s data matches ..0 at @s run function scaffolding_rush:game/flag/rise