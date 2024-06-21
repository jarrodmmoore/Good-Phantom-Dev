execute if score #temp visualXoffset matches ..-256 run scoreboard players add #temp visualXoffset 256

execute unless score #temp visualXoffset matches ..-128 run function phan:game/4/checkpoint_visual/x/n64
execute if score #temp visualXoffset matches ..-128 positioned ~12.8 ~ ~ run function phan:game/4/checkpoint_visual/x/n64