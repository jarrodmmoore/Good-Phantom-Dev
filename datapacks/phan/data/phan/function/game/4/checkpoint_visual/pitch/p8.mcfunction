execute if score #temp visualPitch matches 16.. run scoreboard players remove #temp visualPitch 16

execute unless score #temp visualPitch matches 8.. run function phan:game/4/checkpoint_visual/pitch/p4
execute if score #temp visualPitch matches 8.. rotated ~ ~8 run function phan:game/4/checkpoint_visual/pitch/p4