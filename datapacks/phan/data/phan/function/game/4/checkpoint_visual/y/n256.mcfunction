execute if score #temp visualYoffset matches ..-512 run scoreboard players add #temp visualYoffset 512

execute unless score #temp visualYoffset matches ..-256 run function phan:game/4/checkpoint_visual/y/n128
execute if score #temp visualYoffset matches ..-256 positioned ~ ~25.6 ~ run function phan:game/4/checkpoint_visual/y/n128