#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0
#=====

#take alt route if portal open
execute if entity @s[tag=vsHomeStretch] run scoreboard players set #botChoseAltRoute value 2

#forget our previous direction bias
scoreboard players set @s botLastDirection 0