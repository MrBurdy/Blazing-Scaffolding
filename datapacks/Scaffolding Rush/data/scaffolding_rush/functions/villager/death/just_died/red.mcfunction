scoreboard players operation @a[team=red] player.item.spawn_egg.timer = #villager.respawn.tick options

execute if score #game.running data matches 1 \
        as @a[team=red] \
    run function scaffolding_rush:villager/death/just_died/notify_death