execute if score #temp visualYaw matches ..-64 run scoreboard players add #temp visualYaw 64

execute unless score #temp visualYaw matches ..-32 run function phan:game/4/checkpoint_visual/yaw/n16
execute if score #temp visualYaw matches ..-32 rotated ~-32 ~ run function phan:game/4/checkpoint_visual/yaw/n16