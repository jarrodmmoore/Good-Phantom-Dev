execute if entity @s[scores={goto_yaw=1..}] run function phan:warp_to_saved_coords/yaw/p512
execute if entity @s[scores={goto_yaw=0}] run function phan:warp_to_saved_coords/pitch/_pos_or_neg
execute if entity @s[scores={goto_yaw=..-1}] run function phan:warp_to_saved_coords/yaw/n512