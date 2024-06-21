execute if score #temp visualZoffset matches ..-16 run scoreboard players add #temp visualZoffset 16

execute unless score #temp visualZoffset matches ..-8 run function phan:game/4/checkpoint_visual/z/n4
execute if score #temp visualZoffset matches ..-8 positioned ~ ~ ~.8 run function phan:game/4/checkpoint_visual/z/n4