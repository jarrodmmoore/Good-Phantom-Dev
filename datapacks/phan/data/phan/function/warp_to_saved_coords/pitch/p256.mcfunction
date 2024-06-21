scoreboard players remove @s[scores={dummy_pitch=512..}] dummy_pitch 512

execute unless score @s dummy_pitch matches 256.. run function phan:warp_to_saved_coords/pitch/p128
execute if score @s dummy_pitch matches 256.. rotated ~ ~256 run function phan:warp_to_saved_coords/pitch/p128