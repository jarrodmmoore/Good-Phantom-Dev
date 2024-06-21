#

execute unless score @s dummy_z matches 8192.. run function phan:warp_to_saved_coords/z/p4096
execute if score @s dummy_z matches 8192.. positioned ~ ~ ~8192 run function phan:warp_to_saved_coords/z/p4096