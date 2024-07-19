scoreboard players operation #test value = #testX value
scoreboard players operation #test value *= #-1 value
execute if score #test value >= @s botProgressXX run return 0

#if we ran this, that means we beat our personal best for shortest distance to target
scoreboard players operation @s botProgressXX = #test value
scoreboard players set @s botTimeSinceProgress 0