scoreboard players remove @s[scores={dummy_z=4096..}] dummy_z 4096

execute unless score @s dummy_z matches 2048.. run function phan:warp_to_saved_coords/z/p1024
execute if score @s dummy_z matches 2048.. positioned ~ ~ ~2048 run function phan:warp_to_saved_coords/z/p1024