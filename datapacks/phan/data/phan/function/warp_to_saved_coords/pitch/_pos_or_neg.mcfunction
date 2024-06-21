execute if entity @s[scores={goto_pitch=1..}] run function phan:warp_to_saved_coords/pitch/p512
execute if entity @s[scores={goto_pitch=0}] run function phan:warp_to_saved_coords/found_location_final
execute if entity @s[scores={goto_pitch=..-1}] run function phan:warp_to_saved_coords/pitch/n512