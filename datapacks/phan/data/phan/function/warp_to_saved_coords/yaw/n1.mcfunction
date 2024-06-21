scoreboard players add @s[scores={dummy_yaw=..-2}] dummy_yaw 2

execute unless score @s dummy_yaw matches ..-1 run function phan:warp_to_saved_coords/pitch/_pos_or_neg
execute if score @s dummy_yaw matches ..-1 rotated ~-1 ~ run function phan:warp_to_saved_coords/pitch/_pos_or_neg