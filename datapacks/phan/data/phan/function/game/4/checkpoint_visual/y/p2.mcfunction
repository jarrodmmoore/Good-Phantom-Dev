execute if score #temp visualYoffset matches 4.. run scoreboard players remove #temp visualYoffset 4

execute unless score #temp visualYoffset matches 2.. run function phan:game/4/checkpoint_visual/y/p1
execute if score #temp visualYoffset matches 2.. positioned ~ ~-.2 ~ run function phan:game/4/checkpoint_visual/y/p1