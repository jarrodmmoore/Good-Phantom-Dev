#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny on low difficulty
execute if score @s botSkill matches ..2 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#deny if we can't use the item
execute if score @s botHasItem15 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're afraid of enderman
execute if score @s[scores={botSkill=4..}] botFearsEnderman matches 1.. run return 0

#=====

#find target
execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointModifier value
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#abort if no target found
execute if score #test value matches 0 run return 0

#throw pearl at target
execute at @s facing entity 00000309-0000-0000-0000-00000000000a feet run function phan:bots/items/15_ender_pearl/use

#clean-up
kill 00000309-0000-0000-0000-00000000000a