#based on checkpoint, listen for when we enter checkpoint hitbox
execute if score #test2 value matches 15 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=16}] unless score @s editArg2 matches 1 run function phan:game/4/race/checkpoint/ender_pearl_check
execute if score #test2 value matches 16 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=17}] unless score @s editArg2 matches 1 run function phan:game/4/race/checkpoint/ender_pearl_check
execute if score #test2 value matches 17 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=18}] unless score @s editArg2 matches 1 run function phan:game/4/race/checkpoint/ender_pearl_check
execute if score #test2 value matches 18 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=19}] unless score @s editArg2 matches 1 run function phan:game/4/race/checkpoint/ender_pearl_check
execute if score #test2 value matches 19 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=20}] unless score @s editArg2 matches 1 run function phan:game/4/race/checkpoint/ender_pearl_check