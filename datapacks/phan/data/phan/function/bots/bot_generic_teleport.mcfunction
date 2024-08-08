#cancel flight! otherwise vehicle armor stand might lock us in place
function phan:bots/movement/cancel_flight

#go to coordinates
$function phan:bots/bot_handle_scheduled_teleport_macro {coord_x:$(x),coord_y:$(y),coord_z:$(z)}

#follow waypoints and ignore any old targets
scoreboard players set @s botBehavior 1
scoreboard players set @s botTargetID 0
tag @s add botTargetNearestWP

#start gliding if we ended up mid-air
execute at @s if block ~ ~ ~ #phan:not_solid_not_water if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add botFlyWhenInAir