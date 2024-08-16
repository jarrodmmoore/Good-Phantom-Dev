#executed by a bot at the moment a race ends

#in this case, we did NOT get disabled because time ran out.
#we got disabled because all humans finished and we didn't want to wait for the remaining bots.
#so we're going to take our current race position and publish it as our finish position so we can get some points.

#save current position as finish position
scoreboard players operation @s finishPos = @s racePosDisplay

#send data to controller one last time
function phan:bots/stage_data_for_transfer
scoreboard players operation #checkID value = @s botID
execute in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled] if score @s botID = #checkID value run function phan:bots/receive_data_from_transfer
execute in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled] if score @s botID = #checkID value run tag @s add finished

#get rid of this entity
execute if loaded ~ ~ ~ run function phan:bots/movement/cancel_flight
tag @s remove ai
scoreboard players set @s lifespan 0