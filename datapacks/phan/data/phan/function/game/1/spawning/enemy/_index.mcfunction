#just straight up spawn the baddie. no proximity detection here

#assist mode on peaceful? spawn stardust here instead so player can maintain combo
execute if score #assist_enemies value matches 2 run function phan:game/1/spawning/spawn_red_stardust
execute if score #assist_enemies value matches 2 run return 0

#editArg2 = enemy ID
execute unless score @s editArg2 matches 2.. run function phan:game/1/spawning/enemy/spawn_zombie
execute if score @s editArg2 matches 2 run function phan:game/1/spawning/enemy/spawn_zombie_knight
execute if score @s editArg2 matches 3 run function phan:game/1/spawning/enemy/spawn_skeleton
execute if score @s editArg2 matches 4 run function phan:game/1/spawning/enemy/spawn_vindicator
execute if score @s editArg2 matches 5 run function phan:game/1/spawning/enemy/spawn_baby_ghast
execute if score @s editArg2 matches 6 run function phan:game/1/spawning/enemy/spawn_guardian
execute if score @s editArg2 matches 7 run function phan:game/1/spawning/enemy/spawn_turret
execute if score @s editArg2 matches 8 run function phan:game/1/spawning/enemy/spawn_iron_golem
execute if score @s editArg2 matches 9 run function phan:game/1/spawning/enemy/spawn_tnt_golem
execute if score @s editArg2 matches 10 run function phan:game/1/spawning/enemy/spawn_shulker
execute if score @s editArg2 matches 11 run function phan:game/1/spawning/enemy/spawn_vex
execute if score @s editArg2 matches 12 run function phan:game/1/spawning/enemy/spawn_mine