execute if score #temp visualYoffset matches 2.. run scoreboard players remove #temp visualYoffset 2

execute unless score #temp visualYoffset matches 1.. run function phan:game/4/checkpoint_visual/z/_pos_or_neg
execute if score #temp visualYoffset matches 1.. positioned ~ ~-.1 ~ run function phan:game/4/checkpoint_visual/z/_pos_or_neg