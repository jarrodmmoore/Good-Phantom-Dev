#hit players
scoreboard players operation #attackerID value = @s attackerID
execute positioned ~ ~1 ~ as @a[gamemode=adventure,distance=..2] run function phan:items/anvil_entity_impact_player
execute if score #botsEnabled value matches 1.. positioned ~ ~1 ~ as @e[tag=ai,type=zombie,distance=..2] run function phan:items/anvil_entity_impact_player

#sound
particle block{block_state:"anvil"} ~ ~1.5 ~ 0.5 0.25 0.5 1 25
execute at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 3.5 .8

#we're done now
scoreboard players set @s lifespan 12
data merge entity @s {NoGravity:1b}
tag @s remove tickObject