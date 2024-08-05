#target waypoint if we're explosion boosting after an event
execute if score @s botExplosionBoostTime matches 1.. if score @s botMoveState matches 2 run function phan:bots/behaviors/1_follow_waypoints/handle_explosion_boost

#target nearest waypoint if tag told us to
execute if entity @s[tag=botTargetNearestWP] run function phan:bots/behaviors/1_follow_waypoints/target_nearest

#check if we're somewhat near the target
scoreboard players operation #testX value = @s botTargetXX
scoreboard players operation #testX value -= @s location_xx
scoreboard players operation #testY value = @s botTargetYY
scoreboard players operation #testY value -= @s location_yy
scoreboard players operation #testZ value = @s botTargetZZ
scoreboard players operation #testZ value -= @s location_zz
#keep track of whether we're making progress towards the target
scoreboard players add @s botTimeSinceProgress 1
execute if score #testX value matches 0.. if score #testX value < @s botProgressXX run function phan:bots/behaviors/1_follow_waypoints/track_progress/x
execute if score #testX value matches ..-1 run function phan:bots/behaviors/1_follow_waypoints/track_progress/x_negative
execute if score #testY value matches 0.. if score #testY value < @s botProgressYY run function phan:bots/behaviors/1_follow_waypoints/track_progress/y
execute if score #testY value matches ..-1 run function phan:bots/behaviors/1_follow_waypoints/track_progress/y_negative
execute if score #testZ value matches 0.. if score #testZ value < @s botProgressZZ run function phan:bots/behaviors/1_follow_waypoints/track_progress/z
execute if score #testZ value matches ..-1 run function phan:bots/behaviors/1_follow_waypoints/track_progress/z_negative
#in range? possibly adopt the target waypoint
execute if score #testX value matches -44..44 if score #testZ value matches -44..44 run function phan:bots/behaviors/1_follow_waypoints/in_range_xz

#redirect or reset if we aren't making progress
execute if score @s botTimeSinceProgress matches 15.. if score #vGameType value matches 1 run function phan:bots/behaviors/1_follow_waypoints/bot_consider_respawning

#i like to move it move it
scoreboard players set #botWantsToMove value 1