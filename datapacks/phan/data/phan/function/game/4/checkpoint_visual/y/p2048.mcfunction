#execute if score #temp visualYoffset matches 4096.. run scoreboard players remove #temp visualYoffset 4096

execute unless score #temp visualYoffset matches 2048.. run function phan:game/4/checkpoint_visual/y/p1024
execute if score #temp visualYoffset matches 2048.. positioned ~ ~-204.8 ~ run function phan:game/4/checkpoint_visual/y/p1024