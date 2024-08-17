#=====
# CALCULATION

execute if entity @s[tag=!vsHomeStretch] if loaded ~ ~ ~ run function phan:game/4/race/checkpoint/point_at_next/index_mandatory
execute if entity @s[tag=vsHomeStretch] if loaded ~ ~ ~ facing entity @e[limit=1,tag=portalCore,type=marker,scores={versusSpawn=1}] feet run function phan:game/4/race/checkpoint/point_at_next/_find_angle_difference
#set timer to positive between 0 and 1 (probably 1 under normal circumstances)
scoreboard players operation @s compassClock %= #2 value

#=====
# DISPLAY

execute if entity @s[tag=!vsHomeStretch,scores={actionbarDelay=..0}] if score #gameTime value matches 230.. run function phan:game/4/race/checkpoint/point_at_next/display
execute if entity @s[tag=vsHomeStretch,scores={actionbarDelay=..0}] run function phan:game/4/race/checkpoint/point_at_next/display_goal