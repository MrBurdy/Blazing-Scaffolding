
execute at @e[tag=fill,scores={fill=13}] run fill ~-14 ~ ~-14 ~-14 ~ ~14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~-14 ~ ~-14 ~14 ~ ~-14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~14 ~ ~14 ~-14 ~ ~14 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=13}] run fill ~14 ~ ~14 ~14 ~ ~-14 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=13}] fill 14
execute if score WBSize options matches 30.. run schedule function scaffolding_rush:game/lava/global_rising/fill_15 2t
   