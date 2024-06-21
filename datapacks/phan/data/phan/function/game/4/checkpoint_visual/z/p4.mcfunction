execute if score #temp visualZoffset matches 8.. run scoreboard players remove #temp visualZoffset 8

execute unless score #temp visualZoffset matches 4.. run function phan:game/4/checkpoint_visual/z/p2
execute if score #temp visualZoffset matches 4.. positioned ~ ~ ~-.4 run function phan:game/4/checkpoint_visual/z/p2