execute if score @s trans_z matches ..-2 positioned ~ ~ ~1 run function phan:items/rocket_check/rocket_explode_z_correction
execute if score @s trans_z matches 2.. positioned ~ ~ ~-1 run function phan:items/rocket_check/rocket_explode_z_correction

execute if score @s trans_z matches -1..1 run function phan:items/rocket_hit