#low skill bots have a random chance of not caring!
execute if score @s botSkill matches ..3 if function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_for_backtracking_low_skill_roll run return 0
#=====

#determine which directions lead to waypoints that we haven't recently visited

#we won't try to restrict directions unless there's at least 1 non-blocked option
scoreboard players set #wpRestrictDirectionsBT value 0

#valid until proven invalid
execute store result score #wpAllowDirBT1 value run execute if score #waypointDir1 value matches 1..
execute store result score #wpAllowDirBT2 value run execute if score #waypointDir2 value matches 1..
execute store result score #wpAllowDirBT3 value run execute if score #waypointDir3 value matches 1..
execute store result score #wpAllowDirBT4 value run execute if score #waypointDir4 value matches 1..


#if the waypoint in direction 1 matches any of our 3 last visited waypoints, restrict that direction!
execute if score @s botLastVisitedWP1 = #waypointDir1 value run scoreboard players set #wpAllowDirBT1 value 0
execute if score @s botLastVisitedWP2 = #waypointDir1 value run scoreboard players set #wpAllowDirBT1 value 0
execute if score @s botLastVisitedWP3 = #waypointDir1 value run scoreboard players set #wpAllowDirBT1 value 0
#no matches? we have at least 1 valid choice. that means we're allowed to be choosy later on.
execute if score #waypointDir1 value matches 1.. if score #wpAllowDirBT1 value matches 1 run scoreboard players set #wpRestrictDirectionsBT value 1

#repeat for the other 3 directions...

execute if score @s botLastVisitedWP1 = #waypointDir2 value run scoreboard players set #wpAllowDirBT2 value 0
execute if score @s botLastVisitedWP2 = #waypointDir2 value run scoreboard players set #wpAllowDirBT2 value 0
execute if score @s botLastVisitedWP3 = #waypointDir2 value run scoreboard players set #wpAllowDirBT2 value 0
execute if score #waypointDir2 value matches 1.. if score #wpAllowDirBT2 value matches 1 run scoreboard players set #wpRestrictDirectionsBT value 1

execute if score @s botLastVisitedWP1 = #waypointDir3 value run scoreboard players set #wpAllowDirBT3 value 0
execute if score @s botLastVisitedWP2 = #waypointDir3 value run scoreboard players set #wpAllowDirBT3 value 0
execute if score @s botLastVisitedWP3 = #waypointDir3 value run scoreboard players set #wpAllowDirBT3 value 0
execute if score #waypointDir3 value matches 1.. if score #wpAllowDirBT3 value matches 1 run scoreboard players set #wpRestrictDirectionsBT value 1

execute if score @s botLastVisitedWP1 = #waypointDir4 value run scoreboard players set #wpAllowDirBT4 value 0
execute if score @s botLastVisitedWP2 = #waypointDir4 value run scoreboard players set #wpAllowDirBT4 value 0
execute if score @s botLastVisitedWP3 = #waypointDir4 value run scoreboard players set #wpAllowDirBT4 value 0
execute if score #waypointDir4 value matches 1.. if score #wpAllowDirBT4 value matches 1 run scoreboard players set #wpRestrictDirectionsBT value 1