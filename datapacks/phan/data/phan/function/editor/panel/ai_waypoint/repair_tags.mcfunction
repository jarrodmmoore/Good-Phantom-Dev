execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#re-calculate if we're mid-air
tag @s remove AIBC_midAir
execute at @s if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir

#do we have a route 5?
tag @s remove AIBC_hasRoute5
execute if score @s AIBC_event matches 4.. run tag @s add AIBC_hasRoute5
#exceptions: events that do NOT use modifier as route 5
#... (none as of right now)