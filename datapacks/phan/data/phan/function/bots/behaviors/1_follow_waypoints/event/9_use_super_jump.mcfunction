#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny on low difficulty
execute if score @s botSkill matches ..2 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#deny if we can't use the item
execute if score @s botHasItem6 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're afraid of enderman
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#do it!
tag @s remove botImprovFlight
function phan:bots/items/6_super_jump/use

#take alt route
scoreboard players set #botChoseAltRoute value 1