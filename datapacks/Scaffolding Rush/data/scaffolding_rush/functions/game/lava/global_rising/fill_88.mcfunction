
execute at @e[tag=fill,scores={fill=87}] run fill ~-88 ~ ~-88 ~-88 ~ ~88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~-88 ~ ~-88 ~88 ~ ~-88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~88 ~ ~88 ~-88 ~ ~88 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=87}] run fill ~88 ~ ~88 ~88 ~ ~-88 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=87}] fill 88
execute if score WBSize options matches 178.. run schedule function scaffolding_rush:game/lava/global_rising/fill_89 2t
   