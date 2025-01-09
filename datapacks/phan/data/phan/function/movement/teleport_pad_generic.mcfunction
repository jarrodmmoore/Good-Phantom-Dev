scoreboard players set #success value 0
#check and see if there's a node within 8 meters
execute as @e[type=marker,tag=node,distance=..8,scores={editNode=29},limit=1,sort=nearest] run function phan:movement/teleport_pad_get_destination
#do teleport if we've got it
execute if score #success value matches 1 run function phan:movement/teleport_pad_go with storage phan:coords