scoreboard players add @s[scores={dummy_y=..-64}] dummy_y 64

execute unless score @s dummy_y matches ..-32 run function phan:warp_to_saved_coords/y/n16
execute if score @s dummy_y matches ..-32 positioned ~ ~-32 ~ run function phan:warp_to_saved_coords/y/n16