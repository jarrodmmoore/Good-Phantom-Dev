clear @s[type=player] tnt[custom_data~{throwableTnt:1b}] 1

playsound minecraft:entity.tnt.primed master @a

#record our position
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_y value run data get entity @s Pos[1] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000

#cheesy way of getting a velocity vector in the direction we're facing
#execute if loaded ^ ^ ^0.001 run summon marker ^ ^ ^0.001 {UUID:[I;777,0,0,1]}
execute if loaded ^ ^ ^0.0017 run summon marker ^ ^ ^0.0017 {UUID:[I;777,0,0,1]}
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dx value run data get entity @s Pos[0] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dy value run data get entity @s Pos[1] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dz value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_dx value -= #coord_x value
scoreboard players operation #coord_dy value -= #coord_y value
scoreboard players operation #coord_dz value -= #coord_z value

#summon a TNT and give it the right velocity
execute facing entity 00000309-0000-0000-0000-000000000001 feet positioned ^ ^ ^.5 if loaded ~ ~1.8 ~ run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID","sonicBlastDestroys"]}
execute at @e[limit=1,tag=giveID] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,type=tnt,distance=..4] Motion[0] double 0.0156 run scoreboard players get #coord_dx value
execute store result entity @e[limit=1,tag=giveVel,type=tnt,distance=..4] Motion[1] double 0.0156 run scoreboard players get #coord_dy value
execute store result entity @e[limit=1,tag=giveVel,type=tnt,distance=..4] Motion[2] double 0.0156 run scoreboard players get #coord_dz value
tag @e[tag=giveVel,limit=1,type=tnt,distance=..4] remove giveVel

#get rid of that marker we used to grab second position
kill 00000309-0000-0000-0000-000000000001

#entity can only exist in this current game session
scoreboard players set @e[tag=giveID,type=tnt,distance=..4] itemValidSpawn 1

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID,type=tnt,distance=..4] playerID = @s playerID
scoreboard players operation @e[limit=1,tag=giveID,type=tnt,distance=..4] originalID = @s playerID
team join colorRed @e[limit=1,tag=giveID,type=tnt,distance=..4]
tag @e[limit=1,tag=giveID,type=tnt,distance=..4] remove giveID

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 9