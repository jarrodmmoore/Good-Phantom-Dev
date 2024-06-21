execute if score #temp visualXoffset matches 512.. run scoreboard players remove #temp visualXoffset 512

execute unless score #temp visualXoffset matches 256.. run function phan:game/4/checkpoint_visual/x/p128
execute if score #temp visualXoffset matches 256.. positioned ~-25.6 ~ ~ run function phan:game/4/checkpoint_visual/x/p128