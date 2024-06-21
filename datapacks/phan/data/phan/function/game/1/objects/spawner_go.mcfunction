#repeatSpawn? do again
execute if entity @s[tag=repeatSpawn] run scoreboard players set @s age 0

#don't spawn red stardust or enemy with reduced HP if we're a repeat spawner in the practice area
scoreboard players operation #remember_assist value = #assist_enemies value
execute if score #gameState value matches 0 if entity @s[tag=repeatSpawn] run scoreboard players set #assist_enemies value 0

#assist mode on peaceful? spawn stardust here instead so player can maintain combo
execute if score #assist_enemies value matches 2 run function phan:game/1/spawning/enemy/spawn_red_stardust
execute if score #assist_enemies value matches 2 run return 0

#spawn something based on the tag we have
execute if entity @s[tag=spawnZombie] run function phan:game/1/spawning/enemy/spawn_zombie
execute if entity @s[tag=spawnZombieKnight] run function phan:game/1/spawning/enemy/spawn_zombie_knight
execute if entity @s[tag=spawnSkeleton] run function phan:game/1/spawning/enemy/spawn_skeleton
execute if entity @s[tag=spawnVindicator] run function phan:game/1/spawning/enemy/spawn_vindicator
execute if entity @s[tag=spawnBabyGhast] run function phan:game/1/spawning/enemy/spawn_baby_ghast
execute if entity @s[tag=spawnGuardian] run function phan:game/1/spawning/enemy/spawn_guardian
execute if entity @s[tag=spawnTurret] run function phan:game/1/spawning/enemy/spawn_turret
execute if entity @s[tag=spawnIronGolem] run function phan:game/1/spawning/enemy/spawn_iron_golem
execute if entity @s[tag=spawnTNTGolem] run function phan:game/1/spawning/enemy/spawn_tnt_golem
execute if entity @s[tag=spawnShulker] run function phan:game/1/spawning/enemy/spawn_shulker
execute if entity @s[tag=spawnVex] run function phan:game/1/spawning/enemy/spawn_vex
execute if entity @s[tag=spawnMine] run function phan:game/1/spawning/enemy/spawn_mine

#put assist_enemies value back where it's supposed to be if we messed with it to avoid the red_stardust function
scoreboard players operation #assist_enemies value = #remember_assist value

#don't die if we're a repeat spawner!
execute if entity @s[tag=repeatSpawn] run return 0

#we've done our job. now we die
tag @s remove spawner
scoreboard players set @s lifespan 1