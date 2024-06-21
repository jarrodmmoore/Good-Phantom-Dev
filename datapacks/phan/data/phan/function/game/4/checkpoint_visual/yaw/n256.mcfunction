execute if score #temp visualYaw matches ..-512 run scoreboard players add #temp visualYaw 512

execute unless score #temp visualYaw matches ..-256 run function phan:game/4/checkpoint_visual/yaw/n128
execute if score #temp visualYaw matches ..-256 rotated ~-256 ~ run function phan:game/4/checkpoint_visual/yaw/n128