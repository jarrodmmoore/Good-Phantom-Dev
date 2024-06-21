#3 = no delay
#4.. +2 tick delay for each number above 3

scoreboard players operation #movementDelay value = @s editArg3
scoreboard players remove #movementDelay value 3
scoreboard players operation #movementDelay value *= #2 value