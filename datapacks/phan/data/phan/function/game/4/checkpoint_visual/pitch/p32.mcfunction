execute if score #temp visualPitch matches 64.. run scoreboard players remove #temp visualPitch 64

execute unless score #temp visualPitch matches 32.. run function phan:game/4/checkpoint_visual/pitch/p16
execute if score #temp visualPitch matches 32.. rotated ~ ~32 run function phan:game/4/checkpoint_visual/pitch/p16