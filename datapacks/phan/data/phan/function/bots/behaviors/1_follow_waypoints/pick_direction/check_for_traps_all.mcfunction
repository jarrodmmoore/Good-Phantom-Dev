#determine which directions lead to waypoints that don't have traps on them
scoreboard players set #wpRestrictDirections value 0
scoreboard players set #wpAllowDir1 value 0
scoreboard players set #wpAllowDir2 value 0
scoreboard players set #wpAllowDir3 value 0
scoreboard players set #wpAllowDir4 value 0
scoreboard players set #wpAllowDir5 value 0
execute if score #waypointDir1 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_traps_dir1
execute if score #waypointDir2 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_traps_dir2
execute if score #waypointDir3 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_traps_dir3
execute if score #waypointDir4 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_traps_dir4
execute if score #waypointDir5 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_traps_dir5

#cancel taking alt route if the alt route is trapped and there are other viable options
execute if score #wpRestrictDirections value matches 1.. if score #wpAllowDir5 value matches 0 run scoreboard players set #botChoseAltRoute value 0