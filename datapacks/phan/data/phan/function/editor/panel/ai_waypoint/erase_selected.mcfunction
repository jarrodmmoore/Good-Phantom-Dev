scoreboard players set @e[tag=AIBC,tag=selectedWaypoint] lifespan 1
playsound minecraft:block.lava.extinguish master @s ~ 100000 ~ 100000 1

#we also need to kill direction tracers here to stop them from potentially running away forever
scoreboard players set @e[type=area_effect_cloud,tag=waypointTrail] lifespan 0

function phan:editor/panel/ai_waypoint/_meta_menu