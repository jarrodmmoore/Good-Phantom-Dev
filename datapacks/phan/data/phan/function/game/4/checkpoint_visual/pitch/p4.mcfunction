execute if score #temp visualPitch matches 8.. run scoreboard players remove #temp visualPitch 8

execute unless score #temp visualPitch matches 4.. run function phan:game/4/checkpoint_visual/pitch/p2
execute if score #temp visualPitch matches 4.. rotated ~ ~4 run function phan:game/4/checkpoint_visual/pitch/p2