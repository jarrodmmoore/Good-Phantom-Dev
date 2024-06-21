scoreboard players set #cantCollect value 0
execute if block ~ -64 ~ structure_void if block ~ ~ ~ barrier if entity @s[tag=!baddy] run scoreboard players set #cantCollect value 1
execute if score #cantCollect value matches 0 run function phan:game/1/projectile/get_hit_index