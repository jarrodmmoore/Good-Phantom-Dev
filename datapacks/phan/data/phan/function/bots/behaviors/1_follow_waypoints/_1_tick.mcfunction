#in this state we need to
#1) set our movement target to the location of a waypoint
#2) detect when we reach each movement target (waypoint)
#3) detect when we get stuck
#4) dodge stuff?
#5) go after item chests that are hittable

#target nearest waypoint?
execute if entity @s[tag=botTargetNearestWP] run function phan:bots/behaviors/1_follow_waypoints/target_nearest

#check if we're somewhat near the target
scoreboard players operation #testX value = @s location_xx
scoreboard players operation #testX value -= @s botTargetXX
scoreboard players operation #testY value = @s location_yy
scoreboard players operation #testY value -= @s botTargetYY
scoreboard players operation #testZ value = @s location_zz
scoreboard players operation #testZ value -= @s botTargetZZ
execute if score #testX value matches -44..44 if score #testZ value matches -44..44 run function phan:bots/behaviors/1_follow_waypoints/in_range_xz

#i like to move it move it
scoreboard players set #botWantsToMove value 1