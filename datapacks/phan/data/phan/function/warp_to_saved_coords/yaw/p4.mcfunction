scoreboard players remove @s[scores={dummy_yaw=8..}] dummy_yaw 8

execute unless score @s dummy_yaw matches 4.. run function phan:warp_to_saved_coords/yaw/p2
execute if score @s dummy_yaw matches 4.. rotated ~4 ~ run function phan:warp_to_saved_coords/yaw/p2