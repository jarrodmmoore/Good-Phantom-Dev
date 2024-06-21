execute if score #temp visualYoffset matches ..-256 run scoreboard players add #temp visualYoffset 256

execute unless score #temp visualYoffset matches ..-128 run function phan:game/4/checkpoint_visual/y/n64
execute if score #temp visualYoffset matches ..-128 positioned ~ ~12.8 ~ run function phan:game/4/checkpoint_visual/y/n64