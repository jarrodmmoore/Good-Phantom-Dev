scoreboard players remove @s[scores={dummy_pitch=4..}] dummy_pitch 4

execute unless score @s dummy_pitch matches 2.. run function phan:warp_to_saved_coords/pitch/p1
execute if score @s dummy_pitch matches 2.. rotated ~ ~2 run function phan:warp_to_saved_coords/pitch/p1