#tell our parent that we do, in fact, exist
scoreboard players set #test value 1

#follow player, stay alive as long as this code runs
execute at @a[limit=1,tag=presentOwner] run tp @s ~ ~3.5 ~
scoreboard players set @s lifespan 10