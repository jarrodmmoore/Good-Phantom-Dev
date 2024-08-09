#check LOS to nearby waypoints
execute unless score @s botMoveState matches 2 positioned ~-10 ~-10 ~-10 as @e[type=marker,tag=AIBC,tag=!AIBC_midAir,tag=!AIBC_deadEnd,dx=20,dy=13,dz=20,limit=7,sort=nearest] positioned ~10 ~10 ~10 run function phan:bots/behaviors/1_follow_waypoints/reroute_check_los_start
#go for mid-air waypoints if gliding. if none nearby, go for grounded waypoints
execute if score @s botMoveState matches 2 positioned ~-10 ~-10 ~-10 as @e[type=marker,tag=AIBC,tag=AIBC_midAir,tag=!AIBC_deadEnd,dx=20,dy=13,dz=20,limit=7,sort=nearest] positioned ~10 ~10 ~10 run function phan:bots/behaviors/1_follow_waypoints/reroute_check_los_start
execute if score @s botMoveState matches 2 unless entity @e[type=marker,limit=1,tag=validReroute,distance=..20] positioned ~-10 ~-10 ~-10 as @e[type=marker,tag=AIBC,tag=!AIBC_midAir,tag=!AIBC_deadEnd,dx=20,dy=13,dz=20,limit=7,sort=nearest] positioned ~10 ~10 ~10 run function phan:bots/behaviors/1_follow_waypoints/reroute_check_los_start

#target one of the nodes that is a possible reroute
execute as @e[type=marker,limit=1,sort=random,tag=validReroute,distance=..20] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target
execute if score #foundNode value matches 1.. run scoreboard players set @s botHookBase 0
execute if score #foundNode value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates

#clean up tags
tag @e[type=marker,tag=validReroute,distance=..20] remove validReroute

#count down the number of times we're allowed to do this
execute if score #foundNode value matches 1 run scoreboard players remove @s botAllowedReroutes 1