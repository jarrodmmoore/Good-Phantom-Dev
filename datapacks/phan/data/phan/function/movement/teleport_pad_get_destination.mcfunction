#read our x,y,z
execute store result storage phan:coords coord_x int 1 run scoreboard players get @s editArg1
execute store result storage phan:coords coord_y int 1 run scoreboard players get @s editArg2
execute store result storage phan:coords coord_z int 1 run scoreboard players get @s editArg3
#match rotation of this node after teleport
data modify storage phan:coords coord_yaw set from entity @s Rotation[0]
data modify storage phan:coords coord_pitch set from entity @s Rotation[1]
#found a node with coordinates!
scoreboard players set #success value 1