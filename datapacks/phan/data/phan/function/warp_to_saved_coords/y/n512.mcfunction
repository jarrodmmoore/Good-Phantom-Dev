scoreboard players add @s[scores={dummy_y=..-1024}] dummy_y 1024

execute unless score @s dummy_y matches ..-512 run function phan:warp_to_saved_coords/y/n256
execute if score @s dummy_y matches ..-512 positioned ~ ~-512 ~ run function phan:warp_to_saved_coords/y/n256