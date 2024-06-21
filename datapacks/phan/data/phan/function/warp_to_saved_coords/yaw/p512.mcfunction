scoreboard players remove @s[scores={dummy_yaw=1024..}] dummy_yaw 1024

execute unless score @s dummy_yaw matches 512.. run function phan:warp_to_saved_coords/yaw/p256
execute if score @s dummy_yaw matches 512.. rotated ~512 ~ run function phan:warp_to_saved_coords/yaw/p256