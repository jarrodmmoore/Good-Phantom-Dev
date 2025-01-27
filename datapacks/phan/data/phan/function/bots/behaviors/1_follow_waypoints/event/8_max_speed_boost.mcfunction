#might deny this event depending on item luck and bot skill
execute if function phan:bots/behaviors/1_follow_waypoints/event/high_skill_and_luck_roll run return 0

#deny if battle mode
execute if score #vGameType value matches 2 run return 0

#deny on low difficulty
execute if score @s botSkill matches ..2 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#deny if blinded by squid
execute if score @s squidBlindTime matches 1.. unless score #waypointEventSkill value matches 1 run return 0

#deny if improv flying
execute if entity @s[tag=botImprovFlight] run return 0

#deny if too slow or unable to boost
execute if score @s moveVelocity matches ..239 unless score @s botMoveState matches 2 run return 0
execute if score @s energy matches ..2 run return 0
execute if score @s inputCooldownB matches 1.. run return 0

#=====

#boost!
function phan:bots/items/0_boost/use

#take alt route
scoreboard players set #botChoseAltRoute value 1