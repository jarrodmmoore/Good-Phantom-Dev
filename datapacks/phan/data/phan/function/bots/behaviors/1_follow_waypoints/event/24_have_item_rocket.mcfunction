#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if we don't have the item
execute if score @s botHasItem1 matches ..0 run return 0

#deny if we're afraid of getting item stolen
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#don't use items or boost for a moment
scoreboard players set @s[scores={botItemThinkTime=..59}] botItemThinkTime 60
scoreboard players set @s[scores={botBoostThinkTime=..59}] botBoostThinkTime 60

#take alt route
scoreboard players set #botChoseAltRoute value 1