
execute at @e[tag=fill,scores={fill=46}] run fill ~-47 ~ ~-47 ~-47 ~ ~47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~-47 ~ ~-47 ~47 ~ ~-47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~47 ~ ~47 ~-47 ~ ~47 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=46}] run fill ~47 ~ ~47 ~47 ~ ~-47 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=46}] fill 47
execute if score WBSize options matches 96.. run schedule function scaffolding_rush:game/lava/global_rising/fill_48 2t
   