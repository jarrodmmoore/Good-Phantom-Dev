#don't care if not in race mode
execute unless score #vGameType value matches 1 run return 0
#=====

#give self tag if we're on or near the final lap
execute if score #vLaps value matches ..1 run tag @s add botOnFinalLap
execute if score #vLaps value matches 2 run tag @s[scores={lap=2..}] add botOnFinalLap

scoreboard players operation #math value = #vLaps value
scoreboard players operation #math value -= @s lap
execute if score #vLaps value matches 3.. if score #math value matches ..1 run tag @s add botOnFinalLap