scoreboard players add @s[scores={dummy_pitch=..-32}] dummy_pitch 32

execute unless score @s dummy_pitch matches ..-16 run function phan:warp_to_saved_coords/pitch/n8
execute if score @s dummy_pitch matches ..-16 rotated ~ ~-16 run function phan:warp_to_saved_coords/pitch/n8