scoreboard players remove @s[scores={dummy_y=256..}] dummy_y 256

execute unless score @s dummy_y matches 128.. run function phan:warp_to_saved_coords/y/p64
execute if score @s dummy_y matches 128.. positioned ~ ~128 ~ run function phan:warp_to_saved_coords/y/p64