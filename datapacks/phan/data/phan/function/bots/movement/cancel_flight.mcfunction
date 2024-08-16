#close wings
data merge entity @s {FallFlying:0b}

#clear elytra and get it back in a second
item replace entity @s armor.chest with air

#not flying anymore
scoreboard players set @s fallFlying 0
scoreboard players set @s botExplosionBoostTime 0
tag @s[tag=botFlightPanic] remove botFlightPanic

#need to re-target waypoints if we gave up on mid-air flight
execute if entity @s[tag=botFollowingMidAir] run tag @s add botTargetNearestWP

#exit out if we have no vehicle
scoreboard players set #testReset value 0
execute on vehicle run scoreboard players set #testReset value 1
execute if score #testReset value matches 0 run return 0
#=====

#delete vehicle
execute on vehicle on vehicle run function phan:bots/movement/cancel_flight_destroy_vehicle
ride @s dismount

#update position and velocity immediately after dismount
tp @s ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #xVelocity value
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #yVelocity value
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #zVelocity value