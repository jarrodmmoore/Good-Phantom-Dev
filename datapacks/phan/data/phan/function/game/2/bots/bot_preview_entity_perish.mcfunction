#lose tags and die
tag @s remove botPreviewEntity
scoreboard players set @s lifespan 0

#feedback
execute if score #beQuiet value matches ..5 run particle large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.2 10 force
execute if score #beQuiet value matches ..5 run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1.8 0.6
execute if score #beQuiet value matches 1.. run scoreboard players add #beQuiet value 1