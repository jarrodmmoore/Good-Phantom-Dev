#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny on low difficulty
execute if score @s botSkill matches ..2 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#deny if we can't use the item
execute if score @s botHasItem7 matches ..0 if score @s botHasItem8 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're in water
execute if score @s botMoveState matches 3 run return 0

#deny if we're afraid of enderman
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#need to be mid air to use
tag @s remove botImprovFlight
execute if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0

#don't try to boost or use a different item while we're preparing to do the jump
scoreboard players set @s[scores={botItemThinkTime=..19}] botItemThinkTime 20
scoreboard players set @s[scores={botBoostThinkTime=..19}] botBoostThinkTime 20

#do the pad jump as soon as we're airborne
tag @s add botPadJumpWhenMidAir

#take alt route
scoreboard players set #botChoseAltRoute value 1