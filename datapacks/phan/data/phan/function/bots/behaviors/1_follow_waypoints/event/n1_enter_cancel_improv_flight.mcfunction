#might deny this event depending on item luck and bot skill
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#=====

#this one's dead simple

#0 = enter
#1 = cancel

tag @s add botImprovFlight
execute if score #waypointModifier value matches 1 run tag @s remove botImprovFlight