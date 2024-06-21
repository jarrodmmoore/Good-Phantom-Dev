#movement delay, 2 extra ticks per every number over 3
scoreboard players operation #movementDelay value = @s movementPattern
scoreboard players remove #movementDelay value 3
scoreboard players operation #movementDelay value *= #2 value
execute on vehicle run scoreboard players operation @s movementDelay = #movementDelay value

#don't do this again
scoreboard players set @s movementPattern 3