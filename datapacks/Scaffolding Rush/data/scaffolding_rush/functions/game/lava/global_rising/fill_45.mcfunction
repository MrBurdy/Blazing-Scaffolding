
execute at @e[tag=fill,scores={fill=44}] run fill ~-45 ~ ~-45 ~-45 ~ ~45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~-45 ~ ~-45 ~45 ~ ~-45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~45 ~ ~45 ~-45 ~ ~45 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=44}] run fill ~45 ~ ~45 ~45 ~ ~-45 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=44}] fill 45
execute if score WBSize options matches 92.. run schedule function scaffolding_rush:game/lava/global_rising/fill_46 2t
   