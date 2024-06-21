scoreboard players remove @s[scores={dummy_yaw=256..}] dummy_yaw 256

execute unless score @s dummy_yaw matches 128.. run function phan:warp_to_saved_coords/yaw/p64
execute if score @s dummy_yaw matches 128.. rotated ~128 ~ run function phan:warp_to_saved_coords/yaw/p64