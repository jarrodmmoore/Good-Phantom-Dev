scoreboard players add @s[scores={dummy_x=..-128}] dummy_x 128

execute unless score @s dummy_x matches ..-64 run function phan:warp_to_saved_coords/x/n32
execute if score @s dummy_x matches ..-64 positioned ~-64 ~ ~ run function phan:warp_to_saved_coords/x/n32