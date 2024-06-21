scoreboard players add @s[scores={dummy_z=..-256}] dummy_z 256

execute unless score @s dummy_z matches ..-128 run function phan:warp_to_saved_coords/z/n64
execute if score @s dummy_z matches ..-128 positioned ~ ~ ~-128 run function phan:warp_to_saved_coords/z/n64