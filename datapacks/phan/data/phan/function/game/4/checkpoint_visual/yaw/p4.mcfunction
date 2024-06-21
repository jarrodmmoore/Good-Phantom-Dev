execute if score #temp visualYaw matches 8.. run scoreboard players remove #temp visualYaw 8

execute unless score #temp visualYaw matches 4.. run function phan:game/4/checkpoint_visual/yaw/p2
execute if score #temp visualYaw matches 4.. rotated ~4 ~ run function phan:game/4/checkpoint_visual/yaw/p2