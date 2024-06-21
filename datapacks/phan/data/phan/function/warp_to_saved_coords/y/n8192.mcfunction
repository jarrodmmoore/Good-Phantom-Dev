#

execute unless score @s dummy_y matches ..-8192 run function phan:warp_to_saved_coords/y/n4096
execute if score @s dummy_y matches ..-8192 positioned ~ ~-8192 ~ run function phan:warp_to_saved_coords/y/n4096