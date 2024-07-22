#save current position as finish position
scoreboard players operation @s finishPos = @s racePosDisplay

#send data to controller one last time
function phan:bots/stage_data_for_transfer
scoreboard players operation #checkID value = @s botID
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled] if score @s botID = #checkID value run function phan:bots/receive_data_from_transfer
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botDisabled] if score @s botID = #checkID value run tag @s add finished

#get rid of this entity
tag @s remove ai
scoreboard players set @s lifespan 0