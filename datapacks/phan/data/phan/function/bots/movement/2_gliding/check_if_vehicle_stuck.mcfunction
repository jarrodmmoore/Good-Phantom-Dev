execute store result score #testX value run data get entity @s Motion[0] 100
execute store result score #testZ value run data get entity @s Motion[2] 100

#exit flight if we have no motion for 5 ticks
execute if score #testX value matches 0 if score #testY value matches 0 if score #testZ value matches 0 run scoreboard players add @s botTimeSinceFlightProgress 1
execute if score @s botTimeSinceFlightProgress matches 5.. run scoreboard players set #success value 0