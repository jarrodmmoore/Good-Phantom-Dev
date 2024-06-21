execute if score #temp visualXoffset matches ..-16 run scoreboard players add #temp visualXoffset 16

execute unless score #temp visualXoffset matches ..-8 run function phan:game/4/checkpoint_visual/x/n4
execute if score #temp visualXoffset matches ..-8 positioned ~.8 ~ ~ run function phan:game/4/checkpoint_visual/x/n4