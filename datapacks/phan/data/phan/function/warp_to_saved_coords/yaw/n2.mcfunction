scoreboard players add @s[scores={dummy_yaw=..-4}] dummy_yaw 4

execute unless score @s dummy_yaw matches ..-2 run function phan:warp_to_saved_coords/yaw/n1
execute if score @s dummy_yaw matches ..-2 rotated ~-2 ~ run function phan:warp_to_saved_coords/yaw/n1