tp @s[team=red] @e[type=villager,team=red, limit=1]
execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
tp @s[team=blue] @e[type=villager,team=blue, limit=1]
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s

tag @s remove killed


