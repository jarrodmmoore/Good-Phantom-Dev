execute if score #temp visualZoffset matches ..-128 run scoreboard players add #temp visualZoffset 128

execute unless score #temp visualZoffset matches ..-64 run function phan:game/4/checkpoint_visual/z/n32
execute if score #temp visualZoffset matches ..-64 positioned ~ ~ ~6.4 run function phan:game/4/checkpoint_visual/z/n32