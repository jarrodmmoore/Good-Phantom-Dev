execute if score #temp visualYoffset matches ..-128 run scoreboard players add #temp visualYoffset 128

execute unless score #temp visualYoffset matches ..-64 run function phan:game/4/checkpoint_visual/y/n32
execute if score #temp visualYoffset matches ..-64 positioned ~ ~6.4 ~ run function phan:game/4/checkpoint_visual/y/n32