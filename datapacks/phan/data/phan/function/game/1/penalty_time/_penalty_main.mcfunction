#count up how long we've been in penalty time
scoreboard players add @s[scores={pPenaltyTime=..2147483646}] pPenaltyTime 1

#no combos!
scoreboard players set @s combo 0

#no timer changes!
scoreboard players set @s timerAdd 0

#no timer pickups!
execute if score @s pCurrentArea matches 1 as @e[type=item,tag=clock,tag=act1Spawn] run function phan:game/1/penalty_time/remove_clock_pickup
execute if score @s pCurrentArea matches 2 as @e[type=item,tag=clock,tag=act2Spawn] run function phan:game/1/penalty_time/remove_clock_pickup
execute if score @s pCurrentArea matches 3 as @e[type=item,tag=clock,tag=act3Spawn] run function phan:game/1/penalty_time/remove_clock_pickup

#deduct from score once per second
execute if score @s pPenaltyTime matches 10.. if score #2sec value matches 1 run function phan:game/1/penalty_time/deduct_points
execute if score @s pPenaltyTime matches 10.. if score #2sec value matches 21 run function phan:game/1/penalty_time/deduct_points

#make display look better
execute if score #2sec value matches 13 run scoreboard players set @s pPenaltyPoints 0
execute if score #2sec value matches 33 run scoreboard players set @s pPenaltyPoints 0