scoreboard players remove @s[scores={dummy_y=8192..}] dummy_y 8192

execute unless score @s dummy_y matches 4096.. run function phan:warp_to_saved_coords/y/p2048
execute if score @s dummy_y matches 4096.. positioned ~ ~4096 ~ run function phan:warp_to_saved_coords/y/p2048