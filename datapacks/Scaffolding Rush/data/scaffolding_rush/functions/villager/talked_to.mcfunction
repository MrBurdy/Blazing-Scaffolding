# When player click on villager

# In game
execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if score $villager.red respawn.timer matches ..0 \
        as @e[type=villager,tag=red_villager] \
        if entity @a[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/red=true}] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if score $villager.blue respawn.timer matches ..0 \
        as @e[type=villager,tag=blue_villager] \
        if entity @a[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/blue=true}] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if score $villager.green respawn.timer matches ..0 \
        as @e[type=villager,tag=green_villager] \
        if entity @a[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/green=true}] \
    run function utils:clean_kill

execute unless score #game.loading data matches 1 \
        unless score #villager.movable options matches 0 \
        if score $villager.yellow respawn.timer matches ..0 \
        as @e[type=villager,tag=yellow_villager] \
        if entity @a[tag=!player.is_dead,advancements={scaffolding_rush:grab_villager/yellow=true}] \
    run function utils:clean_kill

execute if score #villager.movable options matches 1 run tag @s add player.item.can_have_spawn_egg

#inform the player if the option is disabled
execute if score #villager.movable options matches 0 run tellraw @s ["",{"text":"/!\\ You can't move the villager\n/!\\ That option is ","color":"gold"},{"text":"disabled","color":"red"},{"text":" !","color":"gold"}]
