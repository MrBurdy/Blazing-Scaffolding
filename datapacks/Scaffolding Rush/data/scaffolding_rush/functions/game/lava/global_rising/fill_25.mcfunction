
execute at @e[tag=fill,scores={fill=24}] run fill ~-25 ~ ~-25 ~-25 ~ ~25 minecraft:magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~-25 ~ ~-25 ~25 ~ ~-25 minecraft:magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~25 ~ ~25 ~-25 ~ ~25 minecraft:magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~25 ~ ~25 ~25 ~ ~-25 minecraft:magma_block
scoreboard players set @e[tag=fill,scores={fill=24}] fill 25
execute if score WBSize options matches 52.. run schedule function scaffolding_rush:game/lava/global_rising/fill_26 2t
   