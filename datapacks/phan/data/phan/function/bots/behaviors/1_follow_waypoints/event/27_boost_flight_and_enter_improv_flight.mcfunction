#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if we don't have an item to get us gliding high quickly
execute if score @s botHasItem6 matches ..0 if score @s botHasItem17 matches ..0 run return 0

#deny if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're afraid of getting item stolen
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#use either of the items we have (prefer super jump)
execute if score @s botHasItem6 matches 1.. run return run function phan:bots/behaviors/1_follow_waypoints/event/27_boost_flight/fly_via_super_jump
execute if score @s botHasItem17 matches 1.. run function phan:bots/behaviors/1_follow_waypoints/event/27_boost_flight/fly_via_firework