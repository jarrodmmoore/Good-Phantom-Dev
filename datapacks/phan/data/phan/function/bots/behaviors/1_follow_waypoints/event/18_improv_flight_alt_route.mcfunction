#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if we're not flying in improv flight mode
execute unless score @s botMoveState matches 2 run return 0
execute unless entity @s[tag=botImprovFlight] run return 0

#=====

#find target
execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointModifier value
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#abort if no target found
execute if score #test value matches 0 run return 0

#get y coordinate of target
execute as 00000309-0000-0000-0000-00000000000a store result score #test2 value run data get entity @s Pos[1] 1
scoreboard players add #test2 value 2
#clean-up
kill 00000309-0000-0000-0000-00000000000a

#if we're too low to reach the target waypoint, give up on taking the alt route
execute if score @s location_y < #test2 value run return 0
#=====

#take alt route if we made it here
scoreboard players set #botChoseAltRoute value 2