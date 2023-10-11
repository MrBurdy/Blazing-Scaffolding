
teleport @s[team=red,tag=player.can_respawn] @e[type=villager,tag=respawn_villager,tag=red_villager,limit=1,sort=nearest]
teleport @s[team=blue,tag=player.can_respawn] @e[type=villager,tag=respawn_villager,tag=blue_villager,limit=1,sort=nearest]
teleport @s[team=yellow,tag=player.can_respawn] @e[type=villager,tag=respawn_villager,tag=yellow_villager,limit=1,sort=nearest]
teleport @s[team=green,tag=player.can_respawn] @e[type=villager,tag=respawn_villager,tag=green_villager,limit=1,sort=nearest]

execute if score #lobby.active data matches 1 run tp @s[tag=!player.can_respawn] 0 24 0 0 0

gamemode survival @s

tag @s remove player.is_dead