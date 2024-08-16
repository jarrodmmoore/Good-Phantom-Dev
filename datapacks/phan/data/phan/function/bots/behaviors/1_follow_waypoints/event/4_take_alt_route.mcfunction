#might deny this event depending on item luck and bot skill
execute if function phan:bots/behaviors/1_follow_waypoints/event/high_skill_and_luck_roll run return 0

#deny on v.easy difficulty
execute if score @s botSkill matches ..1 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#hard+ bot: deny event later if there's a trap in the way
execute if score @s botSkill matches 4.. run scoreboard players set #botCheckTrapsAltRoute value 1

#=====

#take alt route if still here
scoreboard players set #botChoseAltRoute value 1