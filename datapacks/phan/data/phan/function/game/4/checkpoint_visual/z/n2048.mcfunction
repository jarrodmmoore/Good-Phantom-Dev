#execute if score #temp visualZoffset matches ..-4096 run scoreboard players add #temp visualZoffset 4096

execute unless score #temp visualZoffset matches ..-2048 run function phan:game/4/checkpoint_visual/z/n1024
execute if score #temp visualZoffset matches ..-2048 positioned ~ ~ ~204.8 run function phan:game/4/checkpoint_visual/z/n1024