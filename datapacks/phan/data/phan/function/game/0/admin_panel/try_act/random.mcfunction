#we are doing random act select
scoreboard players set #usingRandomLevelSelect value 1

#count down randomization cooldown on all levels
#(re-rolling tracks over and over will eventually deplete all the cooldowns. this is intentional)
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=1..}] randomCooldown 1

#fail-safe: make sure all armor stands have a randomCooldown score of 0
execute unless entity @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=..0}] run scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldown 0

#fallback, pure random
execute store result score #random value run random value 1..15

#pick a track that is not on cooldown
execute as @e[limit=1,sort=random,type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=..0}] run function phan:game/0/admin_panel/try_act/random_pick

#choose track based on index
execute if score #random value matches 1 run function phan:game/0/admin_panel/try_act/d1a1
execute if score #random value matches 2 run function phan:game/0/admin_panel/try_act/d1a2
execute if score #random value matches 3 run function phan:game/0/admin_panel/try_act/d1a3
execute if score #random value matches 4 run function phan:game/0/admin_panel/try_act/d2a1
execute if score #random value matches 5 run function phan:game/0/admin_panel/try_act/d2a2
execute if score #random value matches 6 run function phan:game/0/admin_panel/try_act/d2a3
execute if score #random value matches 7 run function phan:game/0/admin_panel/try_act/d3a1
execute if score #random value matches 8 run function phan:game/0/admin_panel/try_act/d3a2
execute if score #random value matches 9 run function phan:game/0/admin_panel/try_act/d3a3
execute if score #random value matches 10 run function phan:game/0/admin_panel/try_act/d4a1
execute if score #random value matches 11 run function phan:game/0/admin_panel/try_act/d4a2
execute if score #random value matches 12 run function phan:game/0/admin_panel/try_act/d4a3
execute if score #random value matches 13 run function phan:game/0/admin_panel/try_act/d5a1
execute if score #random value matches 14 run function phan:game/0/admin_panel/try_act/d5a2
execute if score #random value matches 15 run function phan:game/0/admin_panel/try_act/d5a3