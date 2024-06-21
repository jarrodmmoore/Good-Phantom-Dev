#0 = no delay
#+2 tick delay for each number above 0

scoreboard players operation #movementDelay value = @s editArg3
scoreboard players operation #movementDelay value *= #2 value