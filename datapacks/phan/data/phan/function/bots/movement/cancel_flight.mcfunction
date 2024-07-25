#data merge entity @s {FallFlying:0b}

#put elytra back on
#item replace entity @s armor.chest with elytra[unbreakable={}]

#close wings
data merge entity @s {FallFlying:0b}

#delete vehicle
execute on vehicle on vehicle run function phan:bots/movement/cancel_flight_destroy_vehicle
ride @s dismount

#update position and velocity immediately after dismount
tp @s ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #xVelocity value
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #yVelocity value
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #zVelocity value

#not flying anymore
scoreboard players set @s fallFlying 0