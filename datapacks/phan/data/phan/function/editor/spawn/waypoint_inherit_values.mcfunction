#note: tags are already defined

#get values
scoreboard players operation @s AIBC_id = #waypointID value
scoreboard players operation @s AIBC_dir1 = #waypointDir1 value
scoreboard players operation @s AIBC_dir2 = #waypointDir2 value
scoreboard players operation @s AIBC_dir3 = #waypointDir3 value
scoreboard players operation @s AIBC_dir4 = #waypointDir4 value
scoreboard players operation @s AIBC_event = #waypointEvent value
scoreboard players operation @s AIBC_modifier = #waypointModifier value

#clear empty values (we want to avoid storing any unneccessary data on scoreboard.dat)
execute if score @s AIBC_dir1 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir2 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir3 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir4 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_event matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_modifier matches 0 run scoreboard players reset @s AIBC_dir1

#check if airborne
execute if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir

#require ground?
tag @s[tag=AIBC_requireGround] remove AIBC_requireGround
execute if score #waypointGround value matches 1 run tag @s add AIBC_requireGround

#tag cleanup
tag @s remove setMe