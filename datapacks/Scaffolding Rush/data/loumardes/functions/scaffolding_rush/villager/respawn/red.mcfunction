tellraw @a[team=red] ["",{"text":"[SR] ","color":"gold"},{"text":"Your villager has died, you will get a new one in "},{"score":{"name":"VillagerRespawn","objective":"options"}},{"text":" seconds"}]
scoreboard players operation RedVillagerRespawn global = VillagerRespawnTics global
execute if score VillagerRespawn options matches 3 run give @a[team=red] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Your villager is dead","color":"red"}'}} 3
execute if score VillagerRespawn options matches 5 run give @a[team=red] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Your villager is dead","color":"red"}'}} 5
execute if score VillagerRespawn options matches 10 run give @a[team=red] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Your villager is dead","color":"red"}'}} 10
execute if score VillagerRespawn options matches 20 run give @a[team=red] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Your villager is dead","color":"red"}'}} 20
execute if score VillagerRespawn options matches 30 run give @a[team=red] minecraft:ghast_spawn_egg{CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Your villager is dead","color":"red"}'}} 30
execute as @a[team=red] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_counter 1s
