#go to where the pearl is +1 block up for safety
execute at @s positioned ~ ~1 ~ on origin run tp @s ~ ~ ~
execute on origin at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
execute on origin run tp @s @s

#we must die
scoreboard players set @s lifespan 1