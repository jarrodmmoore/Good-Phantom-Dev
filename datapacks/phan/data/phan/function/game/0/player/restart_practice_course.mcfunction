#go to the place
tp @s 879 2 -972 315 0

#respawn info
scoreboard players set @s pCurrentArea 1
scoreboard players set @s currentLoad 1
scoreboard players set @s previousLoad -1

#play sound
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000 .8