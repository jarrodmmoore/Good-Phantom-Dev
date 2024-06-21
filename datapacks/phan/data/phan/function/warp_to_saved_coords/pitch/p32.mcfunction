scoreboard players remove @s[scores={dummy_pitch=64..}] dummy_pitch 64

execute unless score @s dummy_pitch matches 32.. run function phan:warp_to_saved_coords/pitch/p16
execute if score @s dummy_pitch matches 32.. rotated ~ ~32 run function phan:warp_to_saved_coords/pitch/p16