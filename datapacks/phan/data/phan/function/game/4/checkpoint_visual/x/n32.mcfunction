execute if score #temp visualXoffset matches ..-64 run scoreboard players add #temp visualXoffset 64

execute unless score #temp visualXoffset matches ..-32 run function phan:game/4/checkpoint_visual/x/n16
execute if score #temp visualXoffset matches ..-32 positioned ~3.2 ~ ~ run function phan:game/4/checkpoint_visual/x/n16