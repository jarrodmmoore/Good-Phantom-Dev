execute if score #temp visualYaw matches 32.. run scoreboard players remove #temp visualYaw 32

execute unless score #temp visualYaw matches 16.. run function phan:game/4/checkpoint_visual/yaw/p8
execute if score #temp visualYaw matches 16.. rotated ~16 ~ run function phan:game/4/checkpoint_visual/yaw/p8