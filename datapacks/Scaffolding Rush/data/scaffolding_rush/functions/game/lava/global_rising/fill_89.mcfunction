
execute at @e[tag=fill,scores={fill=88}] run fill ~-89 ~ ~-89 ~-89 ~ ~89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~-89 ~ ~-89 ~89 ~ ~-89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~89 ~ ~89 ~-89 ~ ~89 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=88}] run fill ~89 ~ ~89 ~89 ~ ~-89 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=88}] fill 89
execute if score WBSize options matches 180.. run schedule function scaffolding_rush:game/lava/global_rising/fill_90 2t
   