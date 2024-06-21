#aec stays alive as long as it's holding something
scoreboard players set #test value 0
execute on passengers run scoreboard players set #test value 1
execute if score #test value matches 1 run scoreboard players set @s lifespan 10