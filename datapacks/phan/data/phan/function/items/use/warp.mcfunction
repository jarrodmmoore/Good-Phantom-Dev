#do different stuff in different gamemodes
scoreboard players set #success value 0
execute unless score #gameState value matches 4 run function phan:items/use/warp_non_versus
execute if score #gameState value matches 4 if score #vGameType value matches 1 run function phan:items/use/warp_race
execute if score #gameState value matches 4 unless score #vGameType value matches 1 run function phan:items/use/warp_battle

#exit function right now if we failed to do anything
execute if score #success value matches 0 run return 0

#feedback
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.87
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20

#consume item if we successfully used it
clear @s lime_candle[custom_data~{warp:1b}] 1

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 14