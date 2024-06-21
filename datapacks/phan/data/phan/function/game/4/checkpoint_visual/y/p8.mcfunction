execute if score #temp visualYoffset matches 16.. run scoreboard players remove #temp visualYoffset 16

execute unless score #temp visualYoffset matches 8.. run function phan:game/4/checkpoint_visual/y/p4
execute if score #temp visualYoffset matches 8.. positioned ~ ~-.8 ~ run function phan:game/4/checkpoint_visual/y/p4