execute if score #temp visualZoffset matches 512.. run scoreboard players remove #temp visualZoffset 512

execute unless score #temp visualZoffset matches 256.. run function phan:game/4/checkpoint_visual/z/p128
execute if score #temp visualZoffset matches 256.. positioned ~ ~ ~-25.6 run function phan:game/4/checkpoint_visual/z/p128