# Get Those Flags Preset

scoreboard players set Preset options 5

# Map
scoreboard players set #lava.period.second options 10
scoreboard players set WBSize options 40
scoreboard players set WBSize2 options 30
scoreboard players set WBSize3 options 35
scoreboard players set WBSize4 options 45
scoreboard players set WorldborderShrink options 0


scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 1
scoreboard players set #game.time.limit options 5
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 1
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 1
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 0
scoreboard players set #gameplay.instant_pillar.enabled options 0
scoreboard players set #gameplay.fast_climb.enabled options 0
scoreboard players set #gameplay.respawn.delay.second options 5
scoreboard players set #gameplay.lasting_base.enabled options 1
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set #villager.respawn.seconds options 30
scoreboard players set #villager.invulnerable options 1
scoreboard players set #villager.movable options 0

# Flags
scoreboard players set #flag.take_over options 1

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 600
scoreboard players set VolcanoTargetRate options 0

function scaffolding_rush:options/refresh

# EN
tellraw @a [{"translate":"blazing_scaffolding.get_those_flags","color":"green","bold":true},{"text":"\n\n"},{"translate":"blazing_scaffolding.get_those_flags_preset","color":"gray","bold":false},{"text":"\n---","color":"green","bold":true}]

# FR