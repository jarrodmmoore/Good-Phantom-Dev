#(executed by a waypoint)

#particle to indicate we modified this waypoint
particle minecraft:sonic_boom ~ ~.2 ~ 0.1 0.1 0.1 0.05 1 force

#apply data to ourselves
scoreboard players operation @s AIBC_dir1 = #waypointDir1 value
scoreboard players operation @s AIBC_dir2 = #waypointDir2 value
scoreboard players operation @s AIBC_dir3 = #waypointDir3 value
scoreboard players operation @s AIBC_dir4 = #waypointDir4 value
scoreboard players operation @s AIBC_event = #waypointEvent value
scoreboard players operation @s AIBC_modifier = #waypointModifier value
tag @s remove AIBC_requireGround
tag @s remove AIBC_hookLeft
tag @s remove AIBC_hookRight
tag @s remove AIBC_midAir
tag @s remove eventBadSkill
tag @s remove eventHighSkill
tag @s remove AIBC_lowHeight
execute if score #waypointGround value matches 1 run tag @s add AIBC_requireGround
execute if score #waypointHookLeft value matches 1 run tag @s add AIBC_hookLeft
execute if score #waypointHookRight value matches 1 run tag @s add AIBC_hookRight
execute if score #waypointMidAir value matches 1 run tag @s add AIBC_midAir
execute if score #waypointBadSkill value matches 1 run tag @s add eventBadSkill
execute if score #waypointHighSkill value matches 1 run tag @s add eventHighSkill
execute if score #waypointLowHeight value matches 1 run tag @s add AIBC_lowHeight
#store spread x and z data on yaw/pitch of waypoint
$tp @s ~ ~ ~ $(spread_x).$(spread_x2) $(spread_z).$(spread_z2)
#waypoints' rotation isn't relevant otherwise so let's be resourceful and jam less scoreboard data into server RAM :)

#reset any 0 scores to save memory (we assume null is 0)
execute if score @s AIBC_dir1 matches 0 run scoreboard players reset @s AIBC_dir1
execute if score @s AIBC_dir2 matches 0 run scoreboard players reset @s AIBC_dir2
execute if score @s AIBC_dir3 matches 0 run scoreboard players reset @s AIBC_dir3
execute if score @s AIBC_dir4 matches 0 run scoreboard players reset @s AIBC_dir4
execute if score @s AIBC_event matches 0 run scoreboard players reset @s AIBC_event
execute if score @s AIBC_modifier matches 0 run scoreboard players reset @s AIBC_modifier

#check if we're an object of interest to bots
tag @s remove botObjectOfInterest
execute if score @s AIBC_event matches 3 run tag @s add botObjectOfInterest

#check if we should have a 5th route
tag @s remove AIBC_hasRoute5
execute if score @s AIBC_event matches 4.. run tag @s add AIBC_hasRoute5

#tag as dead end if we have no paths
tag @s remove AIBC_deadEnd
execute unless score @s AIBC_dir1 matches -2147483648..2147483647 unless score @s AIBC_dir2 matches -2147483648..2147483647 unless score @s AIBC_dir3 matches -2147483648..2147483647 unless score @s AIBC_dir4 matches -2147483648..2147483647 run tag @s add AIBC_deadEnd
