#enter improv flight
tag @s add botImprovFlight
scoreboard players set @s botVaultUpwardTime 15

#clear score
scoreboard players reset @s botExplosionBoostTime

#=====

#we are nowhere near our last waypoint, trust me
scoreboard players set #oldWpX value -2147483648

#no hook please
scoreboard players set @s botHookBase 0
scoreboard players set @s botHookModifier 0
scoreboard players set @s botHookModifierTime 20

#go new route if we have one defined
execute unless score @s botRouteAfterExplosionBoost matches 1.. run function phan:bots/behaviors/1_follow_waypoints/handle_explosion_boost_no_target
execute if score @s botRouteAfterExplosionBoost matches 1.. run execute store result storage phan:bot_args id int 1 run scoreboard players get @s botRouteAfterExplosionBoost
execute if score @s botRouteAfterExplosionBoost matches 1.. run function phan:bots/behaviors/1_follow_waypoints/target_waypoint_after_explosion_boost with storage phan:bot_args
scoreboard players reset @s botRouteAfterExplosionBoost