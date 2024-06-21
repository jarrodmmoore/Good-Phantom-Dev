execute if score #temp visualXoffset matches ..-2 run scoreboard players add #temp visualXoffset 2

execute unless score #temp visualXoffset matches ..-1 run function phan:game/4/checkpoint_visual/y/_pos_or_neg
execute if score #temp visualXoffset matches ..-1 positioned ~.1 ~ ~ run function phan:game/4/checkpoint_visual/y/_pos_or_neg