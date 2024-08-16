#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#=====

#find target
execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointModifier value
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#abort if no target found
execute if score #test value matches 0 run return 0

#check if enemy near waypoint
execute at 00000309-0000-0000-0000-00000000000a store result score #test value run execute if entity @e[tag=baddy,distance=..3]

#do we have an item that could kill the baddie? use it
execute if score #test value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/event/try_shooting_projectile_at_target

#clean-up
kill 00000309-0000-0000-0000-00000000000a

#if we can't take the waypoint and can't kill the enemy, take alt route
execute if score #test value matches 1.. run return 0
#=====

#take alt route if we made it here
scoreboard players set #botChoseAltRoute value 1