execute if entity @s[scores={goto_z=1..}] run function phan:warp_to_saved_coords/z/p8192
execute if entity @s[scores={goto_z=0}] run function phan:warp_to_saved_coords/found_location
execute if entity @s[scores={goto_z=..-1}] run function phan:warp_to_saved_coords/z/n8192