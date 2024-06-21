#grab coordinates of a nearby node and make them our return point
scoreboard players set #foundNode value 0
execute as @e[type=marker,tag=node,limit=1,distance=..200] run function phan:game/1/spectator/keep_near_track_save_location

#found node? adopt its coordinates
execute if score #foundNode value matches 1 run scoreboard players operation @s vsRespawnX = #location_x value
execute if score #foundNode value matches 1 run scoreboard players operation @s vsRespawnY = #location_y value
execute if score #foundNode value matches 1 run scoreboard players operation @s vsRespawnZ = #location_z value

#no node within 100m? force back to where we saved our return point
execute if score #foundNode value matches 0 run function phan:game/1/spectator/keep_near_track_return_to_saved_location