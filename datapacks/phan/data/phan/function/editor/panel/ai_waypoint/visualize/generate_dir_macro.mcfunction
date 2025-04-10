#quit now if we can't find the target
$execute unless entity @e[type=marker,tag=AIBC,scores={AIBC_id=$(number)}] run return 0

#summon aec with max life of 100, point at target
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:100,Tags:["setDirection","waypointTrail","$(text)"]}
$execute as @e[type=area_effect_cloud,tag=setDirection,distance=..1,limit=1] run tp @s ~ ~ ~ facing entity @e[type=marker,tag=AIBC,scores={AIBC_id=$(number)},limit=1,sort=nearest] feet
scoreboard players operation @e[type=area_effect_cloud,tag=setDirection] AIBC_selected = #test value

#clean up tag
tag @e[type=area_effect_cloud,tag=setDirection] remove setDirection