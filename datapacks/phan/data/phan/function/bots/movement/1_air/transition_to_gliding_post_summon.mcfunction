#executed by the flight armor_stand some bot is riding

#we are temporary
scoreboard players set @s lifespan 5
execute on passengers if entity @s[tag=botElytraHeightFix] run scoreboard players set @s lifespan 5

#inherit position and velocity of the bot
tp @s ~ ~ ~ ~ ~
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #xVelocity value
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #yVelocity value
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #zVelocity value

#slight speed boost to get us going
execute at @s run function phan:bots/movement/2_gliding/apply_velocity_to_vehicle_variable with storage phan:coords

#clean-up
tag @s remove setMe
execute on passengers if entity @s[tag=setMe2] run tag @s remove setMe2