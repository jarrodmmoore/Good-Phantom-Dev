#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 17
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem17 1
#update held item
execute if score @s botHasItem17 matches 1.. run scoreboard players set @s botHoldingItem 17
execute if score @s botHasItem17 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#bots have their own special code for using a firework rocket

#feedback
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 1
particle firework ~ ~1 ~ .6 .6 .6 .1 20

#have particles and aim upwards for a little bit
scoreboard players set @s botFireworkTime 35

#record our position
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_y value run data get entity @s Pos[1] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000

#cheesy way of getting a velocity vector in the direction we're facing
execute if loaded ^ ^ ^0.0012 run summon marker ^ ^ ^0.0012 {UUID:[I;777,0,0,1]}
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dx value run data get entity @s Pos[0] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dy value run data get entity @s Pos[1] 100000
execute as 00000309-0000-0000-0000-000000000001 store result score #coord_dz value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_dx value -= #coord_x value
scoreboard players operation #coord_dy value -= #coord_y value
scoreboard players operation #coord_dz value -= #coord_z value

#in soviet russia, projectile throws you
execute on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] run function phan:bots/items/17_firework_rocket/apply_velocity_to_vehicle

#get rid of that marker we used to grab second position
kill 00000309-0000-0000-0000-000000000001


#cooldown
scoreboard players set @s inputCooldown 10