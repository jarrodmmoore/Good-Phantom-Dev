execute if score #temp visualXoffset matches ..-4 run scoreboard players add #temp visualXoffset 4

execute unless score #temp visualXoffset matches ..-2 run function phan:game/4/checkpoint_visual/x/n1
execute if score #temp visualXoffset matches ..-2 positioned ~.2 ~ ~ run function phan:game/4/checkpoint_visual/x/n1