#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny on low difficulty
execute if score @s botSkill matches ..2 if function phan:bots/behaviors/1_follow_waypoints/event/deny_lower_skill_levels run return 0

#deny if we can't use the item
execute if score @s botHasItem17 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're in water
execute if score @s botMoveState matches 3 run return 0

#deny if we're afraid of enderman
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#need to enter flight mode if we're not flying already
tag @s remove botImprovFlight
execute if score @s botMoveState matches 0..1 run tag @s add botFlyWhenInAir
execute if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0

#don't try to boost or use a different item while we're preparing to fly
scoreboard players set @s[scores={botItemThinkTime=..19}] botItemThinkTime 20
scoreboard players set @s[scores={botBoostThinkTime=..19}] botBoostThinkTime 20

#use firework as soon as we're gliding
tag @s add botUseFireworkInAir

#take alt route
scoreboard players set #botChoseAltRoute value 2