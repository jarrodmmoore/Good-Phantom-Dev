#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#=====

#find target
execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointModifier value
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#abort if no target found
execute if score #test value matches 0 run return 0

#check block at target location
scoreboard players set #test2 value 0
execute as 00000309-0000-0000-0000-00000000000a at @s if block ~ ~ ~ #phan:not_solid run scoreboard players set #test2 value 1
#clean-up
kill 00000309-0000-0000-0000-00000000000a

#abort if the target waypoint is inside a solid block
execute if score #test2 value matches 0 run return 0
#=====

#take alt route if we made it here
scoreboard players set #botChoseAltRoute value 1