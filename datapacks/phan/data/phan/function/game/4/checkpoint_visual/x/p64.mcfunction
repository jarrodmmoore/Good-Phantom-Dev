execute if score #temp visualXoffset matches 128.. run scoreboard players remove #temp visualXoffset 128

execute unless score #temp visualXoffset matches 64.. run function phan:game/4/checkpoint_visual/x/p32
execute if score #temp visualXoffset matches 64.. positioned ~-6.4 ~ ~ run function phan:game/4/checkpoint_visual/x/p32