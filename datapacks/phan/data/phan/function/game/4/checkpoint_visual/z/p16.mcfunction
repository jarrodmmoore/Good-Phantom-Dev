execute if score #temp visualZoffset matches 32.. run scoreboard players remove #temp visualZoffset 32

execute unless score #temp visualZoffset matches 16.. run function phan:game/4/checkpoint_visual/z/p8
execute if score #temp visualZoffset matches 16.. positioned ~ ~ ~-1.6 run function phan:game/4/checkpoint_visual/z/p8