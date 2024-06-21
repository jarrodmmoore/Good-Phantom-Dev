scoreboard players remove @s[scores={dummy_pitch=128..}] dummy_pitch 128

execute unless score @s dummy_pitch matches 64.. run function phan:warp_to_saved_coords/pitch/p32
execute if score @s dummy_pitch matches 64.. rotated ~ ~64 run function phan:warp_to_saved_coords/pitch/p32