execute if score #temp visualYaw matches ..-16 run scoreboard players add #temp visualYaw 16

execute unless score #temp visualYaw matches ..-8 run function phan:game/4/checkpoint_visual/yaw/n4
execute if score #temp visualYaw matches ..-8 rotated ~-8 ~ run function phan:game/4/checkpoint_visual/yaw/n4