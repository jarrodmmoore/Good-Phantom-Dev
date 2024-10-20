#temporary platform: get rid of barrier
execute if entity @s[tag=temporaryBarrier] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air

#tp really far down
#(unless we have passengers, in which case let's just not)
scoreboard players set #passengers value 0
execute on passengers run scoreboard players add #passengers value 1
execute if score #passengers value matches 0 run tp @s ~ ~-10000 ~

#die
scoreboard players reset @s lifespan
kill @s