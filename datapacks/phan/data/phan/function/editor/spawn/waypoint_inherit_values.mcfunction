#note: tags are already defined

#get values
scoreboard players operation @s AIBC_id = #waypointID value

#check if airborne
execute if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir

#require ground?
execute if score #waypointGround value matches 1 run tag @s add AIBC_requireGround

#tag cleanup
tag @s remove setMe