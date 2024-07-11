#lose tags and die
tag @s remove botPreviewEntity
scoreboard players set @s lifespan 0

#feedback
particle large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.2 10 force
playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1.8 0.6