#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0
#=====

#set score that will make jump happen
scoreboard players operation @s botJumpTimer = #waypointModifier value