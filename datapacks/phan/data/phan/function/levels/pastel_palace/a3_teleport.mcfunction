#before tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20

#tp
tp @s 1136 110 -22 -90 0
scoreboard players add @s teleportersUsed 1

#after tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20

#reload stuff
scoreboard players set #area2SpawnC value 0