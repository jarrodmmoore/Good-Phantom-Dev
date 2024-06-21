execute if score #temp visualYoffset matches ..-8 run scoreboard players add #temp visualYoffset 8

execute unless score #temp visualYoffset matches ..-4 run function phan:game/4/checkpoint_visual/y/n2
execute if score #temp visualYoffset matches ..-4 positioned ~ ~.4 ~ run function phan:game/4/checkpoint_visual/y/n2