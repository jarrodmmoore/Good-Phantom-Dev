#alt function for battle mode
execute if score #vGameType value matches 2 run return run function phan:bots/battle/respawn
#=====

#send data to controller one last time before we perish
function phan:bots/stage_data_for_transfer
tag @s[tag=hasDataToSend] remove hasDataToSend

#controller should be informed that this was an intentional respawn, not a respawn due to the bot getting eaten by an unloaded chunk
scoreboard players operation #getID value = @s botID
execute in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botID = #getID value run tag @s add naturalBotRespawn
execute if entity @s[tag=botFindMarker] in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botID = #getID value run tag @s add botNeedMarkerToRespawn
tag @s[tag=botFindMarker] remove botFindMarker

#perish
scoreboard players set @s lifespan 0
tag @s remove ai
tag @s remove botRespawn