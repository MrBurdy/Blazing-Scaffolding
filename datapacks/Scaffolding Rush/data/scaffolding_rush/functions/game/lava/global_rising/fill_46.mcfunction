
execute at @e[tag=fill,scores={fill=45}] run fill ~-46 ~ ~-46 ~-46 ~ ~46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~-46 ~ ~-46 ~46 ~ ~-46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~46 ~ ~46 ~-46 ~ ~46 minecraft:magma_block replace #scaffolding_rush:lava_replace
execute at @e[tag=fill,scores={fill=45}] run fill ~46 ~ ~46 ~46 ~ ~-46 minecraft:magma_block replace #scaffolding_rush:lava_replace
scoreboard players set @e[tag=fill,scores={fill=45}] fill 46
execute if score WBSize options matches 94.. run schedule function scaffolding_rush:game/lava/global_rising/fill_47 2t
   