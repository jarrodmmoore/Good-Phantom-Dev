execute if score #temp visualYoffset matches 1024.. run scoreboard players remove #temp visualYoffset 1024

execute unless score #temp visualYoffset matches 512.. run function phan:game/4/checkpoint_visual/y/p256
execute if score #temp visualYoffset matches 512.. positioned ~ ~-51.2 ~ run function phan:game/4/checkpoint_visual/y/p256