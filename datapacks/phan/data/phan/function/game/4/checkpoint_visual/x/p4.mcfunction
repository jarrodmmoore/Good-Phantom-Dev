execute if score #temp visualXoffset matches 8.. run scoreboard players remove #temp visualXoffset 8

execute unless score #temp visualXoffset matches 4.. run function phan:game/4/checkpoint_visual/x/p2
execute if score #temp visualXoffset matches 4.. positioned ~-.4 ~ ~ run function phan:game/4/checkpoint_visual/x/p2