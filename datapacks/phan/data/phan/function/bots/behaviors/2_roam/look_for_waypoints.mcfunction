#check LOS to nearby waypoints (do NOT target the node we just came from)
scoreboard players operation #checkID value = @s AIBC_selected
execute positioned ~-10 ~-10 ~-10 as @e[type=marker,tag=AIBC,tag=!AIBC_midAir,dx=20,dy=13,dz=20,limit=7,sort=nearest] positioned ~10 ~10 ~10 if function phan:bots/behaviors/2_roam/ignore_last_visitied_waypoint run function phan:bots/behaviors/1_follow_waypoints/reroute_check_los_start

#target one of the nodes that is a possible reroute
scoreboard players set #foundNode value 0
execute as @e[type=marker,limit=1,sort=random,tag=validReroute,distance=..20] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#clean up tags
tag @e[type=marker,tag=validReroute,distance=..20] remove validReroute

#found node? switch to behavior 1
execute if score #foundNode value matches 1.. run return run function phan:bots/behaviors/2_roam/found_waypoint

#=====
#found nothing? try again in a random amount of time
execute store result score @s botWanderTime run random value 10..40
scoreboard players remove @s botAllowedReroutes 1

#reset if in race mode and waypoints exist
execute if score #vGameType value matches 1 if score @s botAllowedReroutes matches ..0 if entity @e[type=marker,tag=AIBC,limit=1,distance=..100] run tag @s add botRespawnAdvance