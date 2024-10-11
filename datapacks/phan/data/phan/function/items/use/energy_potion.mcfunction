clear @s[type=player] amethyst_shard[custom_data~{energyPotion:1b}] 1

#this will become the energy we refill
#default refill is 9 energy
scoreboard players set #math value 9
#less magic refill the closer we are to the front of the pack in race mode
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s timeBehind1st matches ..10 run scoreboard players set #math value 5
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s timeBehind1st matches 11..40 run scoreboard players set #math value 6
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s timeBehind1st matches 41..70 run scoreboard players set #math value 7
execute if score #gameState value matches 4 if score #vGameType value matches 1 if score @s timeBehind1st matches 71..100 run scoreboard players set #math value 8
#always 9 if we're the only player in the game
execute if score #hudPeakPlayers value matches ..1 run scoreboard players set #math value 9

#refill 9 energy (9 is half of max)
scoreboard players operation @s energy += #math value
scoreboard players set @s[scores={energy=19..}] energy 18

#feedback
playsound minecraft:entity.generic.drink master @a ~ ~1 ~ 2 1
playsound minecraft:entity.generic.drink master @a ~ ~1 ~ 2 0.8
playsound minecraft:block.beacon.activate master @a ~ ~1 ~ 2 1.4
particle falling_dust{block_state:"lapis_block"} ~ ~1 ~ 0.15 0.3 0.15 1 20 force
execute anchored eyes positioned ^ ^ ^3 run particle falling_dust{block_state:"lapis_block"} ~ ~ ~ 0.15 0.15 0.15 1 5 force @s

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10