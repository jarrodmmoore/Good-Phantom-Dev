#enderman "teleports away" (aka gets deleted in a fancy looking way)
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.8
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1.2 ~ 0.2 0.4 0.2 0 15 force
scoreboard players set @s lifespan 1
tag @s remove endermanProp
tp @s 198 -100 118