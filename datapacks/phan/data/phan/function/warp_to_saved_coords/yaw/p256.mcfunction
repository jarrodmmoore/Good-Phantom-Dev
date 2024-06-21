scoreboard players remove @s[scores={dummy_yaw=512..}] dummy_yaw 512

execute unless score @s dummy_yaw matches 256.. run function phan:warp_to_saved_coords/yaw/p128
execute if score @s dummy_yaw matches 256.. rotated ~256 ~ run function phan:warp_to_saved_coords/yaw/p128