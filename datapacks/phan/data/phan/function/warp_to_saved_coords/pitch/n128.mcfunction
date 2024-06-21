scoreboard players add @s[scores={dummy_pitch=..-256}] dummy_pitch 256

execute unless score @s dummy_pitch matches ..-128 run function phan:warp_to_saved_coords/pitch/n64
execute if score @s dummy_pitch matches ..-128 rotated ~ ~-128 run function phan:warp_to_saved_coords/pitch/n64