execute if score #temp visualXoffset matches 256.. run scoreboard players remove #temp visualXoffset 256

execute unless score #temp visualXoffset matches 128.. run function phan:game/4/checkpoint_visual/x/p64
execute if score #temp visualXoffset matches 128.. positioned ~-12.8 ~ ~ run function phan:game/4/checkpoint_visual/x/p64