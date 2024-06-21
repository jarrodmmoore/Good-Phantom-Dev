#die
scoreboard players set @s lifespan 1
scoreboard players reset @s age
tag @s remove playerSoul
tag @s remove currentSoul
execute on passengers run scoreboard players set @s lifespan 1

#nice visual and sound effect
particle instant_effect ~ ~ ~ 0.2 0.2 0.2 0.08 20 force @a
playsound minecraft:entity.ender_eye.death master @a[distance=..70] ~ ~ ~ 3 0.7 0.3