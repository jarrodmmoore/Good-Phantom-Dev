particle happy_villager ~ ~1 ~ 0 0 0 1 1 force
scoreboard players remove #temp visualLength 1

#draw an eye at half length
scoreboard players remove #halfLength value 1
execute if score #halfLength value matches 0 if score #drawEyes value matches 1.. run function phan:game/4/checkpoint_visual/draw_eye_editor

execute if score #temp visualLength matches 1.. positioned ^ ^ ^1 run function phan:game/4/checkpoint_visual/draw_editor