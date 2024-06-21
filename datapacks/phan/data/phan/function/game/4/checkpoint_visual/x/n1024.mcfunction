execute if score #temp visualXoffset matches ..-2048 run scoreboard players add #temp visualXoffset 2048

execute unless score #temp visualXoffset matches ..-1024 run function phan:game/4/checkpoint_visual/x/n512
execute if score #temp visualXoffset matches ..-1024 positioned ~102.4 ~ ~ run function phan:game/4/checkpoint_visual/x/n512