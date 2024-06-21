#HERE'S ONE:
execute if score #checkpointNum value matches 1..5 positioned ~ ~1 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go_1_5
execute if score #checkpointNum value matches 6..10 positioned ~ ~1 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go_6_10
execute if score #checkpointNum value matches 11..15 positioned ~ ~1 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go_11_15
execute if score #checkpointNum value matches 16..20 positioned ~ ~1 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go_16_20
execute if score #checkpointNum value matches 21..25 positioned ~ ~1 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go_21_25

#draw more with recursion
scoreboard players remove #drawEyes value 1
execute if score #drawEyes value matches 1.. positioned ~ ~0.6 ~ run function phan:game/4/checkpoint_visual/draw_eye_editor_go