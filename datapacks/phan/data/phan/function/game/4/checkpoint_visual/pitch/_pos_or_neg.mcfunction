execute if score @s visualPitch matches 1.. run function phan:game/4/checkpoint_visual/pitch/p256
execute if score @s visualPitch matches 0 run function phan:game/4/checkpoint_visual/draw_index
execute if score @s visualPitch matches ..-1 run function phan:game/4/checkpoint_visual/pitch/n256