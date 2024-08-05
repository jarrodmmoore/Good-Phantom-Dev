#chance the bot will decide to avoid us
#reminder: v.easy bot checks every 8 ticks
#easy checks every 7 ticks
#normal every 6 ticks
execute store result score #random value run random value 1..100
execute unless entity @s[tag=trappedChest] if score #botSkill value matches ..3 if score #random value matches 36.. run return 0
execute if score #botSkill value matches 4 if score #random value matches 61.. run return 0
execute if score #botSkill value matches 5 if score #random value matches 81.. run return 0
execute if score #botSkill value matches 6.. if score #random value matches 96.. run return 0

#=====

#still here? check if the mine is avoidable
tag @s add AIBC_hookLeft
tag @s add AIBC_hookRight
execute at @s facing entity @e[tag=botSelf,type=zombie,distance=..11] eyes rotated ~ 0 run function phan:bots/reaction/mine_check_lane

#pick a direction to dodge in (or no direction if both are bad ideas)
scoreboard players set #math value 0
execute if entity @s[tag=AIBC_hookLeft,tag=!AIBC_hookRight] run scoreboard players set #math value 1
execute if entity @s[tag=AIBC_hookRight,tag=!AIBC_hookLeft] run scoreboard players set #math value 2
execute if entity @s[tag=AIBC_hookLeft,tag=AIBC_hookRight] store result score #math value run random value 1..2

#tell bot to dodge soon!
execute if score #math value matches 1 run scoreboard players set @e[tag=botSelf,type=zombie,distance=..1] botPreparedToDodgeTrap -20
execute if score #math value matches 2 run scoreboard players set @e[tag=botSelf,type=zombie,distance=..1] botPreparedToDodgeTrap 20

#clean up tags
tag @s remove AIBC_hookLeft
tag @s remove AIBC_hookRight