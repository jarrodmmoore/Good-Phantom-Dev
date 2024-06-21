execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20

execute at @e[type=item_display,tag=enderEye,limit=1,sort=nearest,distance=..500] run tp @s ~ ~ ~

execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20

scoreboard players set #success value 1