execute as @e[type=minecraft:interaction,tag=lobbyInteraction,nbt={interaction:{}}] run function scaffolding_rush:lobby/interaction/dispatch_on_interact
advancement revoke @s only scaffolding_rush:lobby_interact
