execute if entity @s[scores={goto_y=1..}] run function phan:warp_to_saved_coords/y/p8192
execute if entity @s[scores={goto_y=0}] run function phan:warp_to_saved_coords/z/_pos_or_neg
execute if entity @s[scores={goto_y=..-1}] run function phan:warp_to_saved_coords/y/n8192