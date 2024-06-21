execute if score @s trans_x matches ..-2 positioned ~1 ~ ~ run function phan:items/rocket_check/rocket_explode_x_correction
execute if score @s trans_x matches 2.. positioned ~-1 ~ ~ run function phan:items/rocket_check/rocket_explode_x_correction

execute if score @s trans_x matches -1..1 run function phan:items/rocket_check/rocket_explode_y