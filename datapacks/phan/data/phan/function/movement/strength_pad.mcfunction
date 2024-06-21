scoreboard players set @s strengthBoost 1
scoreboard players set @s strengthTime 140
effect give @s unluck 7 1 false

execute unless score @s strengthBoost2 matches 1 run function phan:join/player_get_equipment
execute unless score @s strengthBoost2 matches 1 run particle falling_dust{block_state:"red_concrete"} ~ ~1 ~ 0.4 0.4 0.4 1 20
execute unless score @s strengthBoost2 matches 1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.5 0.7
execute unless score @s strengthBoost2 matches 1 run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1.3 1.8

scoreboard players operation @s strengthBoost2 = @s strengthBoost