#might deny this event depending on item luck and bot skill (ONLY IF marked as skillful or bad decision)
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0

#do nothing in water (unless next ledge)
execute if score @s botMoveState matches 3 unless score #waypointModifier value matches 2 unless score #waypointModifier value matches -3 run return 0

#=====

#-3 = enter flight at next ledge, vault upwards
#-2 = enter flight, spam jump, vault upwards
#-1 = enter flight, vault upwards
#0 = enter flight
#1 = enter flight, spam jump
#2 = enter flight at next ledge
#3 = cancel flight

#negatives are in their own function...
execute if score #waypointModifier value matches ..-1 run return run function phan:bots/behaviors/1_follow_waypoints/event/2_enter_cancel_flight_vault_upward
#=====

#already in flight? don't re-enter flight
execute unless score #waypointModifier value matches 3 if function phan:bots/movement/check_for_vehicle run return 0

#0,1,2 mid air? just enter flight
execute unless score #waypointModifier value matches 3 if entity @s[scores={botMoveState=1..,airTime=11..}] unless function phan:bots/movement/check_for_vehicle run tag @s add botFlyWhenInAir

#0,1,2 while grounded? do a jump, now or later, with possible spamming, and enter flight when airborne
execute unless score #waypointModifier value matches 3 run tag @s add botFlyWhenInAir
execute unless score #waypointModifier value matches 2..3 if entity @s[scores={botMoveState=1}] run scoreboard players set @s botJumpTimer -1
execute unless score #waypointModifier value matches 2..3 if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0
execute if score #waypointModifier value matches 1 run tag @s add botSpamJumpKey
execute if score #waypointModifier value matches 2 if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer -1
execute if score #waypointModifier value matches 2 if score @s botMoveState matches 1 run scoreboard players set @s botJumpTimer -2
execute if score #waypointModifier value matches 2 if score @s botMoveState matches 3 run scoreboard players set @s botJumpTimer -2

#cancel flight
execute if score #waypointModifier value matches 3 run function phan:bots/movement/cancel_flight