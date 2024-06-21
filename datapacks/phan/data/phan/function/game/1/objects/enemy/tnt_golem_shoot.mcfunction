#feedback
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 3 1

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

#summon a TNT and give it the right velocity
execute facing entity 00000309-0000-0000-0000-000000000001 feet positioned ^ ^ ^.5 if loaded ~ ~1.8 ~ run summon tnt ~ ~2.1 ~ {fuse:1000,Tags:["giveVel","giveID","enemyTNT","sonicBlastDestroys"]}
execute at @e[limit=1,tag=giveID] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel] Motion[0] double 0.0156 run scoreboard players get #coord_dx value
execute store result entity @e[limit=1,tag=giveVel] Motion[1] double 0.0156 run scoreboard players get #coord_dy value
execute store result entity @e[limit=1,tag=giveVel] Motion[2] double 0.0156 run scoreboard players get #coord_dz value
tag @e[tag=giveVel,limit=1] remove giveVel

#get rid of that marker we used to grab second position
kill 00000309-0000-0000-0000-000000000001

#give color
team join colorRed @e[limit=1,tag=giveID]
#make sure it doesn't explode on ourselves
scoreboard players set @s playerID -1
scoreboard players set @e[limit=1,tag=giveID] playerID -1
tag @e[limit=1,tag=giveID] remove giveID

#change model to indicate we threw a tnt
scoreboard players set @s editArg3 14

#cooldown
scoreboard players set @s editArg2 1
execute if score #assist_enemies value matches 1.. run scoreboard players set @s editArg2 -13