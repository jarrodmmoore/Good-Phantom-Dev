execute if score #temp visualPitch matches ..-4 run scoreboard players add #temp visualPitch 4

execute unless score #temp visualPitch matches ..-2 run function phan:game/4/checkpoint_visual/pitch/n1
execute if score #temp visualPitch matches ..-2 rotated ~ ~-2 run function phan:game/4/checkpoint_visual/pitch/n1