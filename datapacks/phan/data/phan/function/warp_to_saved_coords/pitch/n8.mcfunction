scoreboard players add @s[scores={dummy_pitch=..-16}] dummy_pitch 16

execute unless score @s dummy_pitch matches ..-8 run function phan:warp_to_saved_coords/pitch/n4
execute if score @s dummy_pitch matches ..-8 rotated ~ ~-8 run function phan:warp_to_saved_coords/pitch/n4