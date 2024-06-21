scoreboard players add @s[scores={dummy_yaw=..-64}] dummy_yaw 64

execute unless score @s dummy_yaw matches ..-32 run function phan:warp_to_saved_coords/yaw/n16
execute if score @s dummy_yaw matches ..-32 rotated ~-32 ~ run function phan:warp_to_saved_coords/yaw/n16