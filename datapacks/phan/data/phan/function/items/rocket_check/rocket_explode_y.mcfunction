execute if score @s trans_y matches ..-2 positioned ~ ~1 ~ run function phan:items/rocket_check/rocket_explode_y_correction
execute if score @s trans_y matches 2.. positioned ~ ~-1 ~ run function phan:items/rocket_check/rocket_explode_y_correction

execute if score @s trans_y matches -1..1 run function phan:items/rocket_check/rocket_explode_z