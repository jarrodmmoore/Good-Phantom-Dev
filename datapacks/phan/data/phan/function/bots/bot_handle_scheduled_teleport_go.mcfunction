#cancel flight! otherwise vehicle armor stand might lock us in place
function phan:bots/movement/cancel_flight

#go to coordinates
execute store result storage phan:coords coord_x int 1 run scoreboard players get @s botTeleportX
execute store result storage phan:coords coord_y int 1 run scoreboard players get @s botTeleportY
execute store result storage phan:coords coord_z int 1 run scoreboard players get @s botTeleportZ
function phan:bots/bot_handle_scheduled_teleport_macro with storage phan:coords

#sound post-teleport
execute at @s run playsound entity.enderman.teleport master @a ~ ~1 ~ 1.2 1

#follow waypoints and ignore any old targets
scoreboard players set @s botBehavior 1
scoreboard players set @s botTargetID 0
tag @s add botTargetNearestWP

#start gliding if we ended up mid-air
execute at @s if block ~ ~ ~ #phan:not_solid_not_water if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add botFlyWhenInAir

#done
scoreboard players set @s botTeleportTimer -1