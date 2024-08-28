scoreboard players set #valid value 0
execute anchored eyes if block ^ ^ ^4 #phan:not_solid unless block ^ ^ ^4 barrier unless block ^ ^ ^4 #phan:ender_pearl_problematic if block ^ ^1 ^4 #phan:not_solid unless block ^ ^1 ^4 #phan:ender_pearl_problematic unless block ^ ^1 ^4 barrier run scoreboard players set #valid value 1

scoreboard players set @s inputCooldownC 4

execute if score #valid value matches 1 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1
execute if score #valid value matches 1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.87
execute if score #valid value matches 1 run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20
execute if score #valid value matches 1 anchored eyes run tp @s ^ ^ ^4
execute if score #valid value matches 1 run scoreboard players remove @s enderEyes 1
execute if score #valid value matches 1 run scoreboard players set @s inputCooldownC 20
#execute if score #valid value matches 1 run scoreboard players remove @s energy 2

scoreboard players set @s bufferInput4 0
scoreboard players reset @s carrotInput