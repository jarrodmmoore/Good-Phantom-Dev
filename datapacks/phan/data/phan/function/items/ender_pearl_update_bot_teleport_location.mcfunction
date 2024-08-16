#when we stop existing, the bot will get snapped to the coordinates we're saving here
execute store result score #coord_x value run data get entity @s Pos[0] 1
execute store result score #coord_y value run data get entity @s Pos[1] 1
execute store result score #coord_z value run data get entity @s Pos[2] 1

#send to bot
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=ai,type=zombie] if score @s playerID = #checkID value run function phan:items/ender_pearl_update_bot_teleport_location_go

#don't go into unloaded chunks! that will probably cause some erratic behavior with the way this is set up...
execute rotated ~ 0 unless loaded ^ ^ ^4 run scoreboard players set @s lifespan 0

#don't be in problematic spot
execute if block ~ ~-1 ~ #phan:ender_pearl_problematic run scoreboard players set @s lifespan 0
execute if block ~ ~-2 ~ #phan:ender_pearl_problematic run scoreboard players set @s lifespan 0