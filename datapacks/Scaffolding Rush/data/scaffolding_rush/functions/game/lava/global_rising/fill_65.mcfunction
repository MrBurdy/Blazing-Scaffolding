
execute at @e[tag=fill,scores={fill=64}] run fill ~-65 ~ ~-65 ~-65 ~ ~65 minecraft:magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~-65 ~ ~-65 ~65 ~ ~-65 minecraft:magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~65 ~ ~65 ~-65 ~ ~65 minecraft:magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~65 ~ ~65 ~65 ~ ~-65 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=64}] fill 65
execute if score WBSize options matches 132.. run schedule function scaffolding_rush:game/lava/global_rising/fill_66 2t
   