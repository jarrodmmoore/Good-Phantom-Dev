clear @s[type=player] prismarine_shard[custom_data~{swiftnessPotion:1b}] 1

#this will become our swiftness timer
#default duration is 10 seconds
scoreboard players set #math value 200
#shorter duration the closer we are to the front of the pack in race mode
execute if score #gameState value matches 4 if score #vGameType value matches 1 run scoreboard players set #math value 90
execute if score #gameState value matches 4 if score #vGameType value matches 1 run scoreboard players operation #math value += @s timeBehind1st
#max out at duration of 10 seconds
execute if score #math value matches 201.. run scoreboard players set #math value 200

#now apply it
scoreboard players operation @s[type=player] swiftnessTime = #math value
scoreboard players operation @s[tag=ai] botEffectSpeedPotion = #math value

#feedback
playsound minecraft:entity.generic.drink master @a ~ ~1 ~ 2 1
playsound minecraft:entity.generic.drink master @a ~ ~1 ~ 2 0.8
playsound minecraft:block.beacon.activate master @a ~ ~1 ~ 2 1.4
particle falling_dust{block_state:"diamond_block"} ~ ~1 ~ 0.15 0.3 0.15 1 20 force
execute anchored eyes positioned ^ ^ ^3 run particle falling_dust{block_state:"diamond_block"} ~ ~ ~ 0.15 0.15 0.15 1 5 force @s

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10