#execute if score #temp visualXoffset matches ..-4096 run scoreboard players add #temp visualXoffset 4096

execute unless score #temp visualXoffset matches ..-2048 run function phan:game/4/checkpoint_visual/x/n1024
execute if score #temp visualXoffset matches ..-2048 positioned ~204.8 ~ ~ run function phan:game/4/checkpoint_visual/x/n1024