execute if score #bad value matches 1 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2.2 0.9
execute if score #bad value matches 1 run particle large_smoke ~ ~.5 ~ 0.2 0.2 0.2 0.04 5 force

#goodbye
scoreboard players set @s lifespan 1
tag @s remove present
tag @s remove claimedPresent