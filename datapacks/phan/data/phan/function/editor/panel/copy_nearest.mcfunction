#disgusting @e use here
#but this only runs once and is run manually so who cares
scoreboard players operation @s editNode = @e[limit=1,tag=node,type=marker,sort=nearest] editNode
scoreboard players operation @s editYaw = @e[limit=1,tag=node,type=marker,sort=nearest] editYaw
scoreboard players operation @s editPitch = @e[limit=1,tag=node,type=marker,sort=nearest] editPitch
scoreboard players operation @s editArea = @e[limit=1,tag=node,type=marker,sort=nearest] editArea
scoreboard players operation @s editLoadArea = @e[limit=1,tag=node,type=marker,sort=nearest] editLoadArea
scoreboard players operation @s editArg1 = @e[limit=1,tag=node,type=marker,sort=nearest] editArg1
scoreboard players operation @s editArg2 = @e[limit=1,tag=node,type=marker,sort=nearest] editArg2
scoreboard players operation @s editArg3 = @e[limit=1,tag=node,type=marker,sort=nearest] editArg3
function phan:editor/panel/_spawn