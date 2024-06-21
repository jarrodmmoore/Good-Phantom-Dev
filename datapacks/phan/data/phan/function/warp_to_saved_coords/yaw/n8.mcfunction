scoreboard players add @s[scores={dummy_yaw=..-16}] dummy_yaw 16

execute unless score @s dummy_yaw matches ..-8 run function phan:warp_to_saved_coords/yaw/n4
execute if score @s dummy_yaw matches ..-8 rotated ~-8 ~ run function phan:warp_to_saved_coords/yaw/n4