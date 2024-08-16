#determine which directions exist
execute if score #waypointDir1 value matches 1.. in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..13}] add directionViable
execute if score #waypointDir2 value matches 1.. in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=14..16}] add directionViable
execute if score #waypointDir3 value matches 1.. run tag 00000000-0000-0328-0000-000000000011 add directionViable
execute if score #waypointDir4 value matches 1.. in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] add directionViable

#ignore any directions we previously banned
execute if score #wpRestrictDirections value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/a_restrict

#pick one
scoreboard players set #random value 0
execute in overworld run scoreboard players operation #random value = @e[limit=1,sort=random,tag=directionViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] r

#interpret it
scoreboard players set @s botLastDirection 0
execute if score #random value matches 1..13 run scoreboard players set @s botLastDirection 1
execute if score #random value matches 14..16 run scoreboard players set @s botLastDirection 2
execute if score #random value matches 17 run scoreboard players set @s botLastDirection 3
execute if score #random value matches 18..20 run scoreboard players set @s botLastDirection 4