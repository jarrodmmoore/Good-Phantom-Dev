execute if score #temp visualYaw matches ..-2 run scoreboard players add #temp visualYaw 2

execute unless score #temp visualYaw matches ..-1 run function phan:game/4/checkpoint_visual/pitch/_pos_or_neg
execute if score #temp visualYaw matches ..-1 rotated ~-1 ~ run function phan:game/4/checkpoint_visual/pitch/_pos_or_neg