scoreboard players add @s[scores={dummy_yaw=..-32}] dummy_yaw 32

execute unless score @s dummy_yaw matches ..-16 run function phan:warp_to_saved_coords/yaw/n8
execute if score @s dummy_yaw matches ..-16 rotated ~-16 ~ run function phan:warp_to_saved_coords/yaw/n8