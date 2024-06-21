#no speed
scoreboard players set @s moveVelocity 0

#get a grid slot assignment if we don't have one yet
execute unless score @s startGrid matches 1.. run function phan:game/4/race/start_grid/get_grid_slot

#go to our assigned start location
scoreboard players set #test value 0
execute if score @s startGrid matches 1 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=1}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 2 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=2}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 3 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=3}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 4 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=4}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 5 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=5}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 6 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=6}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 7 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=7}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 8 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=8}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 9 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=9}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 10 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=10}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 11 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=11}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 12 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=12}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 13 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=13}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 14 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=14}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 15 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=15}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 16 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=16}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 17 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=17}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 18 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=18}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 19 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=19}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 20 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=20}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 21 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=21}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 22 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=22}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 23 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=23}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 24 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=24}] run function phan:game/4/race/start_grid/go_to_grid_slot
execute if score @s startGrid matches 25 if entity @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1,editArg1=25}] run function phan:game/4/race/start_grid/go_to_grid_slot

#didn't get sent anywhere? just warp to the nearest one as a fail-safe
execute if score #test value matches 0 run tp @s @e[limit=1,sort=nearest,type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1}]