tag @s remove rocket
scoreboard players set @s lifespan 1
execute on passengers run scoreboard players set @s lifespan 1
execute if score #hit value matches 1 run function phan:items/generic_explode_friendly