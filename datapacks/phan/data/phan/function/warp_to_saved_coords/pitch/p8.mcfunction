scoreboard players remove @s[scores={dummy_pitch=16..}] dummy_pitch 16

execute unless score @s dummy_pitch matches 8.. run function phan:warp_to_saved_coords/pitch/p4
execute if score @s dummy_pitch matches 8.. rotated ~ ~8 run function phan:warp_to_saved_coords/pitch/p4