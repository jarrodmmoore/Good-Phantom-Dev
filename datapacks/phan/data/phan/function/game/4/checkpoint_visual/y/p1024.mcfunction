execute if score #temp visualYoffset matches 2048.. run scoreboard players remove #temp visualYoffset 2048

execute unless score #temp visualYoffset matches 1024.. run function phan:game/4/checkpoint_visual/y/p512
execute if score #temp visualYoffset matches 1024.. positioned ~ ~-102.4 ~ run function phan:game/4/checkpoint_visual/y/p512