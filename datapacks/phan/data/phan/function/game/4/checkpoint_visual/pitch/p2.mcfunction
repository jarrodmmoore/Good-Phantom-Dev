execute if score #temp visualPitch matches 4.. run scoreboard players remove #temp visualPitch 4

execute unless score #temp visualPitch matches 2.. run function phan:game/4/checkpoint_visual/pitch/p1
execute if score #temp visualPitch matches 2.. rotated ~ ~2 run function phan:game/4/checkpoint_visual/pitch/p1