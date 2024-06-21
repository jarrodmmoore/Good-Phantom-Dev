execute if score #temp visualPitch matches 512.. run scoreboard players remove #temp visualPitch 512

execute unless score #temp visualPitch matches 256.. run function phan:game/4/checkpoint_visual/pitch/p128
execute if score #temp visualPitch matches 256.. rotated ~ ~256 run function phan:game/4/checkpoint_visual/pitch/p128