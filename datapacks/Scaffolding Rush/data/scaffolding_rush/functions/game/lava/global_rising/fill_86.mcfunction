
execute at @e[tag=fill,scores={fill=85}] run fill ~-86 ~ ~-86 ~-86 ~ ~86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~-86 ~ ~-86 ~86 ~ ~-86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~86 ~ ~86 ~-86 ~ ~86 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=85}] run fill ~86 ~ ~86 ~86 ~ ~-86 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=85}] fill 86
execute if score WBSize options matches 174.. run schedule function scaffolding_rush:game/lava/global_rising/fill_87 2t
   