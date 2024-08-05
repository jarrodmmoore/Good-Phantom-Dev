#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#deny if we can't use the item
execute if score @s botHasItem1 matches ..0 if score @s botHasItem2 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#deny if we're afraid of enderman
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#jump if we're on the ground
execute if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0
execute if entity @s[scores={botMoveState=1,airTime=..3}] run scoreboard players set @s botJumpTimer -1

#fly after shooting
tag @s add botFlyWhenInAir
tag @s add botImprovFlight

#take alt route
scoreboard players set #botChoseAltRoute value 1

#shoot at our feet to get a vertical boost
execute if score @s botHasItem1 matches 1.. rotated ~ 90 run return run function phan:bots/items/1_red_rocket/use
execute if score @s botHasItem2 matches 1.. rotated ~ 90 run return run function phan:bots/items/2_homing_rocket/use

#=====
#still here? jk, don't take alt route
scoreboard players set #botChoseAltRoute value 0