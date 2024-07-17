#determine which directions exist
execute if score #waypointDir1 value matches 1.. run tag 00000000-0000-0328-0000-000000000001 add directionViable
execute if score #waypointDir2 value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=2..4}] add directionViable
execute if score #waypointDir3 value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..17}] add directionViable
execute if score #waypointDir4 value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] add directionViable

#pick one
scoreboard players set #random value 0
scoreboard players operation #random value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] r

#interpret it
scoreboard players set @s botLastDirection 0
execute if score #random value matches 1 run scoreboard players set @s botLastDirection 1
execute if score #random value matches 2..4 run scoreboard players set @s botLastDirection 2
execute if score #random value matches 5..17 run scoreboard players set @s botLastDirection 3
execute if score #random value matches 18..20 run scoreboard players set @s botLastDirection 4