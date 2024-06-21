execute if entity @s[scores={goto_x=1..}] run function phan:warp_to_saved_coords/x/p8192
execute if entity @s[scores={goto_x=0}] run function phan:warp_to_saved_coords/y/_pos_or_neg
execute if entity @s[scores={goto_x=..-1}] run function phan:warp_to_saved_coords/x/n8192