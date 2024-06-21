scoreboard players remove @s[scores={dummy_pitch=2..}] dummy_pitch 2

execute unless score @s dummy_pitch matches 1.. run function phan:warp_to_saved_coords/found_location_final
execute if score @s dummy_pitch matches 1.. rotated ~ ~1 run function phan:warp_to_saved_coords/found_location_final