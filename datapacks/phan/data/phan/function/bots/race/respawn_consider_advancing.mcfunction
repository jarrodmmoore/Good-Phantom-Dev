#send data to controller one last time before we perish
function phan:bots/stage_data_for_transfer
tag @s[tag=hasDataToSend] remove hasDataToSend

#this function was run because the bot was about to get sent into an unloaded chunk.
#as such, we need to check if it's been long enough that the bot should be granted the next checkpoint despite not being loaded.
scoreboard players operation #getID value = @s botID
#our botController should also recieve data from the bot IMMEDIATELY before checking for checkpoint advancement to avoid issues
execute if score #vGameType value matches 1 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botID = #getID value run function phan:bots/receive_data_from_transfer
execute if score #vGameType value matches 1 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botID = #getID value run function phan:bots/controller/no_bot_found_consider_advancing_cp

#tell the controller not to check for a data update again. we already forced it to recieve the data early!
scoreboard players set #botDataUpdate value 0

#perish
scoreboard players set @s lifespan 1
tag @s remove ai
tag @s remove botRespawn
tag @s remove botRespawnAdvance