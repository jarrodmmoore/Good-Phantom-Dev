# "cry about it!" - bot
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 1.5 1
tag @s add eatMyShorts

#follow waypoints if there's one nearby
execute at @s if entity @e[type=marker,tag=AIBC,distance=..60] run return run scoreboard players set @s botBehavior 1

#no waypoint nearby? roam around randomly
function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary