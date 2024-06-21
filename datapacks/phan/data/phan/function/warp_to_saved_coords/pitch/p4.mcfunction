scoreboard players remove @s[scores={dummy_pitch=8..}] dummy_pitch 8

execute unless score @s dummy_pitch matches 4.. run function phan:warp_to_saved_coords/pitch/p2
execute if score @s dummy_pitch matches 4.. rotated ~ ~4 run function phan:warp_to_saved_coords/pitch/p2