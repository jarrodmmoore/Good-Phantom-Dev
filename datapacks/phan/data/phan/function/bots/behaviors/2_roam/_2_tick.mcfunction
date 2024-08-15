#count down to when we want to check LOS to breadcrumbs next
scoreboard players remove @s botWanderTime 1


#not airborne? we need to face the correct yaw
execute unless score @s botMoveState matches 1 if score @s botWanderYaw matches -2147483648..2147483647 run function phan:bots/behaviors/2_roam/face_proper_direction

#turn randomly as we move (very similar to squid blindness)
execute store result score #random value run random value 1..2
execute store result score #random2 value run random value 1..50
execute if score #random value matches 1 run scoreboard players set @s botHookModifier 9
execute if score #random value matches 2 run scoreboard players set @s botHookModifier -10
execute if score #random2 value matches 1 store result score @s botRoamLookBias2 run random value 1..3
scoreboard players set @s botHookModifierTime 4

#don't run into pits, silly goose! do a 180
#execute if score @s airTime matches ..4 at @s rotated ~ 0 if block ^ ^ ^1 #phan:not_solid unless block ^ ^ ^1 water if block ^ ^-1 ^1 #phan:not_solid unless block ^ ^-1 ^1 water if block ^ ^-2 ^1 #phan:not_solid if block ^ ^-3 ^1 #phan:not_solid run scoreboard players add @s botHookModifier 180
#^ DISABLED, because it resulted in bots getting stuck more often than not. this was especially bad in Shattered City III's giant trees.

#turn sharply if we're rubbing against a wall
execute store result score #test value run random value 1..50
execute if score #test value matches 1 run scoreboard players add @s botRoamLookBias 1
execute if score @s botRoamLookBias matches 2.. run scoreboard players set @s botRoamLookBias 0
execute if score @s botRoamLookBias matches 0 at @s rotated ~ 0 unless block ^ ^1.5 ^1 #phan:not_solid run scoreboard players remove @s botHookModifier 30
execute if score @s botRoamLookBias matches 1 at @s rotated ~ 0 unless block ^ ^1.5 ^1 #phan:not_solid run scoreboard players add @s botHookModifier 30

#summon aec depending what direction we're going
scoreboard players set #success value 0
execute if score @s inWater matches 0 at @s rotated ~ 0 positioned ^ ^ ^20 if loaded ~ ~ ~ run function phan:bots/behaviors/2_roam/summon_move_target
execute if entity @s[scores={inWater=1,botRoamLookBias2=1}] at @s rotated ~ 10 positioned ^ ^ ^20 if loaded ~ ~ ~ run function phan:bots/behaviors/2_roam/summon_move_target
execute if entity @s[scores={inWater=1,botRoamLookBias2=2}] at @s rotated ~ 0 positioned ^ ^ ^20 if loaded ~ ~ ~ run function phan:bots/behaviors/2_roam/summon_move_target
execute if entity @s[scores={inWater=1,botRoamLookBias2=3}] at @s rotated ~ -10 positioned ^ ^ ^20 if loaded ~ ~ ~ run function phan:bots/behaviors/2_roam/summon_move_target

#kill projected target
kill 0001e453-0000-0000-0000-000000000002

#target the point we projected
execute if score #success value matches 1 run function phan:bots/behaviors/2_roam/set_target_coordinates


#look for breadcrumbs so we can get ourselves back on the grid
execute if score @s botWanderTime matches ..0 run function phan:bots/behaviors/2_roam/look_for_waypoints