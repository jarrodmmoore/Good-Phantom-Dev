#kick out if not loaded, or relevant scores aren't loaded
scoreboard players set #test5 value 0
execute at @s if loaded ~ ~ ~ run scoreboard players add #test5 value 1
execute if score @s AIBC_id matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_event matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_spread_x matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s AIBC_spread_z matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute unless score #clearCacheProgress value matches 1.. run scoreboard players add #test5 value 1
execute unless score #test5 value matches 11 run return 0
#=====

#execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#re-calculate if we're mid-air
#tag @s remove AIBC_midAir
#execute at @s if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir

#kick out if not loaded
execute unless loaded ~ ~ ~ run return 0
#=====

#fixed messed up spread
execute if score @s AIBC_spread_x matches 100.. run scoreboard players set @s AIBC_spread_x 0
execute if score @s AIBC_spread_x matches ..-100 run scoreboard players set @s AIBC_spread_x 0
execute if score @s AIBC_spread_z matches 100.. run scoreboard players set @s AIBC_spread_z 0
execute if score @s AIBC_spread_z matches ..-100 run scoreboard players set @s AIBC_spread_z 0

#to save memory, reset any values that are 0
execute if score @s AIBC_dir1 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir2 matches 0 run scoreboard players reset @s AIBC_dir2
execute if score @s AIBC_dir3 matches 0 run scoreboard players reset @s AIBC_dir3
execute if score @s AIBC_dir4 matches 0 run scoreboard players reset @s AIBC_dir4
execute if score @s AIBC_event matches 0 run scoreboard players reset @s AIBC_event
execute if score @s AIBC_modifier matches 0 run scoreboard players reset @s AIBC_modifier
execute if score @s AIBC_spread_x matches 0 run scoreboard players reset @s AIBC_spread_x
execute if score @s AIBC_spread_z matches 0 run scoreboard players reset @s AIBC_spread_z

#tag as dead end if we have no paths
tag @s remove AIBC_deadEnd
execute unless score @s AIBC_dir1 matches -2147483648..2147483647 unless score @s AIBC_dir2 matches -2147483648..2147483647 unless score @s AIBC_dir3 matches -2147483648..2147483647 unless score @s AIBC_dir4 matches -2147483648..2147483647 run tag @s add AIBC_deadEnd

#check if we're an object of interest to bots
tag @s remove botObjectOfInterest
execute if score @s AIBC_event matches 3 run tag @s add botObjectOfInterest

#do we have a route 5?
tag @s remove AIBC_hasRoute5
execute if score @s AIBC_event matches 4.. run tag @s add AIBC_hasRoute5
#exceptions: events that do NOT use modifier as route 5
#... (none as of right now. put them here if needed)