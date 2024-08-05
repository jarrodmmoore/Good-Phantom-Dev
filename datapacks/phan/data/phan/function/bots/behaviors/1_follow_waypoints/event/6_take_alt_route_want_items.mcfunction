#might deny this event depending on item luck and bot skill
execute unless function phan:bots/behaviors/1_follow_waypoints/event/luck_roll run return 0

#hard+ bot: deny event later if there's a trap in the way
execute if score @s botSkill matches 4.. run scoreboard players set #botCheckTrapsAltRoute value 1

#=====

#take alt route
scoreboard players set #botChoseAltRoute value 1