execute if score #temp visualXoffset matches 32.. run scoreboard players remove #temp visualXoffset 32

execute unless score #temp visualXoffset matches 16.. run function phan:game/4/checkpoint_visual/x/p8
execute if score #temp visualXoffset matches 16.. positioned ~-1.6 ~ ~ run function phan:game/4/checkpoint_visual/x/p8