#####################
# CALCULATION

execute if entity @s[tag=!vsHomeStretch] if loaded ~ ~ ~ run function phan:game/4/race/checkpoint/point_at_next/index
execute if entity @s[tag=vsHomeStretch] if loaded ~ ~ ~ facing entity @e[limit=1,tag=portalCore,scores={versusSpawn=1}] feet run function phan:game/4/race/checkpoint/point_at_next/_find_angle_difference
#set timer to positive between 0 and 1 (probably 1 under normal circumstances)
scoreboard players operation @s compassClock %= #2 value

#####################
# DISPLAY

#show compass if facing wrong way for too long
scoreboard players remove @s[scores={compassShowTime=1..}] compassShowTime 1
execute if score @s compassDirection matches 4..6 run scoreboard players add @s[scores={compassShowTime=..20,inputCooldownB=..0}] compassShowTime 2
execute if entity @s[tag=!vsHomeStretch,scores={compassShowTime=10..,actionbarDelay=..0}] if score #gameTime value matches 230.. run function phan:game/4/race/checkpoint/point_at_next/display
execute if entity @s[tag=!vsHomeStretch,scores={compassShowTime=9,actionbarDelay=..0}] run title @s actionbar [""]

#always show compass in the home stretch
execute if entity @s[tag=vsHomeStretch,scores={actionbarDelay=..0}] run function phan:game/4/race/checkpoint/point_at_next/display_goal