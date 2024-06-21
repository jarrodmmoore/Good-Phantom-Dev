#before tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20

#tp
tp @s 3999 289 99 180 0
#effects to make the tp look less bad due to chunk loading
effect give @s blindness 1 5 true
#cancel flight on player (not sure if this will actually work with how functions are ordered...)
clear @s elytra[custom_data~{playerEquipment:1b}]
scoreboard players add @s teleportersUsed 1

#after tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20