execute if score #temp visualYoffset matches 32.. run scoreboard players remove #temp visualYoffset 32

execute unless score #temp visualYoffset matches 16.. run function phan:game/4/checkpoint_visual/y/p8
execute if score #temp visualYoffset matches 16.. positioned ~ ~-1.6 ~ run function phan:game/4/checkpoint_visual/y/p8