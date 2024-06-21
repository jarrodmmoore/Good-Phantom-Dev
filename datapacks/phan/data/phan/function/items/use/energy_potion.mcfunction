clear @s amethyst_shard[custom_data~{energyPotion:1b}] 1

#refill 9 energy (9 is half of max)
scoreboard players add @s energy 9
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