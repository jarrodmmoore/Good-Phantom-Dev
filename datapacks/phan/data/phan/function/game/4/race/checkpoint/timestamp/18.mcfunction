#if we're a lap ahead of the checkpoint, we record our timestamp on it and set it to our lap
execute if score @s lap > #tCheckLap18 value run scoreboard players set #test value 1
execute if score #test value matches 1 run scoreboard players operation #tCheckStamp18 value = #gameTime value
execute if score #test value matches 1 run scoreboard players operation #tCheckLap18 value = @s lap
execute if score #test value matches 1 run scoreboard players set #timeDiff value 0
execute if score #test value matches 1 run return 0

#if we're on the same lap as the timestamped checkpoint, check how far behind our time is
scoreboard players operation #timeDiff value = #gameTime value
scoreboard players operation #timeDiff value -= #tCheckStamp18 value

#if we're a lap behind, get max item luck no matter what
execute if score @s lap < #tCheckLap18 value run scoreboard players set #timeDiff value 2147483647
