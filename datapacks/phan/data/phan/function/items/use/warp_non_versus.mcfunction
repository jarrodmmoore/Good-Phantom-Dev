#we don't really have a target in mind, so we'll just mimic the behavior of the Ever Eye in Score Attack / Time Attack mode
scoreboard players set #success value 0
execute anchored eyes if block ^ ^ ^4 #phan:not_solid unless block ^ ^ ^4 barrier if block ^ ^1 ^4 #phan:not_solid unless block ^ ^1 ^4 barrier run scoreboard players set #success value 1

execute if score #success value matches 1 at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 1 20
execute if score #success value matches 1 anchored eyes run tp @s ^ ^ ^4