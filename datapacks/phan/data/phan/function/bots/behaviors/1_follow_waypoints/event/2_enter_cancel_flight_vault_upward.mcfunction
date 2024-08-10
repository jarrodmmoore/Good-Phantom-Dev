#-3 = enter flight at next ledge, vault upwards
#-2 = enter flight, spam jump, vault upwards
#-1 = enter flight, vault upwards

#vault up for a few ticks no matter what
scoreboard players set @s botVaultUpwardTime 15

#already in flight? don't re-enter flight
execute if function phan:bots/movement/check_for_vehicle run return 0

#mid air? just enter flight
execute if entity @s[scores={botMoveState=1..,airTime=11..}] unless function phan:bots/movement/check_for_vehicle run tag @s add botFlyWhenInAir

#0,1,2 while grounded? do a jump, now or later, with possible spamming, and enter flight when airborne
tag @s add botFlyWhenInAir
execute unless score #waypointModifier value matches -3 if score @s botMoveState matches 1 run scoreboard players set @s botJumpTimer -1
execute unless score #waypointModifier value matches -3 if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0
execute if score #waypointModifier value matches -2 run tag @s add botSpamJumpKey
execute if score #waypointModifier value matches -3 if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer -1
execute if score #waypointModifier value matches -3 if score @s botMoveState matches 1 run scoreboard players set @s botJumpTimer -2
execute if score #waypointModifier value matches -3 if score @s botMoveState matches 3 run scoreboard players set @s botJumpTimer -2