#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 15
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem15 1
#update held item
execute if score @s botHasItem15 matches 1.. run scoreboard players set @s botHoldingItem 15
execute if score @s botHasItem15 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#face the direction we're shooting in for a second
scoreboard players set #setTime value 27
function phan:bots/movement/face_direction_temporarily

#=====

#bots have their own special code for using an ender pearl

#record our position
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_y value run data get entity @s Pos[1] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000

#cheesy way of getting a velocity vector in the direction we're facing
execute if loaded ^ ^ ^0.001 run summon marker ^ ^ ^0.001 {UUID:[I;777,0,0,1]}
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dx value run data get entity @s Pos[0] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dy value run data get entity @s Pos[1] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dz value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_dx value -= #coord_x value
scoreboard players operation #coord_dy value -= #coord_y value
scoreboard players operation #coord_dz value -= #coord_z value

#summon an ender pearl and give it the right velocity
execute rotated ~ 0 positioned ^ ^ ^0.8 facing entity 00000309-0000-0000-0000-000000000001 feet if loaded ~ ~1.8 ~ run summon ender_pearl ~ ~1.8 ~ {Tags:["giveVel","giveID","botEnderPearl"]}
execute at @e[limit=1,tag=giveID] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,type=ender_pearl,distance=..4] Motion[0] double 0.0156 run scoreboard players get #coord_dx value
execute store result entity @e[limit=1,tag=giveVel,type=ender_pearl,distance=..4] Motion[1] double 0.0156 run scoreboard players get #coord_dy value
execute store result entity @e[limit=1,tag=giveVel,type=ender_pearl,distance=..4] Motion[2] double 0.0156 run scoreboard players get #coord_dz value
tag @e[tag=giveVel,limit=1,type=ender_pearl,distance=..4] remove giveVel

#get rid of that marker we used to grab second position
kill 00000309-0000-0000-0000-000000000001

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID,type=ender_pearl,distance=..4] playerID = @s playerID
tag @e[limit=1,tag=giveID,type=ender_pearl,distance=..4] remove giveID

#cooldown (pretend we're vanilla)
scoreboard players set @s inputCooldown 20