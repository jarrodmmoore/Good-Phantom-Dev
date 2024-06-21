execute if score #temp visualYoffset matches 64.. run scoreboard players remove #temp visualYoffset 64

execute unless score #temp visualYoffset matches 32.. run function phan:game/4/checkpoint_visual/y/p16
execute if score #temp visualYoffset matches 32.. positioned ~ ~-3.2 ~ run function phan:game/4/checkpoint_visual/y/p16