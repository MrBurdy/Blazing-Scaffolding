
execute at @e[tag=fill,scores={fill=63}] run fill ~-64 ~ ~-64 ~-64 ~ ~64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~-64 ~ ~-64 ~64 ~ ~-64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~64 ~ ~64 ~-64 ~ ~64 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=63}] run fill ~64 ~ ~64 ~64 ~ ~-64 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=63}] fill 64
execute if score WBSize options matches 130.. run schedule function scaffolding_rush:game/lava/global_rising/fill_65 2t
   