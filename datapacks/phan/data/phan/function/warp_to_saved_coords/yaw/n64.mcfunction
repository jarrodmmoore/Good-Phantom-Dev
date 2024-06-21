scoreboard players add @s[scores={dummy_yaw=..-128}] dummy_yaw 128

execute unless score @s dummy_yaw matches ..-64 run function phan:warp_to_saved_coords/yaw/n32
execute if score @s dummy_yaw matches ..-64 rotated ~-64 ~ run function phan:warp_to_saved_coords/yaw/n32